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
using System.Drawing.Text;

namespace Nhom2_QuanLySinhVien
{
    public partial class frm_DiemHocPhan : Form
    {
        public frm_DiemHocPhan()
        {
            InitializeComponent();
        }
        SqlConnection conn = DBConnection.getDBConnection();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        private String mgvdn = "";
        private int ID;
        public string Mgvdn { get => mgvdn; set => mgvdn = value; }
        public int ID1 { get => ID; set => ID = value; }
        public int saveID()
        {
            int id = ID;
            return id;
        }
        void fillDiemHocPhan()
        {
                SqlDataAdapter da = new SqlDataAdapter("select *from LopHocPhan", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cbolopHP.DataSource = dt;
                cbolopHP.DisplayMember = "MaLopHP";
                cbolopHP.ValueMember = "MaLopHP";

                SqlDataAdapter da1 = new SqlDataAdapter("select * from LopHoc", conn);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                cblop.DataSource = dt1;
                cblop.DisplayMember = "TenLop";
                cblop.ValueMember = "MaLop";

                SqlDataAdapter da2 = new SqlDataAdapter("select * from MonHoc", conn);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                cbmonhoc.DataSource = dt2;
                cbmonhoc.DisplayMember = "TenMH";
                cbmonhoc.ValueMember = "MaMH";            
        }

        void hienthilopHP()
        {
            string sql = "Select c.MaLopHP,a.MaSV,b.TenSV,a.DiemThiKT,a.DiemThiQT,a.DiemTK,g.HocKy,e.TenGV," +
                "f.TenNganh FROM DiemHocPhan as a, SinhVien as b, LopHocPhan as c, LopHoc as d, GiaoVien as e, NganhHoc as f, MonHoc as g " +
                "where a.MaSV = b.MaSV and d.MaLop = c.MaLop and f.MaNganh = d.MaNganh and e.MaGV = c.MaGV and g.MaMH = c.MaMH and c.MaLopHP = a.MaLopHP " +
                "and c.MaLopHP='" + cbolopHP.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgvdsDiem.DataSource = dt;
        }
        void hienthiLopHoc()
        {
            string sql1 = "Select c.MaLopHP,a.MaSV,b.TenSV,a.DiemThiKT,a.DiemThiQT,a.DiemTK,g.HocKy,e.TenGV,f.TenNganh from DiemHocPhan as a, " +
                "SinhVien as b, LopHocPhan as c, LopHoc as d, GiaoVien as e, NganhHoc as f, MonHoc as g where a.MaSV = b.MaSV and d.MaLop = c.MaLop " +
                "and f.MaNganh = d.MaNganh and e.MaGV = c.MaGV and g.MaMH = c.MaMH and c.MaLopHP = a.MaLopHP and d.MaLop='" + cblop.SelectedValue + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(sql1, conn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            dgvdsDiem.DataSource = dt1;
        }
        private void loadGVDN()
        {
            
        }
        private void frm_DiemHocPhan_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            fillDiemHocPhan();           
        }

        private void cbolopHP_SelectedIndexChanged(object sender, EventArgs e)
        {          
                SqlDataAdapter da1 = new SqlDataAdapter("select *from LopHoc, LopHocPhan where LopHoc.MaLop= LopHocPhan.MaLop and LopHocPhan.MaLopHP='" + cbolopHP.SelectedValue + "'", conn);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                cblop.DataSource = dt1;
                cblop.DisplayMember = "TenLop";
                cblop.ValueMember = "MaLop";
                hienthilopHP();
                txttongSV.Text = (dgvdsDiem.RowCount - 1).ToString();          
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                int i = dgvdsDiem.CurrentCell.RowIndex;
                for (i = 0; i < dgvdsDiem.Rows.Count - 1; i++)
                {
                    string mlhp = Convert.ToString(dgvdsDiem.Rows[i].Cells[0].Value.ToString());
                    string msv = Convert.ToString(dgvdsDiem.Rows[i].Cells[1].Value.ToString());
                    double dtqt = Convert.ToDouble(dgvdsDiem.Rows[i].Cells[5].Value.ToString());
                    double dtkt = Convert.ToDouble(dgvdsDiem.Rows[i].Cells[6].Value.ToString());
                    double dtk = dtkt * 0.6 + dtqt * 0.4;
                    dgvdsDiem.Rows[i].Cells[7].Value = dtk;
                    string sql = "UPDATE DiemHocPhan SET DiemThiQT=N'" + dtqt + "',DiemThiKT=N'" + dtkt + "',DiemTK=N'" + dtk + "'" +
                        "Where MaLopHP='" + mlhp + "' and MaSV = '" + msv + "'";
                    cmd = new SqlCommand(sql, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }              
                if (cmd.ExecuteNonQuery() > 0)
                {
                    //hienthilopHP();
                    MessageBox.Show("Lưu thành công");
                }
                else
                    MessageBox.Show("Lưu Thất Bại");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Lưu thất bại ");
            }
        }

        private void DataGridView_colorText()
        {
            this.dgvdsDiem.DefaultCellStyle.ForeColor = Color.Black;
            this.dgvdsDiem.DefaultCellStyle.BackColor = Color.Beige;
            this.dgvdsDiem.DefaultCellStyle.ForeColor = Color.Black;
            this.dgvdsDiem.DefaultCellStyle.BackColor = Color.Beige;
        }
        private void DataGridView_CentreHeaders()
        {
            dgvdsDiem.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgvdsDiem.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgvdsDiem.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
            dgvdsDiem.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgvdsDiem.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgvdsDiem.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dgvdsDiem.Columns;

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
                if (i == 8) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgvdsDiem_VisibleChanged(object sender, EventArgs e)
        {
            if (dgvdsDiem.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_CentreHeaders();
                DataGridView_colorText();
            }
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            string MSV = "SELECT  LopHocPhan.MaLopHP,DiemHocPhan.MaSV,SinhVien.TenSV,DiemHocPhan.DiemThiQT,DiemHocPhan.DiemThiKT,DiemHocPhan.DiemTK,MonHoc.HocKy,LopHoc.TenLop,NganhHoc.TenNganh,GiaoVien.TenGV FROM DiemHocPhan,LopHocPhan,MonHoc,SinhVien,LopHoc,NganhHoc,GiaoVien Where DiemHocPhan.MaLopHP=LopHocPhan.MaLopHP and DiemHocPhan.MaSV=SinhVien.MaSV and LopHocPhan.MaMH=MonHoc.MaMH and LopHoc.MaLop=LopHocPhan.MaLop and GiaoVien.MaGV=LopHocPhan.MaGV and LopHoc.MaNganh=NganhHoc.MaNganh and SinhVien.MaSV = '" + txtTK.Text + "' and LopHocPhan.MaLopHP='" + cbolopHP.Text + "'"; ;
            string name = "SELECT  LopHocPhan.MaLopHP,DiemHocPhan.MaSV,SinhVien.TenSV,DiemHocPhan.DiemThiQT,DiemHocPhan.DiemThiKT,DiemHocPhan.DiemTK,MonHoc.HocKy,LopHoc.TenLop,NganhHoc.TenNganh,GiaoVien.TenGV FROM DiemHocPhan,LopHocPhan,MonHoc,SinhVien,LopHoc,NganhHoc,GiaoVien Where DiemHocPhan.MaLopHP=LopHocPhan.MaLopHP and DiemHocPhan.MaSV=SinhVien.MaSV and LopHocPhan.MaMH=MonHoc.MaMH and LopHoc.MaLop=LopHocPhan.MaLop and GiaoVien.MaGV=LopHocPhan.MaGV and LopHoc.MaNganh=NganhHoc.MaNganh and SinhVien.TenSV like '%" + txtTK.Text + "%' and LopHocPhan.MaLopHP='" + cbolopHP.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(MSV, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(name, conn);
            DataTable dt = new DataTable();

            if (cboTimKiem.SelectedIndex == 0 && txtTK.Text != "")
            {
                da.Fill(dt);
                dgvdsDiem.DataSource = dt;
            }
            else if (cboTimKiem.SelectedIndex == 1 && txtTK.Text != "")
            {
                da1.Fill(dt);
                dgvdsDiem.DataSource = dt;

            }
            else
            {
                MessageBox.Show("Hãy nhập điều kiện tìm kiếm của bạn", "Thông báo");
            }
            if (dgvdsDiem.RowCount < 1)
            {
                MessageBox.Show("Không có thông tin!");
            }
        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            double dtk = (Convert.ToDouble(txtdiemkt.Text) * 0.4) + Convert.ToDouble(txtdiemqt.Text) * 0.6;
            int dongchon = dgvdsDiem.CurrentRow.Index;
            SqlCommand cmd = new SqlCommand("Update DiemHocPhan set DiemThiQT= @DiemThiQT,DiemThiKT=@DiemThiKT,DiemTK=@DiemTK where MaLopHP=@MaLopHP " +
                "and MaSV=@MaSV ", conn);
            cmd.Parameters.AddWithValue("@MaLopHP", cbolopHP.SelectedValue);
            cmd.Parameters.AddWithValue("@MaSV", dgvdsDiem.Rows[dongchon].Cells["MaSV"].Value.ToString());
            cmd.Parameters.AddWithValue("@DiemThiQT", txtdiemqt.Text);
            cmd.Parameters.AddWithValue("@DiemThiKT", txtdiemkt.Text);
            cmd.Parameters.AddWithValue("@DiemTK", dtk.ToString());
            if (cmd.ExecuteNonQuery() > 0) MessageBox.Show("Sửa Điểm thành công!!");
            else MessageBox.Show("Sửa điểm thất bại");
            fillDiemHocPhan();
            hienthilopHP();
        }

        private void cblop_SelectedIndexChanged(object sender, EventArgs e)
        {
            hienthiLopHoc();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình không?", "Exit", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (result == DialogResult.OK)
            {
                Singleton.frm_Menu.Show();
                this.Hide();
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
                worksheet.Name = "Quản lý giáo viên";

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

        private void btnExcel_Click(object sender, EventArgs e)
        {
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                //gọi hàm ToExcel() với tham số là dtgDSHS và filename từ SaveFileDialog
                ToExcel(dgvdsDiem, saveFileDialog1.FileName);
            }
        }

        private void cbmonhoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select MaLopHP from LopHocPhan where LopHocPhan.MaMH='" + cbmonhoc.SelectedValue + "'", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cbolopHP.DataSource = dt;
            cbolopHP.ValueMember = "MaLopHP";
        }

        private void dgvdsDiem_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgvdsDiem.CurrentRow.Index;
            if (dongchon >= 0)
            {
                // cblop.SelectedValue = dgvdsDiem.Rows[dongchon].Cells["TenLop"].Value.ToString();         
                txtnganh.Text = dgvdsDiem.Rows[dongchon].Cells["TenNganh"].Value.ToString();
                txtgv.Text = dgvdsDiem.Rows[dongchon].Cells["TenGV"].Value.ToString();
                txtmh.Text = dgvdsDiem.Rows[dongchon].Cells["TenMH"].Value.ToString();
                txttensv.Text = dgvdsDiem.Rows[dongchon].Cells["TenSV"].Value.ToString();
                txtdiemqt.Text = dgvdsDiem.Rows[dongchon].Cells["DiemThiQT"].Value.ToString();
                txtdiemkt.Text = dgvdsDiem.Rows[dongchon].Cells["DiemThiKT"].Value.ToString();
                txt_dtbm.Text = dgvdsDiem.Rows[dongchon].Cells["DiemTK"].Value.ToString();
            }
        }

        void reset()
        {
            txtnganh.Text = "";
            txttensv.Text = "";
            txtgv.Text = "";
            txtTK.Text = "";
            txtmh.Text = "";
            txtdiemkt.Text = "";
            txtdiemqt.Text = "";
            txt_dtbm.Text = "";
        }

        private void btn_reload_Click(object sender, EventArgs e)
        {
            reset();
            fillDiemHocPhan();
        }


        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
