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
    public partial class frm_QLGiaoVien : Form
    {
        public frm_QLGiaoVien()
        {
            InitializeComponent();
        }

        SqlConnection conn = DBConnection.getDBConnection();
        SqlCommand cmd = new SqlCommand();
        string strNhan;
        public string Message
        {
            get { return strNhan; }
            set { strNhan = value; }
        }

        private void fillGiaoVien()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from GiaoVien", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgv_dsGiaoVien.DataSource = dt;

            SqlDataAdapter da1 = new SqlDataAdapter("select * from NganhHoc", conn);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            dgv_dsNganhHoc.DataSource = dt1;
            txtmaGV.Enabled = false;
        }


        private void frm_QLGiaoVien_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            fillGiaoVien();
            
        }

        public void reset_Value()
        {
            txtmaGV.Text = "";
            txttenGV.Text = "";
            dtpngaysinh.Value = DateTime.Now;
            txtemail.Text = "";
            txtdiachi.Text = "";
            txtsodt.Text = "";
            txtusser.Text = "";
        }

        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txttenGV.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập tên giáo viên");
                txttenGV.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtemail.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập email giáo viên");
                txtemail.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtdiachi.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập địa chỉ giáo viên");
                txtdiachi.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtsodt.Text.Trim()))
            {
                if (txtsodt.Text.Length != 10)
                {
                    MessageBox.Show("Số điện thoại là 1 chuỗi số gồm 10 số, Vui lòng nhập lại");
                    txtsodt.Focus();
                    return false;
                }
            }
            return true;
        }

        private void btnthem_Click(object sender, EventArgs e)
        {
            string sqlCKECK = "select count(*) Username from GiaoVien where Username = @Username";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@Username", txtusser.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("User này đã tồn tại!!, Vui lòng thêm user khác");
                    }
                    else
                    {
                        int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
                        if (dongchon >=1 )
                        {
                            string sqlInsert = "Insert into GiaoVien(TenGV, MaNganh, NgaySinh,GioiTinh,Email,SoDT, DiaChi,Username) values( @TenGV,@MaNganh,@NgaySinh,@GioiTinh,@Email,@SoDT,@DiaChi,@Username)";
                            SqlCommand cmd = new SqlCommand(sqlInsert, conn);
                            //cmd.Parameters.AddWithValue("@MaGV", txtmaGV.Text);
                            cmd.Parameters.AddWithValue("@TenGV", txttenGV.Text);
                            cmd.Parameters.AddWithValue("@MaNganh", dgv_dsNganhHoc.Rows[dongchon].Cells[0].Value.ToString());
                            cmd.Parameters.AddWithValue("@NgaySinh", dtpngaysinh.Value);
                            if (rbtnam.Checked)
                                cmd.Parameters.AddWithValue("@GioiTinh", true);
                            else cmd.Parameters.AddWithValue("@GioiTinh", false);
                            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                            cmd.Parameters.AddWithValue("@SoDT", txtsodt.Text);
                            cmd.Parameters.AddWithValue("@DiaChi", txtdiachi.Text);
                            cmd.Parameters.AddWithValue("@Username", txtusser.Text);
                            if (cmd.ExecuteNonQuery() > 0) MessageBox.Show("Thêm giáo viên thành công!!");
                            else MessageBox.Show("Thêm giáo viên thất bại");
                            reset_Value();
                            fillGiaoVien();
                        }
                        else
                        {
                            MessageBox.Show("Vui lòng chọn ngành học muốn thêm trong datagridview!!");
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
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            SqlCommand cmd = new SqlCommand("Update GiaoVien set TenGV= @TenGV,MaNganh = @MaNganh,NgaySinh=@NgaySinh,GioiTinh=@GioiTinh,Email=@Email, SoDT= @SoDT,DiaChi= @DiaChi where MaGV=@MaGV", conn);
            cmd.Parameters.AddWithValue("@MaGV", txtmaGV.Text);
            cmd.Parameters.AddWithValue("@TenGV", txttenGV.Text);
            cmd.Parameters.AddWithValue("@MaNganh", dgv_dsNganhHoc.Rows[dongchon].Cells[0].Value.ToString());
            cmd.Parameters.AddWithValue("@NgaySinh", dtpngaysinh.Value);
            if (rbtnam.Checked)
                cmd.Parameters.AddWithValue("@GioiTinh", true);
            else cmd.Parameters.AddWithValue("@GioiTinh", false);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@SoDT", txtsodt.Text);
            cmd.Parameters.AddWithValue("@DiaChi", txtdiachi.Text);
            cmd.Parameters.AddWithValue("@Username", txtusser.Text);
            if (cmd.ExecuteNonQuery() > 0) MessageBox.Show("Sửa giáo viên thành công!!");
            else MessageBox.Show("Sửa giáo viên thất bại");
            reset_Value();
            fillGiaoVien();
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            DialogResult ret = MessageBox.Show("Bạn chắc chắn muốn xóa dữ liệu này??", "Hỏi xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("Delete from GiaoVien where MaGV= @MaGV", conn);
                    cmd.Parameters.AddWithValue("@MaGV", txtmaGV.Text);
                    cmd.Parameters.AddWithValue("@TenGV", txttenGV.Text);
                    cmd.Parameters.AddWithValue("@MaNganh", dgv_dsNganhHoc.Rows[dongchon].Cells[0].Value.ToString());
                    cmd.Parameters.AddWithValue("@NgaySinh", dtpngaysinh.Value);
                    if (rbtnam.Checked)
                        cmd.Parameters.AddWithValue("@GioiTinh", true);
                    else cmd.Parameters.AddWithValue("@GioiTinh", false);
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@SoDT", txtsodt.Text);
                    cmd.Parameters.AddWithValue("@DiaChi", txtdiachi.Text);
                    cmd.Parameters.AddWithValue("@Username", txtusser.Text);

                    if (cmd.ExecuteNonQuery() > 0) MessageBox.Show("Xóa giáo viên thành công!!");
                    else MessageBox.Show("Xóa giáo viên thất bại");
                    reset_Value();
                    fillGiaoVien();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }

        private void btntimkiem_Click(object sender, EventArgs e)
        {
            string strTimKiemMa = "SELECT * FROM GiaoVien WHERE MaGV= '" + txttukhoa.Text + "'";
            string strTimKiemTen = "SELECT * FROM GiaoVien WHERE TenGV like N'%" + txttukhoa.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(strTimKiemMa, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(strTimKiemTen, conn);
            DataTable dt = new DataTable();

            if (cbotimkiem.SelectedIndex == 0)
            {
                da.Fill(dt);
                dgv_dsGiaoVien.DataSource = dt;
            }
            if (cbotimkiem.SelectedIndex == 1)
            {
                da1.Fill(dt);
                dgv_dsGiaoVien.DataSource = dt;
            }
        }

        private void DataGridView_colorText()
        {
            this.dgv_dsGiaoVien.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsGiaoVien.DefaultCellStyle.BackColor = Color.AliceBlue;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_dsGiaoVien.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsGiaoVien.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsGiaoVien.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
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

        private void dgv_dsGiaoVien_SelectionChanged(object sender, EventArgs e)
        {
            
        }
        private void dgv_dsGiaoVien_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsGiaoVien.CurrentRow.Index;
            if (dongchon >= 0)
            {
                txtmaGV.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["MaGV"].Value.ToString();
                txttenGV.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["TenGV"].Value.ToString();
                dtpngaysinh.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["NgaySinh"].Value.ToString();
                txtemail.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["Email"].Value.ToString();
                txtsodt.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["SoDT"].Value.ToString();
                txtdiachi.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["DiaChi"].Value.ToString();
                if (Convert.ToBoolean(dgv_dsGiaoVien.Rows[dongchon].Cells["GioiTinh"].Value) == true)
                    rbtnam.Checked = true;
                else rbtnu.Checked = true;
                txtusser.Text = dgv_dsGiaoVien.Rows[dongchon].Cells["Username"].Value.ToString();
            }
        }

        private void btnadduser_Click(object sender, EventArgs e)
        {
            ChooseUsers.setLeggee(1);
            Singleton.frm_QLUsers.Show();
            this.Hide();
            fillGiaoVien();
        }

        private void btnclear_Click(object sender, EventArgs e)
        {
            reset_Value();
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

        private void dgv_dsGiaoVien_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsGiaoVien.Visible)
            {
                DataGridView_colorText();
                DataGridView_CentreHeaders();
                DataGridView_AutoSize();
            }
        }

        private void dgv_dsNganhHoc_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsNganhHoc.CurrentRow.Index;
            string sql = "Select * from GiaoVien " +
                "where MaNganh = '" + dgv_dsNganhHoc.Rows[dongchon].Cells["MaNganh"].Value.ToString() + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dgv_dsGiaoVien.DataSource = dt;
        }

        private void DataGridView1_colorText()
        {
            this.dgv_dsNganhHoc.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsNganhHoc.DefaultCellStyle.BackColor = Color.AntiqueWhite;
        }
        private void DataGridView1_CentreHeaders()
        {
            dgv_dsNganhHoc.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsNganhHoc.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView1_AutoSize()
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
                DataGridView1_colorText();
                DataGridView1_CentreHeaders();
                DataGridView1_AutoSize();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                //int i = dgv_dsGiaoVien.CurrentCell.RowIndex;
                for (int i = 0; i < dgv_dsGiaoVien.Rows.Count - 1; i++)
                {
                    int mGV = int.Parse(dgv_dsGiaoVien.Rows[i].Cells[0].Value.ToString());
                    string tengv = Convert.ToString(dgv_dsGiaoVien.Rows[i].Cells["TenGV"].Value.ToString());
                    string ns = Convert.ToString(dgv_dsGiaoVien.Rows[i].Cells["NgaySinh"].Value.ToString());
                    string email = Convert.ToString(dgv_dsGiaoVien.Rows[i].Cells["Email"].Value.ToString());
                    bool gt;
                    if (Convert.ToBoolean(dgv_dsGiaoVien.Rows[i].Cells["GioiTinh"].Value) == true)
                        gt = true;
                    else gt = false;
                    string sdt = Convert.ToString(dgv_dsGiaoVien.Rows[i].Cells["SoDT"].Value.ToString());
                    string dc = Convert.ToString(dgv_dsGiaoVien.Rows[i].Cells["DiaChi"].Value.ToString());
                    string mN = Convert.ToString(dgv_dsGiaoVien.Rows[i].Cells["MaNganh"].Value.ToString());

                    string sql = "UPDATE GiaoVien set TenGV=N'" + tengv + "',MaNganh =N'" + mN + "',NgaySinh=N'" + ns + "'," +
                        "GioiTinh=N'" + gt + "',Email =N'" + email + "',SoDT=N'" + sdt + "' ,DiaChi=N'" + dc + "' Where MaGV = '" + mGV + "'";
                    cmd = new SqlCommand(sql, conn);
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                }
                if (cmd.ExecuteNonQuery() > 0)
                {
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

        private void btnexcel_Click(object sender, EventArgs e)
        {
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                //gọi hàm ToExcel() với tham số là dtgDSHS và filename từ SaveFileDialog
                ToExcel(dgv_dsGiaoVien, saveFileDialog1.FileName);
            }
        }
    }
}
