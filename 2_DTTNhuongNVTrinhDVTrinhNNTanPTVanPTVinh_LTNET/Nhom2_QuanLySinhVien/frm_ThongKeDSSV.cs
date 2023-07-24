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
    public partial class frm_ThongKeDSSV : Form
    {
        public frm_ThongKeDSSV()
        {
            InitializeComponent();
        }
        SqlConnection conn = DBConnection.getDBConnection();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        private void frm_ThongKeDSSV_Load(object sender, EventArgs e)
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

        private void button2_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình này??", "Hỏi thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("TTSVTheoLop", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TenNganh", cbnganh.Text);
            cmd.Parameters.AddWithValue("@TenLop", cblop.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            reportViewer1.ProcessingMode = ProcessingMode.Local;
            reportViewer1.LocalReport.ReportPath = "rpDSSV.rdlc";
            // tạo tham số và truyền dl cho tham số
            ReportParameter rp1 = new ReportParameter(@"ReportParameterTenNganh", "Tên Ngành: " + cbnganh.Text);
            ReportParameter rp2 = new ReportParameter(@"ReportParameterTenLop", "Tên Lớp: " + cblop.Text);
            reportViewer1.LocalReport.SetParameters(rp1);
            reportViewer1.LocalReport.SetParameters(rp2);
            //tạo nguồn dl cho báo cáo
            ReportDataSource rds = new ReportDataSource();
            rds.Name = "DanhSachSV";
            rds.Value = dt;
            reportViewer1.LocalReport.DataSources.Clear();
            reportViewer1.LocalReport.DataSources.Add(rds);
            this.reportViewer1.RefreshReport();
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
    }
}
