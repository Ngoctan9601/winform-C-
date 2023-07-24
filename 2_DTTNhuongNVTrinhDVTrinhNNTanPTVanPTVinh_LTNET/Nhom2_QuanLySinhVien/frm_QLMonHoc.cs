using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace Nhom2_QuanLySinhVien
{
    public partial class frm_QLMonHoc : Form
    {
        public frm_QLMonHoc()
        {
            InitializeComponent();
        }

        SqlConnection conn = DBConnection.getDBConnection();
        SqlCommand cmd;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable table = new DataTable();

        void load_data()
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "Select *from MonHoc";
            adapter.SelectCommand = cmd;
            table.Clear();
            adapter.Fill(table);
            dgv_dsMonHoc.DataSource = table;
        }
        private void frm_QLMonHoc_Load(object sender, EventArgs e)
        {
            conn.Open();
            load_data();
            load_column();
        }
        public void load_column()
        {
            SqlCommand cmd = new SqlCommand("Select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='MonHoc'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cbotimkiem.DataSource = dt;
            cbotimkiem.DisplayMember = "column_name";
        }
        private void DataGridView_colorText()
        {
            this.dgv_dsMonHoc.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsMonHoc.DefaultCellStyle.BackColor = Color.AntiqueWhite;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_dsMonHoc.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsMonHoc.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsMonHoc.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dgv_dsMonHoc.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 4) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 5) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgv_dsLopHoc_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsMonHoc.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_colorText();
                DataGridView_CentreHeaders();
            }
        }

        private void dgv_dsLopHoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsMonHoc.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtmamon.Text = dgv_dsMonHoc.Rows[dongchon].Cells["MaMH"].Value.ToString();
                this.txttenmon.Text = dgv_dsMonHoc.Rows[dongchon].Cells["TenMH"].Value.ToString();
                this.cboHocKy.Text = dgv_dsMonHoc.Rows[dongchon].Cells["HocKy"].Value.ToString();
                this.txtsoTC.Text = dgv_dsMonHoc.Rows[dongchon].Cells["SoTC"].Value.ToString();
            }
        }

        private void btntimkiem_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txttukhoa.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập điều kiện tìm kiếm của bạn", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
                txttukhoa.Focus();
                return;
            }
            else if(cbotimkiem.Text=="SoTC")
            {
                string strTimKiem = "SELECT * FROM MonHoc where " + cbotimkiem.Text + " like '%" + int.Parse(txttukhoa.Text) + "%'";
                cmd = new SqlCommand(strTimKiem, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dgv_dsMonHoc.DataSource = dt;
            }
            else
            {
                string strTimKiem = "SELECT * FROM MonHoc where " + cbotimkiem.Text + " like N'%" + txttukhoa.Text + "%'";
                cmd = new SqlCommand(strTimKiem, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dgv_dsMonHoc.DataSource = dt;
            }
        }

        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txtmamon.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập mã môn học");
                txtmamon.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txttenmon.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập tên môn học");
                txttenmon.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtsoTC.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập số tín chỉ cho môn học");
                txtsoTC.Focus();
                return false;
            }
            return true;
        }
        void reset_Value()
        {
            txtmamon.ResetText();
            txttenmon.ResetText();
            txtsoTC.ResetText();
            txtmamon.Focus();
        }
        private void btnclear_Click(object sender, EventArgs e)
        {
            reset_Value();
            load_data();
        }

        private void btnthem_Click(object sender, EventArgs e)
        {
            string sqlCKECK = "Select count(*) MaMH from MonHoc where MaMH = @MaMH";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@MaMH", txtmamon.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("Mã môn này đã tồn tại!!");
                    }
                    else
                    {
                            string sqlINSERT = "INSERT INTO MonHoc (MaMH, TenMH, HocKy, SoTC) values(@MaMH,@TenMH, @HocKy, @SoTC)";
                            SqlCommand cmd = new SqlCommand(sqlINSERT, conn);
                            cmd.Parameters.AddWithValue("@MaMH", this.txtmamon.Text);
                            cmd.Parameters.AddWithValue("@TenMH", this.txttenmon.Text);
                            cmd.Parameters.AddWithValue("@HocKy", this.cboHocKy.Text);
                            cmd.Parameters.AddWithValue("@SoTC", this.txtsoTC.Text);

                            if (cmd.ExecuteNonQuery() > 0)
                                MessageBox.Show("Thêm môn học thành công");
                            else
                                MessageBox.Show("Thêm môn học thất bại");
                            reset_Value();
                            load_data();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btnsua_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Update MonHoc set MaMH=@MaMH,TenMH=@TenMH,HocKy=@HocKy,SoTC=@SoTC where MaMH =@MaMH", conn);
            cmd.Parameters.AddWithValue("@MaMH", this.txtmamon.Text);
            cmd.Parameters.AddWithValue("@TenMH", this.txttenmon.Text);
            cmd.Parameters.AddWithValue("@HocKy", this.cboHocKy.Text);
            cmd.Parameters.AddWithValue("@SoTC", this.txtsoTC.Text);
            if (cmd.ExecuteNonQuery() > 0)
                MessageBox.Show("Sửa môn học thành công");
            else
                MessageBox.Show("Sửa môn học thất bại");
            reset_Value();
            load_data();
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có chắc chắn muốn xóa gói cước này không??", "Hỏi xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                try
                {
                    cmd = new SqlCommand("Delete from MonHoc where MaMH = @MaMH", conn);
                    cmd.Parameters.AddWithValue("@MaMH", this.txtmamon.Text);
                    cmd.Parameters.AddWithValue("@TenMH", this.txttenmon.Text);
                    cmd.Parameters.AddWithValue("@HocKy", this.cboHocKy.Text);
                    cmd.Parameters.AddWithValue("@SoTC", this.txtsoTC.Text);
                    if (cmd.ExecuteNonQuery() > 0)
                        MessageBox.Show("Xóa môn học thành công");
                    else
                        MessageBox.Show("Xóa môn học thất bại");
                    reset_Value();
                    load_data();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình quản lý users hay không?", "Exit", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (result == DialogResult.OK)
            {
                Singleton.frm_Menu.Show();
                this.Hide();
            }
        }

        private void cboHocKy_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnchitiet_Click(object sender, EventArgs e)
        {
            Program.choose_form = 2;
            Singleton.frm_QLNganh.Show();
            this.Hide();
            load_data();
        } 
    }
}
