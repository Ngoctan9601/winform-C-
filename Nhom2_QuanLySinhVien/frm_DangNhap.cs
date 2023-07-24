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
    public partial class frm_DangNhap : Form
    {
        public frm_DangNhap()
        {
            InitializeComponent();
        }

        SqlConnection conn = DBConnection.getDBConnection();

        public void set_lableandpicture()
        {
            label1.Parent = pictureBox1;
            label1.BackColor = Color.Transparent;
            panel1.Parent = pictureBox1;
            panel1.BackColor = Color.Transparent;
            label4.Parent = pictureBox2;
            label4.BackColor = Color.Transparent;
            label5.Parent = pictureBox1;
            label5.BackColor = Color.Transparent;
        }

        public bool kiemtra()
        {
            if (String.IsNullOrEmpty(tb_user.Text.Trim()))
            {
                MessageBox.Show("Please enter Username!", "Error", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
                tb_user.Focus();
                return false;
            }
            else if (String.IsNullOrEmpty(txtpass.Text.Trim()))
            {
                MessageBox.Show("Please enter Password!", "Error", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
                txtpass.Focus();
                return false;
            }
            return true;
        }
        private void load()
        {
            set_lableandpicture();
            this.KeyPreview = true;
            this.KeyDown += btnlogin_KeyDown;
            tb_user.Text = "";
        }
        private void frmDangNhap_Load(object sender, EventArgs e)
        {

            load();
        }

        private void btnlogin_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnlogin_Click(sender, e);
            }
        }

        private void btnlogin_Click(object sender, EventArgs e)
        {
            if (kiemtra())
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "User_login";
                    cmd.Connection = conn;
                    cmd.Parameters.AddWithValue("@Username", tb_user.Text);
                    cmd.Parameters.AddWithValue("@Pass", txtpass.Text);
                    object kq = cmd.ExecuteScalar();
                    int code = Convert.ToInt32(kq);
                    if (code == 1)
                    {                        
                        string strGV = "SELECT TenGV FROM GiaoVien WHERE Username = '"+tb_user.Text+"'";
                        cmd = new SqlCommand(strGV, conn);
                        string sqlgv = (string)cmd.ExecuteScalar();
                        string strID = "SELECT MaGV FROM GiaoVien WHERE Username = '" + tb_user.Text + "'";
                        SqlCommand cmd1 = new SqlCommand(strID, conn);
                        int MGV = Convert.ToInt32(cmd1.ExecuteScalar());
                        MessageBox.Show("Chào mừng "+ sqlgv+ " đến với hệ thống", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Program.quyensudung = 1;
                        Singleton.frmDiemTBCSinhVien.Msvdn = sqlgv.ToString();
                        Singleton.frmDiemTBCSinhVien.ID1 = MGV;
                        Singleton.frmDiemTBCSinhVien.Show();
                                               
                        this.Hide();
                    }
                    else if (code == 2)
                    {
                        string strTK = "SELECT TenSV FROM SinhVien WHERE Username = '" + tb_user.Text + "'";
                        cmd = new SqlCommand(strTK, conn);
                        string sqlsv = (string)cmd.ExecuteScalar();
                        string strID = "SELECT MaSV FROM SinhVien WHERE Username = '" + tb_user.Text + "'";
                        SqlCommand cmd1 = new SqlCommand(strID, conn);
                        int MSV = Convert.ToInt32(cmd1.ExecuteScalar());
                        MessageBox.Show("Chào mừng "+sqlsv+" đến với hệ thống", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Program.quyensudung = 2;
                        Singleton.frmDiemTBCSinhVien.Msvdn = sqlsv.ToString();
                        Singleton.frmDiemTBCSinhVien.ID1 = MSV;
                        Singleton.frmDiemTBCSinhVien.Show();
                        this.Hide();
                    }
                    else if (code == 3)
                    {
                        MessageBox.Show("Chào mừng quản trị viên đến với hệ thống !!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Program.quyensudung = 3;
                        Singleton.frm_Menu.Show();
                        this.Hide();
                    }
                    else if (code == 4)
                    {
                        MessageBox.Show("Tài khoản hoặc mật khẩu chưa đúng !!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        Program.quyensudung = 4;
                        tb_user.Text = "";
                        txtpass.Text = "";
                        tb_user.Focus();
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void btnexit_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có chắc muốn thoát không (Do you sure you want to exit)?", "Exit??", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void chkhienthi_CheckedChanged(object sender, EventArgs e)
        {
            if (chkhienthi.Checked)
            {
                txtpass.PasswordChar = (char)0;
            }
            else
            {
                txtpass.PasswordChar = '*';
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void txtpass_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
