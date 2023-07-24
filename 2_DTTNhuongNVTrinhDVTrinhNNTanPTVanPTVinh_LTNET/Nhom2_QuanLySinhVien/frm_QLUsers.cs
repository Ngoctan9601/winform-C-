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
    public partial class frm_QLUsers : Form
    {
        public frm_QLUsers()
        {
            InitializeComponent();
        }

        SqlConnection conn = DBConnection.getDBConnection();
        SqlCommand cmd;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable table = new DataTable();
        string strNhan;

        void load_data()
        {
            cboquyen.Items.Add(1);
            cboquyen.Items.Add(2);
            cboquyen.Items.Add(3);
            cmd = conn.CreateCommand();
            cmd.CommandText = "Select *from Users";
            adapter.SelectCommand = cmd;
            table.Clear();
            adapter.Fill(table);
            dgv_dsUser.DataSource = table;
        }
        public frm_QLUsers(string giatrinhan) : this()
        {
            int dongchon = dgv_dsUser.CurrentRow.Index;
            if (dongchon >= 0)
            {
                giatrinhan = dgv_dsUser.Rows[dongchon].Cells["Username"].Value.ToString();
                strNhan = giatrinhan;
                txtusser.Text = strNhan;
            }
        }
        private void frm_QLUsers_Load(object sender, EventArgs e)
        {
            conn.Open();
            load_data();
            load_column();
            if (ChooseUsers.getLeggee() == 1)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE Quyen = 1 ORDER BY Username DESC;", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dgv_dsUser.DataSource = dt;
            }
            else if (ChooseUsers.getLeggee() == 2)
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE Quyen = 2 ORDER BY Username DESC;", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dgv_dsUser.DataSource = dt;
            }
        }
        private void DataGridView_colorText()
        {
            this.dgv_dsUser.DefaultCellStyle.ForeColor = Color.Black;
            this.dgv_dsUser.DefaultCellStyle.BackColor = Color.SeaShell;
        }
        private void DataGridView_CentreHeaders()
        {
            dgv_dsUser.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dgv_dsUser.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgv_dsUser.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dgv_dsUser.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
            }
        }

        private void dgv_dsUser_VisibleChanged(object sender, EventArgs e)
        {
            if (dgv_dsUser.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_colorText();
                DataGridView_CentreHeaders();
            }
        }

        
        private void dgv_dsUser_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int dongchon = dgv_dsUser.CurrentRow.Index;
            
            if (dongchon >= 0)
            {
                this.txtusser.Text = dgv_dsUser.Rows[dongchon].Cells["Username"].Value.ToString();
                this.txtpass.Text = dgv_dsUser.Rows[dongchon].Cells["Pass"].Value.ToString();
                this.cboquyen.Text = dgv_dsUser.Rows[dongchon].Cells["Quyen"].Value.ToString();

                if (ChooseUsers.getLeggee() == 1)
                {
                    this.Hide();
                    Singleton.frm_QLGiaoVien.Message = this.txtusser.Text;
                    Singleton.frm_QLGiaoVien.Show();
                }

                if (ChooseUsers.getLeggee() == 2)
                {
                    this.Hide();
                    Singleton.frm_QLSinhVien.Message = this.txtusser.Text;
                    Singleton.frm_QLSinhVien.Show();
                }
            }
        }
        void reset_Value()
        {
            txtusser.ResetText();
            txtpass.ResetText();
            txttukhoa.ResetText();
            cboquyen.Text = default;
            txtusser.Focus();
        }
        private void btnclear_Click(object sender, EventArgs e)
        {
            reset_Value();
            load_data();
        }

        public void load_column()
        {
            SqlCommand cmd = new SqlCommand("Select column_name from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME ='Users'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cbotimkiem.DataSource = dt;
            cbotimkiem.DisplayMember = "column_name";
        }
        public bool kiemtra()
        {
            if (string.IsNullOrWhiteSpace(txtusser.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập tên user đăng nhập");
                txtusser.Focus();
                return false;
            }
            else if (string.IsNullOrWhiteSpace(txtpass.Text.Trim()))
            {
                MessageBox.Show("Hãy nhập mật khẩu cho user");
                txtpass.Focus();
                return false;
            }
            return true;
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
                string strTimKiem = "SELECT * FROM Users where " + cbotimkiem.Text + " like N'%" + txttukhoa.Text + "%'";
                cmd = new SqlCommand(strTimKiem, conn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                dgv_dsUser.DataSource = dt;
            }
        }

        private void btnthem_Click(object sender, EventArgs e)
        {
            string sqlCKECK = "Select count(*) Username from Users where Username = @Username";
            SqlCommand cmdl = new SqlCommand(sqlCKECK, conn);
            if (kiemtra())
            {
                try
                {
                    cmdl.Parameters.AddWithValue("@Username", txtusser.Text);
                    int val = (int)cmdl.ExecuteScalar();
                    if (val > 0)
                    {
                        MessageBox.Show("User này đã tồn tại!!");
                    }
                    else
                    {
                        string sqlINSERT = "INSERT INTO Users (Username,Pass,Quyen) values(@Username,@Pass,@Quyen)";
                        SqlCommand cmd = new SqlCommand(sqlINSERT, conn);
                        cmd.Parameters.AddWithValue("@Username", this.txtusser.Text);
                        cmd.Parameters.AddWithValue("@Pass", this.txtpass.Text);
                        cmd.Parameters.AddWithValue("@Quyen", this.cboquyen.Text);

                        if (cmd.ExecuteNonQuery() > 0)
                            MessageBox.Show("Thêm user thành công");
                        else
                            MessageBox.Show("Thêm user thất bại");
                        reset_Value();
                        load_data();
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
            cmd = new SqlCommand("Update Users set Username=@Username,Pass=@Pass,Quyen=@Quyen where Username =@Username", conn);
            cmd.Parameters.AddWithValue("@Username", this.txtusser.Text);
            cmd.Parameters.AddWithValue("@Pass", this.txtpass.Text);
            cmd.Parameters.AddWithValue("@Quyen", this.cboquyen.Text);
            if (cmd.ExecuteNonQuery() > 0)
                MessageBox.Show("Sửa user thành công");
            else
                MessageBox.Show("Sửa user thất bại");
            reset_Value();
            load_data();
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có chắc chắn muốn xóa gói cước này không??", "Hỏi xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                try
                {
                    cmd = new SqlCommand("Delete from Users where Username = @Username", conn);
                    cmd.Parameters.AddWithValue("@Username", this.txtusser.Text);
                    cmd.Parameters.AddWithValue("@Pass", this.txtpass.Text);
                    cmd.Parameters.AddWithValue("@Quyen", this.cboquyen.Text);
                    if (cmd.ExecuteNonQuery() > 0)
                        MessageBox.Show("Xóa user thành công");
                    else
                        MessageBox.Show("Xóa user thất bại");
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
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình quản lý users hay không?", "Exit", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (result == DialogResult.OK)
            {
                Singleton.frm_Menu.Show();
                this.Hide();
            }
        }

        private void dgv_dsUser_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void dgv_dsUser_MouseClick(object sender, MouseEventArgs e)
        {
            
        }
    }
}
