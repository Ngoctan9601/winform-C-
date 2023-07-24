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
    public partial class frm_QLLopHoc : Form
    {
        public frm_QLLopHoc()
        {
            InitializeComponent();
        }

        SqlConnection conn = DBConnection.getDBConnection();
        SqlCommand cmd;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable table = new DataTable();

        private void frm_QLLopHoc_Load(object sender, EventArgs e)
        {
            conn.Open();
            load_data();
            load_column();
        }

        void load_data()
        {
            cmd = conn.CreateCommand();
            cmd.CommandText = "Select *from LopHoc";
            adapter.SelectCommand = cmd;
            table.Clear();
            adapter.Fill(table);
            dgv_dsLop.DataSource = table;

            cmd = new SqlCommand("select * from NienKhoa", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            dgv_dsNienKhoa.DataSource = dt1;

            cmd = new SqlCommand("select * from NganhHoc", conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataTable dt2 = new DataTable();
            da1.Fill(dt2);
            dgv_dsNganhHoc.DataSource = dt2;
        }

        private void DataGridView_colorText()
        {
            this.dgv_dsLop.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsLop.DefaultCellStyle.BackColor = Color.AliceBlue;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_dsLop.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsLop.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsLop.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dgv_dsLop.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void DataGridView1_colorText()
        {
            this.dgv_dsNienKhoa.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsNienKhoa.DefaultCellStyle.BackColor = Color.Beige;
        }
        private void DataGridView1_CentreHeaders()
        {
            dgv_dsNienKhoa.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsNienKhoa.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsNienKhoa.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView1_AutoSize()
        {
            var col = dgv_dsNienKhoa.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgv_dsLop_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsLop.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_colorText();
                DataGridView_CentreHeaders();
            }
        }

        private void DataGridView2_colorText()
        {
            this.dgv_dsNganhHoc.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsNganhHoc.DefaultCellStyle.BackColor = Color.LightPink;
        }
        private void DataGridView2_CentreHeaders()
        {
            dgv_dsNganhHoc.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView2_AutoSize()
        {
            var col = dgv_dsNganhHoc.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }
        public void load_column()
        {
            SqlCommand cmd = new SqlCommand("Select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='LopHoc'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cbotimkiem.DataSource = dt;
            cbotimkiem.DisplayMember = "column_name";
        }
        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txtmaLop.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập mã lớp học");
                txtmaLop.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txttenLop.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập tên lớp học");
                txttenLop.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtmakhoa.Text.Trim()))
            {
                MessageBox.Show("Hãy chọn mã khóa");
                txtmakhoa.Focus();
                return false;
            }
            return true;
        }

        private void btnthem_Click(object sender, EventArgs e)
        {
            string sqlCKECK = "select count(*) MaLop from LopHoc where MaLop = @MaLop";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@MaLop", txtmaLop.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("Mã lớp học này đã tồn tại!!");
                    }
                    else
                    {
                        int dongchon = -1, dongchon1 = -1;
                        dongchon = dgv_dsNganhHoc.CurrentRow.Index;
                        dongchon1 = dgv_dsNienKhoa.CurrentRow.Index;
                        if (dongchon > 0 && dongchon1 > 0)
                        {
                            string sqlINSERT = "INSERT INTO LopHoc(MaLop,TenLop,Khoa,MaNganh) values(@MaLop,@TenLop,@Khoa, @MaNganh)";
                            SqlCommand cmd = new SqlCommand(sqlINSERT, conn);
                            cmd.Parameters.AddWithValue("@MaLop", this.txtmaLop.Text);
                            cmd.Parameters.AddWithValue("@TenLop", this.txttenLop.Text);
                            cmd.Parameters.AddWithValue("@Khoa", dgv_dsNienKhoa.Rows[dongchon1].Cells[0].Value.ToString());
                            cmd.Parameters.AddWithValue("@MaNganh", dgv_dsNganhHoc.Rows[dongchon].Cells[0].Value.ToString());

                            if (cmd.ExecuteNonQuery() > 0)
                                MessageBox.Show("Thêm lớp học thành công");
                            else
                                MessageBox.Show("Thêm lớp học thất bại");
                            reset_Value();
                            load_data();
                        }
                        else
                        {
                            if (dongchon <= 0)
                            {
                                MessageBox.Show("Vui lòng chọn danh sách ngành học");
                            }
                            if (dongchon1 <= 0)
                            {
                                MessageBox.Show("Vui lòng chọn danh sách niên khóa!!!");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
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
                string strTimKiem = "SELECT * FROM LopHoc where " + cbotimkiem.Text + " like N'%" + txttukhoa.Text + "%'";
                cmd = new SqlCommand(strTimKiem, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dgv_dsLop.DataSource = dt;
            }
        }
        private void reset_Value()
        {
            txtmaLop.ResetText();
            txttenLop.ResetText();
            txttukhoa.ResetText();
            txtmakhoa.Text = default;
            txtmaLop.Focus();
        }
        private void btnclear_Click(object sender, EventArgs e)
        {
            reset_Value();
            load_data();
        }

        private void dgv_dsLop_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsLop.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtmaLop.Text = dgv_dsLop.Rows[dongchon].Cells["MaLop"].Value.ToString();
                this.txttenLop.Text = dgv_dsLop.Rows[dongchon].Cells["TenLop"].Value.ToString();
            }
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            int dongchon1 = dgv_dsNienKhoa.CurrentRow.Index;
            DialogResult ret = MessageBox.Show("Bạn có chắc chắn muốn xóa gói cước này không??", "Hỏi xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                try
                {
                    cmd = new SqlCommand("Delete from LopHoc where MaLop = @MaLop", conn);
                    cmd.Parameters.AddWithValue("@MaLop", this.txtmaLop.Text);
                    cmd.Parameters.AddWithValue("@TenLop", this.txttenLop.Text); 
                    cmd.Parameters.AddWithValue("@Khoa", dgv_dsNienKhoa.Rows[dongchon1].Cells[0].Value.ToString());
                    cmd.Parameters.AddWithValue("@MaNganh", dgv_dsNganhHoc.Rows[dongchon].Cells[0].Value.ToString());
                    if (cmd.ExecuteNonQuery() > 0)
                        MessageBox.Show("Xóa lớp học thành công");
                    else
                        MessageBox.Show("Xóa lớp học thất bại");
                    reset_Value();
                    load_data();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btnsua_Click(object sender, EventArgs e)
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            int dongchon1 = dgv_dsNienKhoa.CurrentRow.Index;
            cmd = new SqlCommand("Update LopHoc set MaLop=@MaLop, TenLop=@TenLop, Khoa=@Khoa, MaNganh=@MaNganh where MaLop =@MaLop", conn);
            cmd.Parameters.AddWithValue("@MaLop", this.txtmaLop.Text);
            cmd.Parameters.AddWithValue("@TenLop", this.txttenLop.Text);
            cmd.Parameters.AddWithValue("@Khoa", dgv_dsNienKhoa.Rows[dongchon1].Cells[0].Value.ToString());
            cmd.Parameters.AddWithValue("@MaNganh", dgv_dsNganhHoc.Rows[dongchon].Cells[0].Value.ToString());
            if (cmd.ExecuteNonQuery() > 0)
                MessageBox.Show("Sửa lớp học thành công");
            else
                MessageBox.Show("Sửa lớp học thất bại");
            reset_Value();
            load_data();
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình quản lý lớp học hay không?", "Exit", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (result == DialogResult.OK)
            {
                new frm_Menu().Show();
                this.Hide();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Program.choose_form = 1;
            Singleton.frm_QLNienKhoa.Show();
            this.Hide();
            load_data();
        }

        private void dgv_dsNganhHoc_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsNganhHoc.Visible)
            {
                DataGridView2_AutoSize();
                DataGridView2_CentreHeaders();
                DataGridView2_colorText();
            }
        }

        private void dgv_dsNganhHoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtnganhhoc.Text = dgv_dsNganhHoc.Rows[dongchon].Cells["MaNganh"].Value.ToString();
            }
        }

        private void dgv_dsNienKhoa_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsNienKhoa.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtmakhoa.Text = dgv_dsNienKhoa.Rows[dongchon].Cells["Khoa"].Value.ToString();
            }
        }

        private void dgv_dsNienKhoa_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsNienKhoa.Visible)
            {
                DataGridView1_AutoSize();
                DataGridView1_CentreHeaders();
                DataGridView1_colorText();
            }
        }
    }
}
