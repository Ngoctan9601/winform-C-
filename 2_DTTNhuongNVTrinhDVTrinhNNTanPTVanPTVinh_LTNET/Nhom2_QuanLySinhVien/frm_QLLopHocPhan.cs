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
    public partial class frm_QLLopHocPhan : Form
    {
        public frm_QLLopHocPhan()
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
            cmd.CommandText = "Select * from LopHocPhan";
            adapter.SelectCommand = cmd;
            table.Clear();
            adapter.Fill(table);
            dgv_LopHocPhan.DataSource = table;

            SqlCommand cmd2 = new SqlCommand("select MaGV, TenGV, MaNganh, Username, SoDT, Email, DiaChi from GiaoVien", conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da1.Fill(dt2);
            dgv_dsGiaoVien.DataSource = dt2;

            SqlCommand cmd3 = new SqlCommand("select a.MaLop, a.TenLop, a.MaNganh, d.TenKhoa from LopHoc as a, LopHocPhan as b, NienKhoa as d " +
                "where a.MaLop = b.MaLop and a.Khoa = d.Khoa", conn);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da2.Fill(dt3);
            dgv_dsLop.DataSource = dt3;

            SqlCommand cmd4 = new SqlCommand("select *from MonHoc", conn);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            da3.Fill(dt4);
            dgv_dsMonHoc.DataSource = dt4;

            SqlCommand cmd5 = new SqlCommand("select *from NganhHoc", conn);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd5);
            DataTable dt5 = new DataTable();
            da4.Fill(dt5);
            cboMaNganh.DataSource = dt5;
            dgv_dsNganhHoc.DataSource = dt5;
            cboMaNganh.ValueMember = "TenNganh";
            cboMaNganh.DisplayMember = "MaNganh";
        }
        private void frm_QLLopHocPhan_Load(object sender, EventArgs e)
        {
            txtmaLop.ResetText();
            conn.Open();
            load_data();
            load_column();
        }
        private void DataGridView_colorText()
        {
            this.dgv_LopHocPhan.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_LopHocPhan.DefaultCellStyle.BackColor = Color.Beige;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_LopHocPhan.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_LopHocPhan.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_LopHocPhan.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dgv_LopHocPhan.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 4) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }
        void reset_Value()
        {
            txtmaLop.ResetText();
            txttukhoa.ResetText();
            txtmaLop.Focus();
        }

        private void btnclear_Click(object sender, EventArgs e)
        {
            reset_Value();
            load_data();
        }

        public void load_column()
        {
            SqlCommand cmd = new SqlCommand("Select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='LopHocPhan' ", conn);
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
                string strTimKiem = "SELECT * FROM LopHocPhan where " + cbotimkiem.Text + " like N'%" + txttukhoa.Text + "%'";
                cmd = new SqlCommand(strTimKiem, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dgv_LopHocPhan.DataSource = dt;
            }
        }

        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txtmaLop.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập mã lớp học phần");
                txtmaLop.Focus();
                return false;
            }
            return true;
        }

        private void btnthem_Click(object sender, EventArgs e)
        {
            string sqlCKECK = "Select count(*) MaLopHP from LopHocPhan where MaLopHP = @MaLopHP ";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@MaLopHP", txtmaLop.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("Mã lớp học phần này đã tồn tại");
                    }
                    else
                    {
                        int dongchon = -1, dongchon1 = -1, dongchon2 = -1;
                        dongchon = dgv_dsMonHoc.CurrentRow.Index;
                        dongchon1 = dgv_dsGiaoVien.CurrentRow.Index;
                        dongchon2 = dgv_dsLop.CurrentRow.Index;
                        if (dongchon > 0 && dongchon1 > 0 && dongchon2 > 0)
                        {
                            string sqlINSERT = "INSERT INTO LopHocPhan (MaLopHP,MaGV, MaMH, MaLop) values(@MaLopHP,@MaGV, @MaMH, @MaLop)";
                            SqlCommand cmd = new SqlCommand(sqlINSERT, conn);
                            cmd.Parameters.AddWithValue("@MaLopHP", this.txtmaLop.Text);
                            cmd.Parameters.AddWithValue("@MaGV", dgv_dsGiaoVien.Rows[dongchon1].Cells[0].Value.ToString());
                            cmd.Parameters.AddWithValue("@MaMH", dgv_dsMonHoc.Rows[dongchon].Cells[0].Value.ToString());
                            cmd.Parameters.AddWithValue("@MaLop", dgv_dsLop.Rows[dongchon2].Cells[0].Value.ToString());

                            if (cmd.ExecuteNonQuery() > 0)
                                MessageBox.Show("Thêm lớp học phần thành công");
                            else
                                MessageBox.Show("Thêm lớp học phần thất bại");
                            reset_Value();
                            load_data();
                        }
                        else
                        {
                            if (dongchon <= 0)
                            {
                                MessageBox.Show("Bạn chưa chọn môn học");
                            }
                            if (dongchon1 <= 0)
                            {
                                MessageBox.Show("Bạn chưa chọn giáo viên phụ trách");
                            }
                            if (dongchon2 <= 0)
                            {
                                MessageBox.Show("Bạn chưa chọn lớp học đăng ký");
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

        private void btnsua_Click(object sender, EventArgs e)
        {
            int dongchon0 = dgv_LopHocPhan.CurrentRow.Index;
            int dongchon = dgv_dsMonHoc.CurrentRow.Index;
            int dongchon1 = dgv_dsGiaoVien.CurrentRow.Index;
            int dongchon2 = dgv_dsLop.CurrentRow.Index;
            cmd = new SqlCommand("Update LopHocPhan set MaLopHP=@MaLopHP,MaGV=@MaGV,MaMH=@MaMH, MaLop=@MaLop where MaLopHP =@MaLopHP", conn);
            cmd.Parameters.AddWithValue("@MaLopHP", this.txtmaLop.Text);
            cmd.Parameters.AddWithValue("@MaGV", dgv_dsGiaoVien.Rows[dongchon1].Cells[0].Value.ToString());
            cmd.Parameters.AddWithValue("@MaMH", dgv_dsMonHoc.Rows[dongchon].Cells[0].Value.ToString());
            cmd.Parameters.AddWithValue("@MaLop", dgv_dsLop.Rows[dongchon2].Cells[0].Value.ToString());
            if (cmd.ExecuteNonQuery() > 0)
                MessageBox.Show("Sửa lớp học phần thành công");
            else
                MessageBox.Show("Sửa lớp học phần thất bại");
            reset_Value();
            load_data();
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            int dongchon = dgv_dsMonHoc.CurrentRow.Index;
            int dongchon1 = dgv_dsGiaoVien.CurrentRow.Index;
            int dongchon2 = dgv_dsLop.CurrentRow.Index;
            DialogResult ret = MessageBox.Show("Bạn có chắc chắn muốn xóa gói cước này không??", "Hỏi xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                try
                {
                    cmd = new SqlCommand("Delete from LopHocPhan where MaLopHP = @MaLopHP", conn);
                    cmd.Parameters.AddWithValue("@MaLopHP", this.txtmaLop.Text);
                    cmd.Parameters.AddWithValue("@MaGV", dgv_dsGiaoVien.Rows[dongchon1].Cells[0].Value.ToString());
                    cmd.Parameters.AddWithValue("@MaMH", dgv_dsMonHoc.Rows[dongchon].Cells[0].Value.ToString());
                    cmd.Parameters.AddWithValue("@MaLop", dgv_dsLop.Rows[dongchon2].Cells[0].Value.ToString());
                    if (cmd.ExecuteNonQuery() > 0)
                        MessageBox.Show("Xóa lớp học phần thành công");
                    else
                        MessageBox.Show("Xóa lớp học phần thất bại");
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
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình quản lý lớp học phần hay không?", "Exit", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (result == DialogResult.OK)
            {
                Singleton.frm_Menu.Show();
                this.Hide();
            }
        }

        private void DataGridView1_colorText()
        {
            this.dgv_dsGiaoVien.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsGiaoVien.DefaultCellStyle.BackColor = Color.MintCream;
        }
        private void DataGridView1_CentreHeaders()
        {
            dgv_dsGiaoVien.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsGiaoVien.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsGiaoVien.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView1_AutoSize()
        {
            var col = dgv_dsGiaoVien.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 4) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 5) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 6) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 7) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgv_dsGiaoVien_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsGiaoVien.Visible)
            {
                DataGridView1_colorText();
                DataGridView1_CentreHeaders();
                DataGridView1_AutoSize();
            }
        }

        private void DataGridView2_colorText()
        {
            this.dgv_dsLop.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsLop.DefaultCellStyle.BackColor = Color.AliceBlue;
        }
        private void DataGridView2_CentreHeaders()
        {
            dgv_dsLop.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsLop.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsLop.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView2_AutoSize()
        {
            var col = dgv_dsLop.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 4) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 5) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void DataGridView3_colorText()
        {
            this.dgv_dsMonHoc.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsMonHoc.DefaultCellStyle.BackColor = Color.AntiqueWhite;
        }
        private void DataGridView3_CentreHeaders()
        {
            dgv_dsMonHoc.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsMonHoc.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsMonHoc.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView3_AutoSize()
        {
            var col = dgv_dsMonHoc.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 4) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 5) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgv_dsMonHoc_VisibleChanged_1(object sender, EventArgs e)
        {
            if (dgv_dsMonHoc.Visible)
            {
                DataGridView3_AutoSize();
                DataGridView3_colorText();
                DataGridView3_CentreHeaders();
            }
        }

        private void dgv_dsLop_VisibleChanged_2(object sender, EventArgs e)
        {
            if (dgv_dsLop.Visible)
            {
                DataGridView2_colorText();
                DataGridView2_CentreHeaders();
                DataGridView2_AutoSize();
            }
        }

        private void dgv_dsLop_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsLop.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtlophoc.Text = dgv_dsLop.Rows[dongchon].Cells["TenLop"].Value.ToString();
            }
        }

        private void dgv_dsMonHoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsMonHoc.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtmamon.Text = dgv_dsMonHoc.Rows[dongchon].Cells["TenMH"].Value.ToString();
            }
        }

        private void dgv_dsGiaoVien_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsGiaoVien.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtmagv.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["TenGV"].Value.ToString();
            }
        }

        void load_GiaoVien()
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            string sql = "Select MaGV, TenGV, MaNganh, Username, SoDT, Email, DiaChi from GiaoVien " +
                "where MaNganh = '" + dgv_dsNganhHoc.Rows[dongchon].Cells["MaNganh"].Value.ToString() + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgv_dsGiaoVien.DataSource = dt;
        }
        void load_LopHoc()
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            string sql = "Select LopHoc.MaLop, LopHoc.TenLop, LopHoc.MaNganh, NienKhoa.TenKhoa from LopHoc, NienKhoa " +
                "where LopHoc.Khoa = NienKhoa.Khoa and LopHoc.MaNganh = '" + dgv_dsNganhHoc.Rows[dongchon].Cells["MaNganh"].Value.ToString() + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgv_dsLop.DataSource = dt;
        }
        private void cboMaNganh_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void dgv_dsNganhHoc_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {
            load_GiaoVien();
            load_LopHoc();
        }

        private void DataGridView4_colorText()
        {
            this.dgv_dsNganhHoc.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsNganhHoc.DefaultCellStyle.BackColor = Color.LightPink;
        }
        private void DataGridView4_CentreHeaders()
        {
            dgv_dsNganhHoc.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView4_AutoSize()
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
                DataGridView4_AutoSize();
                DataGridView4_colorText();
                DataGridView4_CentreHeaders();
            }
        }

        private void dgv_LopHocPhan_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_LopHocPhan.CurrentRow.Index;
            if (dongchon >= 0)
            {
                this.txtmaLop.Text = dgv_LopHocPhan.Rows[dongchon].Cells["MaLopHP"].Value.ToString();
            }
        }

        private void dgv_LopHocPhan_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_LopHocPhan.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_colorText();
                DataGridView_CentreHeaders();
            }
        }

        private void ToExcel(DataGridView g, string fileName)
        {
            //khai báo thư viện hỗ trợ Microsoft.Office.Interop.Excel
            Microsoft.Office.Interop.Excel.Application excel;
            Microsoft.Office.Interop.Excel.Workbook workbook;
            Microsoft.Office.Interop.Excel.Worksheet worksheet;
            try
            {
                //Tạo đối tượng COM.
                excel = new Microsoft.Office.Interop.Excel.Application();
                excel.Visible = false;
                excel.DisplayAlerts = false;
                //tạo mới một Workbooks bằng phương thức add()
                workbook = excel.Workbooks.Add(Type.Missing);
                worksheet = (Microsoft.Office.Interop.Excel.Worksheet)workbook.Sheets["Sheet1"];
                //đặt tên cho sheet
                worksheet.Name = "Quản lý danh sách lớp học phần";

                // export header trong DataGridView
                for (int i = 0; i < g.ColumnCount; i++)
                {
                    worksheet.Cells[1, i + 1] = g.Columns[i].HeaderText;
                }
                // export nội dung trong DataGridView
                for (int i = 0; i < g.RowCount; i++)
                {
                    for (int j = 0; j < g.ColumnCount; j++)
                    {
                        Convert.ToString(worksheet.Cells[i + 2, j + 1] = g.Rows[i].Cells[j].Value);
                    }
                }
                // sử dụng phương thức SaveAs() để lưu workbook với filename
                workbook.SaveAs(fileName);
                //đóng workbook
                workbook.Close();
                excel.Quit();
                MessageBox.Show("Xuất dữ liệu ra Excel thành công!");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                workbook = null;
                worksheet = null;
            }
        }
        private void btnfileExcel_Click(object sender, EventArgs e)
        {
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                //gọi hàm ToExcel() với tham số là dtgDSlophp và filename từ SaveFileDialog
                ToExcel(dgv_LopHocPhan, saveFileDialog1.FileName);
            }
        }
    }
}