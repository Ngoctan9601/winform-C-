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
    public partial class frm_QLSinhVien : Form
    {
        public frm_QLSinhVien()
        {
            InitializeComponent();
        }
        SqlConnection conn = DBConnection.getDBConnection();

        string strNhan;
        public string Message
        {
            get { return strNhan; }
            set { strNhan = value; }
        }

        private void StartLoad()
        {
            SqlDataAdapter da = new SqlDataAdapter("select MaLop, TenLop  from LopHoc " +
                "where Khoa='" + cbonienkhoa.Text + "' and MaNganh='" + cbonganh.Text + "'", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgv_dsLop.DataSource = dt;
            dgv_dsLop.Columns[0].HeaderText = "Mã Lớp";
            dgv_dsLop.Columns[1].HeaderText = "Tên Lớp";
        }

        private void fillSinhVien()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from LopHoc", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgv_dsLop.DataSource = dt;

            SqlDataAdapter da2 = new SqlDataAdapter("select *  from NganhHoc", conn);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            cbonganh.DataSource = dt2;
            cbonganh.DisplayMember = "MaNganh";

            SqlDataAdapter da1 = new SqlDataAdapter("select * from NienKhoa", conn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            cbonienkhoa.DataSource = dt1;
            cbonienkhoa.DisplayMember = "Khoa";
        }
        private void frm_QLSinhVien_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            fillSinhVien();
            txtusers.Text = strNhan;
            cbonganh.Text = "";
            cbonienkhoa.Text = "";
            Reset();
            dgv_dsLop.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgv_showSV.AutoSizeColumnsMode= DataGridViewAutoSizeColumnsMode.Fill;   
        }

        private void DataGridView_colorText()
        {
            this.dgv_dsLop.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsLop.DefaultCellStyle.BackColor = Color.AliceBlue;

            dgv_showSV.DefaultCellStyle.ForeColor = Color.Black;
            dgv_showSV.DefaultCellStyle.BackColor = Color.AntiqueWhite;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_dsLop.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsLop.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsLop.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);

            dgv_showSV.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_showSV.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_showSV.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        //private void DataGridView_AutoSize()
        //{
        //    var col = dgv_dsLop.Columns;

        //    for (int i = 0; i < col.Count; i++)
        //    {
        //        if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (i == 4) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //    }

        //    var col1 = dgv_showSV.Columns;

        //    for (int j = 0; j < col1.Count; j++)
        //    {
        //        if (j == 0) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (j == 1) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (j == 2) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (j == 3) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (j == 4) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (j == 5) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (j == 6) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //        if (j == 7) { col1[j].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
        //    }
        //}
        private void Reset()
        {
            txt_Diachi.Clear();
            txt_maSV.Clear();
            txt_Hoten.Clear();
            txt_sdt.Clear();
            txt_email.Clear();
            txt_Search.Clear();
            rbtnam.Checked = false;
            rbtnu.Checked = false;
            txtusers.Text = "";
            rb_MaSV.Checked = false;
            txt_maSV.Enabled = false;
            dtp_ngaysinh.Value = DateTime.Now;
            txt_Hoten.Focus();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            ChooseUsers.setLeggee(2);
            Singleton.frm_QLUsers.Show();
            this.Hide();
            fillSinhVien();
        }

        private void dgv_dsLop_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsLop.Visible)
            {
                DataGridView_colorText();
                DataGridView_CentreHeaders();
                
            }
        }

        private void btn_Thoat_Click(object sender, EventArgs e)
        {
            Singleton.frm_Menu.Show();
            this.Hide();
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
                worksheet.Name = "Quản lý sinh viên";

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
        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txt_Hoten.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập tên sinh viên");
                txt_Hoten.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txt_email.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập email sinh viên");
                txt_email.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txt_Diachi.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập địa chỉ sinh viên");
                txt_Diachi.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtusers.Text.Trim()))
            {
                MessageBox.Show("Hãy chọn user");
                txtusers.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txt_sdt.Text.Trim()))
            {
                MessageBox.Show("Hãy chọn user");
                if (txt_sdt.Text.Length >= 10)
                {
                    MessageBox.Show("Số điện thoại >10, Vui lòng nhập đủ 10 ký tự");
                    txtusers.Focus();
                }
                return false;
            }
            return true;
        }

        private void btnexcel_Click(object sender, EventArgs e)
        {
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                //gọi hàm ToExcel() với tham số là dtgDSHS và filename từ SaveFileDialog
                ToExcel(dgv_showSV, saveFileDialog1.FileName);
            }
        }

        private void dgv_showSV_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dgv_showSV.CurrentRow.Index;
            txt_maSV.Text = dgv_showSV.Rows[index].Cells["MaSV"].Value.ToString();
            txt_Hoten.Text = dgv_showSV.Rows[index].Cells["TenSV"].Value.ToString();
            dtp_ngaysinh.Value = Convert.ToDateTime(dgv_showSV.Rows[index].Cells["NgaySinh"].Value);
            if (Convert.ToBoolean(dgv_showSV.Rows[index].Cells["GioiTinh"].Value.ToString()) == true)
            {
                rbtnam.Checked = true;
            }
            else
            {
                rbtnu.Checked = true;
            }
            txt_email.Text = dgv_showSV.Rows[index].Cells["Email"].Value.ToString();
            txt_Diachi.Text = dgv_showSV.Rows[index].Cells["DiaChi"].Value.ToString();
            txt_sdt.Text = dgv_showSV.Rows[index].Cells["SoDT"].Value.ToString();
            txtusers.Text = dgv_showSV.Rows[index].Cells["Username"].Value.ToString();
        }
        private void showsinhvien()
        {
            int index = dgv_dsLop.CurrentRow.Index;
            SqlDataAdapter da = new SqlDataAdapter("select * from SinhVien where MaLop = '" + dgv_dsLop.Rows[index].Cells[0].Value.ToString() + "'", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgv_showSV.DataSource = dt;
            AmountStuden();
        }
        private void dgv_dsLop_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            showsinhvien();
        }

        private void AmountStuden()
        {
            txt_TongSV.Text = (dgv_showSV.RowCount - 1).ToString();
        }

        private void cbonganh_SelectedIndexChanged(object sender, EventArgs e)
        {
            StartLoad();
        }

        private void cbonienkhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            StartLoad();
        }

        private void dgv_showSV_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_showSV.Visible)
            {
                DataGridView_colorText();
                DataGridView_CentreHeaders();
                
            }
        }

        private void addSinhVien()
        {
            string sqlCKECK = "select count(*) Username from SinhVien where Username = @Username";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@Username", txtusers.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("User này đã tồn tại!!, Vui lòng thêm user khác");
                    }
                    else
                    {
                        int index = dgv_dsLop.CurrentRow.Index;
                        SqlCommand cmd = new SqlCommand("insert into SinhVien(TenSV,NgaySinh,GioiTinh,Email,SoDT,DiaChi,MaLop,Username) " +
                            "values(@TenSV,@NgaySinh,@GioiTinh,@Email,@SoDT,@DiaChi,@MaLop,@Username)", conn);
                        cmd.Parameters.AddWithValue("@TenSV", txt_Hoten.Text);
                        cmd.Parameters.AddWithValue("@NgaySinh", dtp_ngaysinh.Value);
                        cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                        cmd.Parameters.AddWithValue("@SoDT", txt_sdt.Text);
                        cmd.Parameters.AddWithValue("@DiaChi", txt_Diachi.Text);
                        cmd.Parameters.AddWithValue("@MaLop", dgv_dsLop.Rows[index].Cells["MaLop"].Value.ToString());
                        cmd.Parameters.AddWithValue("@Username", txtusers.Text);
                        if (rbtnam.Checked == true)
                        {
                            cmd.Parameters.AddWithValue("@GioiTinh", true);
                        }
                        if (rbtnu.Checked == true)
                        {
                            cmd.Parameters.AddWithValue("@GioiTinh", false);
                        }
                        if (cmd.ExecuteNonQuery() > 0) MessageBox.Show("Thêm sinh viên thành công!!");
                        else MessageBox.Show("Thêm sinh viên thất bại");
                        Reset();
                        showsinhvien();

                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void UpdateStudent()
        {
            try
            {
                int dongchon = this.dgv_showSV.CurrentRow.Index;
                SqlCommand cmd = new SqlCommand("update SinhVien set TenSV=@TenSV,NgaySinh=@NgaySinh,GioiTinh=@GioiTinh,Email=@Email,SoDT=@SoDT," +
                    "DiaChi=@DiaChi,Username=@Username where MaSV=@MaSV", conn);
                cmd.Parameters.AddWithValue("@MaSV", txt_maSV.Text);
                cmd.Parameters.AddWithValue("@TenSV", txt_Hoten.Text);
                cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                cmd.Parameters.AddWithValue("@DiaChi", txt_Diachi.Text);
                cmd.Parameters.AddWithValue("@SoDT", txt_sdt.Text);
                cmd.Parameters.AddWithValue("@Username", txtusers.Text);
                cmd.Parameters.AddWithValue("@NgaySinh", dtp_ngaysinh.Value);
                if (rbtnam.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@GioiTinh", true);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@GioiTinh", false);
                }

                if (cmd.ExecuteNonQuery() > 0)
                {
                    fillSinhVien();
                    MessageBox.Show("Sửa sinh viên thành công");
                }
            }
            catch
            {
                MessageBox.Show("Không thể sửa sinh viên này");
            }
        }
        private void DeleteStudent()
        {
            try
            {
                DialogResult dg = MessageBox.Show("Bạn có muốn xóa không", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dg == DialogResult.Yes)
                {
                    SqlCommand cmd = new SqlCommand("delete from SinhVien where MaSV ='" + txt_maSV.Text + "'", conn);
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Xóa sinh viên thành công!!");
                    fillSinhVien();
                }
            }
            catch
            {
                MessageBox.Show("Sinh viên đang còn trong lớp học", "Thông báo!!");
            }
        }

        private void SearchStudent()
        {
            int index = dgv_dsLop.CurrentRow.Index;
            String searchName = "select a.MaSV, a.TenSV,a.GioiTinh, a.DiaChi, a.NgaySinh, a.Email, a.SoDT, a.Username, d.TenNganh, c.TenKhoa, " +
                "c.NamNK from SinhVien a, LopHoc b, NienKhoa c, NganhHoc d where a.MaLop = b.MaLop and b.MaNganh=d.MaNganh and c.Khoa = b.Khoa " +
                "and a.MaLop = '" + dgv_dsLop.Rows[index].Cells[0].Value.ToString() + "' and a.TenSV like '%" + txt_Search.Text + "%'";
            SqlDataAdapter da1 = new SqlDataAdapter(searchName, conn);
            String searchID = "select a.MaSV, a.TenSV,a.GioiTinh, a.DiaChi, a.NgaySinh, a.Email, a.SoDT, a.Username, d.TenNganh, c.TenKhoa, " +
                "c.NamNK from SinhVien a, LopHoc b, NienKhoa c, NganhHoc d where a.MaLop = b.MaLop and b.MaNganh=d.MaNganh and c.Khoa = b.Khoa " +
                "and a.MaLop = '" + dgv_dsLop.Rows[index].Cells[0].Value.ToString() + "' and a.MaSV ='" + txt_Search.Text + "'";
            SqlDataAdapter da2 = new SqlDataAdapter(searchID, conn);
            DataTable dt = new DataTable();
            if (rb_Hoten.Checked == true && txt_Search.Text != "")
            {
                da1.Fill(dt);
                dgv_showSV.DataSource = dt;
            }
            else if (rb_MaSV.Checked == true && txt_Search.Text != "")
            {
                da2.Fill(dt);
                dgv_showSV.DataSource = dt;
            }
            else
            {
                MessageBox.Show("Vui lòng chọn kiểu tìm kiếm và nhập thông tin");
            }
            if (dgv_showSV.RowCount <= 1)
            {
                Reset();
                MessageBox.Show("Không có sinh viên này!!");
                txt_Search.Focus();
                showsinhvien();
            }
        }

        private void SaveChanged()
        {
            SqlCommand cmd = new SqlCommand();
            try
            {
                int i = dgv_showSV.CurrentCell.RowIndex;
                for (i = 0; i < dgv_showSV.Rows.Count - 1; i++)
                {
                    int msv = int.Parse(dgv_showSV.Rows[i].Cells[0].Value.ToString());
                    string hoten = dgv_showSV.Rows[i].Cells[1].Value.ToString();
                    string ngaysinh = dgv_showSV.Rows[i].Cells[2].Value.ToString();
                    bool gt;
                    if (Convert.ToBoolean(dgv_showSV.Rows[i].Cells[3].Value) == true)
                        gt = true;
                    else gt = false;
                    string diachi = dgv_showSV.Rows[i].Cells[4].Value.ToString();
                    string sdt = dgv_showSV.Rows[i].Cells[5].Value.ToString();
                    string email = dgv_showSV.Rows[i].Cells[6].Value.ToString();
                    string malop = Convert.ToString(dgv_showSV.Rows[i].Cells[7].Value.ToString());
                    string sql = "UPDATE SinhVien SET TenSV=N'" + hoten + "',NgaySinh=N'" + ngaysinh + "',GioiTinh=N'" + gt + "'," +
                    "DiaChi=N'" + diachi + "',SoDT=N'" + sdt + "',Email=N'" + email + "',MaLop =N'" + malop + "' Where MaSV='" + msv + "'";
                    cmd = new SqlCommand(sql, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
                if (cmd.ExecuteNonQuery() > 0)
                {
                    fillSinhVien();
                    MessageBox.Show("Lưu thành công");
                }
                else
                {
                    MessageBox.Show("Lưu Thất Bại");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        private void btn_Them_Click(object sender, EventArgs e)
        {
            addSinhVien();
        }

        private void btn_sua_Click(object sender, EventArgs e)
        {
            UpdateStudent();
        }

        private void btn_Xoa_Click(object sender, EventArgs e)
        {
            DeleteStudent();
        }

        private void btn_Search_Click(object sender, EventArgs e)
        {
            SearchStudent();
        }

        private void btnsave_Click(object sender, EventArgs e)
        {
            SaveChanged();
        }

        private void txt_sdt_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
            else
            {
                e.Handled = false;
            }   
        }
    }
}
