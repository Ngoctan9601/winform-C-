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
    public partial class frm_DoiMatKhau : Form
    {
       
        public frm_DoiMatKhau()
        {
            InitializeComponent();
        }

        SqlConnection conn = DBConnection.getDBConnection();
        SqlCommand cmd = new SqlCommand();
        private string usernamsv;
       
        public string Usernamsv { get => usernamsv; set => usernamsv = value; }
        private string saveUs()
        {
            string us = Usernamsv;
            return us;
        }

        public bool KiemTra()
        {
            if (string.IsNullOrWhiteSpace(txtmkht.Text) && string.IsNullOrWhiteSpace(txtmkms.Text) && string.IsNullOrWhiteSpace(txtmkxn.Text))
            {
                lblShowInfor.ForeColor = Color.Red;
                lblShowInfor.Text = "Vui lòng nhập đầy đủ thông tin !!";
                lblShowInfor.Visible = true;
                txtmkht.Focus();
                return false;
            }
            else if (txtmkht.Text == "")
            {
                lblShowInfor.ForeColor = Color.Red;
                lblShowInfor.Text = "Vui lòng nhập mật khẩu hiện tại !!";
                lblShowInfor.Visible = true;
                txtmkht.Focus();
                return false;
            }
            else if (txtmkms.Text == "")
            {
                lblShowInfor.ForeColor = Color.Red;
                lblShowInfor.Text = "Vui lòng nhập mật khẩu mới !!";
                lblShowInfor.Visible = true;
                txtmkms.Focus();
                return false;
            }
            else if (txtmkxn.Text == "")
            {
                lblShowInfor.ForeColor = Color.Red;
                lblShowInfor.Text = "Vui lòng xác nhận mật khẩu !!";
                lblShowInfor.Visible = true;
                txtmkxn.Focus();
                return false;
            }
            else if (txtmkms.Text != txtmkxn.Text)
            {
                lblShowInfor.ForeColor = Color.Red;
                lblShowInfor.Text = "Mật khẩu mới và mật khẩu xác nhận không trùng khớp";
                lblShowInfor.Visible = true;
                txtmkxn.Focus();
                txtmkxn.SelectAll();
                return false;
            }
            return true;
        }

        private void btnluu_Click(object sender, EventArgs e)
        {
            if (KiemTra())
            {
                try
                {
                    cmd = conn.CreateCommand();
                    cmd.CommandText = "Select * from Users";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "Update_Pass";
                    cmd.Parameters.Add("@Username", SqlDbType.NVarChar).Value = txttentk.Text;
                    cmd.Parameters.Add("@OldPass", SqlDbType.NVarChar).Value = txtmkht.Text;
                    cmd.Parameters.Add("@NewPass", SqlDbType.NVarChar).Value = txtmkms.Text;
                    cmd.Connection = conn;
                    conn.Open();
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    dr.Read();
                    if (dr.GetInt32(0) == 1)
                    {
                        lblShowInfor.ForeColor = System.Drawing.Color.Blue;
                        lblShowInfor.Text = dr.GetString(1);
                        txtmkxn.Text = "";
                        txtmkht.Text = "";
                        txtmkms.Text = "";
                        txtmkht.Focus();
                    }
                    else
                    {
                        lblShowInfor.ForeColor = System.Drawing.Color.Red;
                        lblShowInfor.Text = dr.GetString(1);
                        txtmkht.Focus();
                        txtmkht.SelectAll();
                    }
                    DialogResult ret = MessageBox.Show("Bạn có muốn đăng nhập lại hay không!!", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (ret == DialogResult.OK)
                    {
                        frm_DangNhap open = new frm_DangNhap();
                        open.Show();
                        this.Hide();
                    }
                    else
                    {   
                        if(Program.quyensudung == 2)
                        {
                            Singleton.frmDiemTBCSinhVien.Show();
                            this.Hide();
                        }
                        else
                        {
                            Singleton.frm_Menu.Show();
                            this.Hide();
                        }
                        
                    }
                    dr.Close();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }
        

        private void frmDoiMatKhau_Load(object sender, EventArgs e)
        {
            this.KeyPreview = true;
            this.KeyDown += btnluu_KeyDown;
            txttentk.Text = saveUs();
            txttentk.Enabled = false;
        }

        private void btnluu_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnluu_Click(sender, e);
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                txtmkht.PasswordChar = (char)0;
                txtmkms.PasswordChar = (char)0;
                txtmkxn.PasswordChar = (char)0;
            }
            else
            {
                txtmkht.PasswordChar = '*';
                txtmkms.PasswordChar = '*';
                txtmkxn.PasswordChar = '*';
            }
        }
    }
}
