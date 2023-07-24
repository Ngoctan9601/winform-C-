using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;
using System.Data.SqlClient;


namespace Nhom2_QuanLySinhVien
{
    public partial class frm_ThongKeBangDiem : Form
    {
        public frm_ThongKeBangDiem()
        {
            InitializeComponent();
        }
        SqlConnection conn = DBConnection.getDBConnection();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();

        private void frm_ThongKeBangDiem_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
                conn.Open();

            SqlCommand cmd = new SqlCommand("Select* from NganhHoc", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //đổ dữ liệu lên combobox
            cbnganh.DataSource = dt;
            cbnganh.DisplayMember = "TenNganh";
            cbnganh.ValueMember = "MaNganh";
            this.reportViewer1.RefreshReport();
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình này??", "Hỏi thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void btnthongke_Click(object sender, EventArgs e)
        {
                SqlCommand cmd = new SqlCommand("BangDiem", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TenLop", cblop.Text);
                cmd.Parameters.AddWithValue("@TenSV", cbtensv.Text);
                cmd.Parameters.AddWithValue("@TenNganh", cbnganh.Text);
                cmd.Parameters.AddWithValue("@NamNK", txt_NK.Text);
                cmd.Parameters.AddWithValue("@NgaySinh", dateTimePicker1.Value);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                reportViewer1.ProcessingMode = ProcessingMode.Local;
                reportViewer1.LocalReport.ReportPath = "rpbangdiem.rdlc";
                // tạo tham số và truyền dl cho tham số
                ReportParameter rp1 = new ReportParameter(@"ReportParameterTenLop", "Tên Lớp: " + cblop.Text);
                ReportParameter rp2 = new ReportParameter(@"ReportParameterTenSV", "Tên SV: " + cbtensv.Text);
                ReportParameter rp3 = new ReportParameter(@"ReportParameterTenNganh", "Tên Ngành: " + cbnganh.Text);
                ReportParameter rp4 = new ReportParameter(@"ReportParameterNamNK", "Năm NK: " + txt_NK.Text);
                ReportParameter rp5 = new ReportParameter(@"ReportParameterNgaySinh", "Ngày Sinh: " + dateTimePicker1.Value);
                reportViewer1.LocalReport.SetParameters(rp1);
                reportViewer1.LocalReport.SetParameters(rp2);
                reportViewer1.LocalReport.SetParameters(rp3);
                reportViewer1.LocalReport.SetParameters(rp4);
                reportViewer1.LocalReport.SetParameters(rp5);
                //tạo nguồn dl cho báo cáo
                ReportDataSource rds = new ReportDataSource();
                rds.Name = "BangDiemSV";
                rds.Value = dt;
                reportViewer1.LocalReport.DataSources.Clear();
                reportViewer1.LocalReport.DataSources.Add(rds);
                this.reportViewer1.RefreshReport();

        }

        private void cblop_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("Select * from SinhVien where SinhVien.MaLop='" + cblop.SelectedValue + "'", conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            cbtensv.DataSource = dt1;
            cbtensv.DisplayMember = "TenSV";
            cbtensv.ValueMember = "MaSV";
        }

        private void cbnganh_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select* from LopHoc where LopHoc.MaNganh='" + cbnganh.SelectedValue + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //đổ dữ liệu lên combobox
            cblop.DataSource = dt;
            cblop.DisplayMember = "TenLop";
            cblop.ValueMember = "MaLop";
        }
        private string getNienKhoa()
        {
            try
            {
                string sql = "select NamNK from NienKhoa where Khoa='k13'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                string namnk = cmd.ExecuteScalar().ToString();
                return namnk;
            }
            catch
            {
                return "";
            }

        }
        private string getNgaySinh()
        {
            try
            {
                string sql = "select SinhVien.NgaySinh  from SinhVien where  SinhVien.MaSV = '" + cbtensv.SelectedValue + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                string ngaysinh = cmd.ExecuteScalar().ToString();
                return ngaysinh;
            }

            catch
            {
                return "";
            }
        }

        private void cbtensv_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_NK.Text = getNienKhoa();
            dateTimePicker1.Text = getNgaySinh();
        }
    }
    }
