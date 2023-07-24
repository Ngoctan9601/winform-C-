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
    public partial class frm_QLNienKhoa : Form
    {
        public frm_QLNienKhoa()
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
            cmd.CommandText = "Select *from NienKhoa";
            adapter.SelectCommand = cmd;
            table.Clear();
            adapter.Fill(table);
            dgv_dsNienKhoa.DataSource = table;
        }

        public void load_column()
        {
            SqlCommand cmd = new SqlCommand("Select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='NienKhoa'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cbotimkiem.DataSource = dt;
            cbotimkiem.DisplayMember = "column_name";
        }

        private void frm_QLNienKhoa_Load(object sender, EventArgs e)
        {
            conn.Open();
            load_data();
            load_column();
        }
        private void DataGridView_colorText()
        {
            this.dgv_dsNienKhoa.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsNienKhoa.DefaultCellStyle.BackColor = Color.Beige;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_dsNienKhoa.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsNienKhoa.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsNienKhoa.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dgv_dsNienKhoa.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgv_dsNienKhoa_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsNienKhoa.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_colorText();
                DataGridView_CentreHeaders();
            }
        }


        private void dgv_dsNienKhoa_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsNienKhoa.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtkhoa.Text = dgv_dsNienKhoa.Rows[dongchon].Cells["Khoa"].Value.ToString();
                this.txttenkhoa.Text = dgv_dsNienKhoa.Rows[dongchon].Cells["TenKhoa"].Value.ToString();
                this.txtnam.Text = dgv_dsNienKhoa.Rows[dongchon].Cells["NamNK"].Value.ToString();
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
            else
            {
                string strTimKiem = "SELECT * FROM NienKhoa where " + cbotimkiem.Text + " like N'%" + txttukhoa.Text + "%'";
                cmd = new SqlCommand(strTimKiem, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dgv_dsNienKhoa.DataSource = dt;
            }
        }

        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txtkhoa.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập khóa học");
                txtkhoa.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txttenkhoa.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập tên khóa học");
                txttenkhoa.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtnam.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập niên khóa");
                txtnam.Focus();
                return false;
            }
            return true;
        }
        void reset_Value()
        {
            txtkhoa.ResetText();
            txttenkhoa.ResetText();
            txtnam.ResetText();
            txtkhoa.Focus();
        }

        private void btnclear_Click(object sender, EventArgs e)
        {
            reset_Value();
            load_data();
        }

        private void btnthem_Click(object sender, EventArgs e)
        {
            string sqlCKECK = "Select count(*) Khoa from NienKhoa where Khoa = @Khoa";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@Khoa", txtkhoa.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("Mã khóa này đã tồn tại!!");
                    }
                    else
                    {
                        string sqlINSERT = "INSERT INTO NienKhoa (Khoa,TenKhoa, NamNK) values(@Khoa, @TenKhoa, @NamNK)";
                        SqlCommand cmd = new SqlCommand(sqlINSERT, conn);
                        cmd.Parameters.AddWithValue("@Khoa", this.txtkhoa.Text);
                        cmd.Parameters.AddWithValue("@TenKhoa", this.txttenkhoa.Text);
                        cmd.Parameters.AddWithValue("@NamNK", this.txtnam.Text);

                        if (cmd.ExecuteNonQuery() > 0)
                            MessageBox.Show("Thêm khóa học thành công");
                        else
                            MessageBox.Show("Thêm khóa học thất bại");
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
            cmd = new SqlCommand("Update NienKhoa set Khoa=@Khoa,TenKhoa=@TenKhoa,NamNK=@NamNK where Khoa =@Khoa", conn);
            cmd.Parameters.AddWithValue("@Khoa", this.txtkhoa.Text);
            cmd.Parameters.AddWithValue("@TenKhoa", this.txttenkhoa.Text);
            cmd.Parameters.AddWithValue("@NamNK", this.txtnam.Text);
            if (cmd.ExecuteNonQuery() > 0)
                MessageBox.Show("Sửa khóa học thành công");
            else
                MessageBox.Show("Sửa khóa học thất bại");
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
                    cmd = new SqlCommand("Delete from NienKhoa where Khoa = @Khoa", conn);
                    cmd.Parameters.AddWithValue("@Khoa", this.txtkhoa.Text);
                    cmd.Parameters.AddWithValue("@TenKhoa", this.txttenkhoa.Text);
                    cmd.Parameters.AddWithValue("@NamNK", this.txtnam.Text);
                    if (cmd.ExecuteNonQuery() > 0)
                        MessageBox.Show("Xóa khóa học thành công");
                    else
                        MessageBox.Show("Xóa khóa học thất bại");
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

    }
}
