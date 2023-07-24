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
    public partial class frm_QLNganh : Form
    {
        public frm_QLNganh()
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
            cmd.CommandText = "Select *from NganhHoc";
            adapter.SelectCommand = cmd;
            table.Clear();
            adapter.Fill(table);
            dgv_dsNganhHoc.DataSource = table;
        }

        private void frm_QLNganh_Load(object sender, EventArgs e)
        {
            conn.Open();
            load_data();
            load_column();
        }

        private void DataGridView_colorText()
        {
            this.dgv_dsNganhHoc.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsNganhHoc.DefaultCellStyle.BackColor = Color.Beige;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_dsNganhHoc.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dgv_dsNganhHoc.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgv_dsNganhHoc_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsNganhHoc.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_colorText();
                DataGridView_CentreHeaders();
            }
        }

        private void dgv_dsNganhHoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtmanganh.Text = dgv_dsNganhHoc.Rows[dongchon].Cells["MaNganh"].Value.ToString();
                this.txttennghanh.Text = dgv_dsNganhHoc.Rows[dongchon].Cells["TenNganh"].Value.ToString();
            }
        }
        public void load_column()
        {
            SqlCommand cmd = new SqlCommand("Select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='NganhHoc'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cbotimkiem.DataSource = dt;
            cbotimkiem.DisplayMember = "column_name";
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
                string strTimKiem = "SELECT * FROM NganhHoc where " + cbotimkiem.Text + " like N'%" + txttukhoa.Text + "%'";
                cmd = new SqlCommand(strTimKiem, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dgv_dsNganhHoc.DataSource = dt;
            }
        }

        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txtmanganh.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập mã ngành học");
                txtmanganh.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txttennghanh.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập tên ngành học");
                txttennghanh.Focus();
                return false;
            }
            return true;
        }
        void reset_Value()
        {
            txtmanganh.ResetText();
            txttennghanh.ResetText();
            txtmanganh.Focus();
        }
        private void btnclear_Click(object sender, EventArgs e)
        {
            reset_Value();
            load_data();
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

        private void btnthem_Click(object sender, EventArgs e)
        {
            string sqlCKECK = "Select count(*) MaNganh from NganhHoc where MaNganh = @MaNganh";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@MaNganh", txtmanganh.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("Mã ngành này đã tồn tại!!");
                    }
                    else
                    {
                        string sqlINSERT = "INSERT INTO NganhHoc (MaNganh,TenNganh) values(@MaNganh,@TenNganh)";
                        SqlCommand cmd = new SqlCommand(sqlINSERT, conn);
                        cmd.Parameters.AddWithValue("@MaNganh", this.txtmanganh.Text);
                        cmd.Parameters.AddWithValue("@TenNganh", this.txttennghanh.Text);

                        if (cmd.ExecuteNonQuery() > 0)
                            MessageBox.Show("Thêm ngành học thành công");
                        else
                            MessageBox.Show("Thêm ngành học thất bại");
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
            cmd = new SqlCommand("Update NganhHoc set MaNganh=@MaNganh,TenNganh=@TenNganh where MaNganh =@MaNganh", conn);
            cmd.Parameters.AddWithValue("@MaNganh", this.txtmanganh.Text);
            cmd.Parameters.AddWithValue("@TenNganh", this.txttennghanh.Text);
            if (cmd.ExecuteNonQuery() > 0)
                MessageBox.Show("Sửa ngành học thành công");
            else
                MessageBox.Show("Sửa ngành học thất bại");
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
                    cmd = new SqlCommand("Delete from NganhHoc where MaNganh = @MaNganh", conn);
                    cmd.Parameters.AddWithValue("@MaNganh", this.txtmanganh.Text);
                    cmd.Parameters.AddWithValue("@TenNganh", this.txttennghanh.Text);
                    if (cmd.ExecuteNonQuery() > 0)
                        MessageBox.Show("Xóa ngành học thành công");
                    else
                        MessageBox.Show("Xóa ngành học thất bại");
                    reset_Value();
                    load_data();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }
    }
}
