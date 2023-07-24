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
using System.Reflection.Emit;

namespace Nhom2_QuanLySinhVien
{
    public partial class frmDiemTBCSinhVien : Form
    {
        public frmDiemTBCSinhVien()
        {
            InitializeComponent();
        }
        SqlConnection conn = DBConnection.getDBConnection();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        private String msvdn = "";
        private int ID;
        public string Msvdn { get => msvdn; set => msvdn = value; }
        public int ID1 { get => ID; set => ID = value; }
        private void label5_Click(object sender, EventArgs e)
        {
            Singleton.frm_DoiMatKhau.Show();
            Singleton.frm_DoiMatKhau.Usernamsv = getUsername();
            this.Hide();
        }

        private void frmDiemTBCSinhVien_Load(object sender, EventArgs e)
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            lb_name.Text = msvdn;
            lb_love.Text = "Lớp: " + getlop();
            groupBox1.Text = "Mã sinh viên: " + saveID().ToString();
            LoadDATA();
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

        }
        private void LoadDATA()
        {
            string sql = "select  c.TenMH,a.MaLopHP, a.DiemThiQT, a.DiemThiKT, a.DiemTK , c.SoTC, c.HocKy from DiemHocPhan a, LopHocPhan b, MonHoc c where a.MaLopHP = b.MaLopHP and a.MaSV = '" + saveID() + "'  and b.MaMH = c.MaMH";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;
        }
        public int saveID()
        {
            int id = ID;
            return id;
        }
        private string getUsername()
        {
            string sql = "select Username from SinhVien where MaSV='" + saveID() + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            string username = cmd.ExecuteScalar().ToString();
            return username;
        }
        private double Tinhdiemtbhocky()
        {
            try
            {
                double diem = 0;
                int tc = 0;
                int i = dataGridView1.CurrentCell.RowIndex;
                for (i = 0; i < dataGridView1.Rows.Count-1; i++)
                {

                    double diemhocphan = Convert.ToDouble(dataGridView1.Rows[i].Cells["DiemTK"].Value.ToString());
                    int tinchi = Convert.ToInt32(dataGridView1.Rows[i].Cells["SoTC"].Value.ToString());
                    diem += diemhocphan * tinchi;
                    tc += tinchi;
                }
                return diem / tc;
               
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
        private void getDiemMonHoc()
        {
            string sql = "select  c.TenMH,a.MaLopHP, a.DiemThiQT, a.DiemThiKT, a.DiemTK , c.SoTC from DiemHocPhan a, LopHocPhan b, MonHoc c where a.MaLopHP = b.MaLopHP and a.MaSV = '"+saveID()+"' and c.HocKy = '"+comboBox1.Text+"' and b.MaMH = c.MaMH";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;

        }
        private string getlop()
        {
            string sql = "select LopHoc.TenLop from SinhVien, LopHoc where  SinhVien.MaSV = '" + saveID() + "' and LopHoc.MaLop = SinhVien.MaLop";
            SqlCommand cmd = new SqlCommand(sql, conn);
            string tenlop = cmd.ExecuteScalar().ToString();
            return tenlop;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getDiemMonHoc();
            label2.Text = "Điểm trung bình học kỳ: " + Tinhdiemtbhocky().ToString();
            if (Tinhdiemtbhocky() >= 8)
            {
                label4.Text = "Học lực giỏi ";
            }
            else if (Tinhdiemtbhocky() >= 7)
            {
                label4.Text = "Học lực khá ";
            }
            else if (Tinhdiemtbhocky() >= 5)
            {
                label4.Text = "Học lực trung bình ";
            }
        }


        private void label3_Click(object sender, EventArgs e)
        {
            LoadDATA();
            label2.Text = "Điểm trung bình học kỳ: " + Tinhdiemtbhocky().ToString();
            if (Tinhdiemtbhocky() >= 8)
            {
                label4.Text = "Học lực giỏi ";
            }
            else if (Tinhdiemtbhocky() >= 7)
            {
                label4.Text = "Học lực khá ";
            }
            else if (Tinhdiemtbhocky() >= 5)
            {
                label4.Text = "Học lực trung bình ";
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
