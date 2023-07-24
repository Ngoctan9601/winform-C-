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
            conn.Open();
            lb_name.Text = msvdn;
            lb_love.Text = "Lớp: " + getlop();
            groupBox1.Text = "Mã sinh viên: " + saveID().ToString();
            LoadDATA();
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

        }
        private void LoadDATA()
        {
            string sql = "select  c.TenMH,a.MaLopHP, a.DiemThiQT, a.DiemThiKT, a.DiemTK , a.XepLoaiHocLuc, c.SoTC, c.HocKy from DiemHocPhan a, LopHocPhan b, MonHoc c where a.MaLopHP = b.MaLopHP and a.MaSV = '" + saveID() + "'  and b.MaMH = c.MaMH";
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
            double diem = 0;
            int tc = 0;
            try
            {
                int i = dataGridView1.CurrentCell.RowIndex;
                for (i = 0; i < dataGridView1.Rows.Count - 1; i++)
                {

                    double diemhocphan = Convert.ToDouble(dataGridView1.Rows[i].Cells["DiemTK"].Value.ToString());
                    int tinchi = Convert.ToInt32(dataGridView1.Rows[i].Cells["SoTC"].Value.ToString());
                    diem += diemhocphan * tinchi;
                    tc += tinchi;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            return diem / tc;
        }
        private void getDiemMonHoc()
        {
            string sql = "select  c.TenMH,a.MaLopHP, a.DiemThiQT, a.DiemThiKT, a.DiemTK , a.XepLoaiHocLuc, c.SoTC from DiemHocPhan a, LopHocPhan b, MonHoc c where a.MaLopHP = b.MaLopHP and a.MaSV = '"+saveID()+"' and c.HocKy = '"+comboBox1.Text+"' and b.MaMH = c.MaMH";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dataGridView1.DataSource = dt;

        }
        private string getlop()
        {
            string sql = "select LopHoc.TenLop from SinhVien, LopHoc where  SinhVien.MaSV = '" + saveID() + "' and LopHoc.MaLop = SinhVien.MaLop";
            SqlCommand cmd = new SqlCommand(sql, conn);
            string tenlop = Convert.ToString(cmd.ExecuteScalar());
            return tenlop;
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getDiemMonHoc();
            label2.Text = "Điểm trung bình học kỳ: " + Tinhdiemtbhocky().ToString();
            if (Tinhdiemtbhocky() >= 8)
            {
                label4.Text = " Học lực: Giỏi ";
            }
            else if (Tinhdiemtbhocky() >= 7)
            {
                label4.Text = "Học lực: Khá";
            }
            else if (Tinhdiemtbhocky() >= 5)
            {
                label4.Text = "Học lực: Trung bình";
            }
            else
            {
                label4.Text = "Học lực: Yếu";
            }
        }


        private void label3_Click(object sender, EventArgs e)
        {
            LoadDATA();
            label2.Text = "Điểm trung bình học kỳ: " + Tinhdiemtbhocky().ToString();
            if (Tinhdiemtbhocky() >= 8)
            {
                label4.Text = " Học lực: Giỏi ";
            }
            else if (Tinhdiemtbhocky() >= 7)
            {
                label4.Text = "Học lực: Khá";
            }
            else if (Tinhdiemtbhocky() >= 5)
            {
                label4.Text = "Học lực: Trung bình";
            }
            else
            {
                label4.Text = "Học lực: Yếu";
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void btnDangXuat_Click(object sender, EventArgs e)
        {
            new frm_DangNhap().Show();
            this.Close();
        }
    }
}
