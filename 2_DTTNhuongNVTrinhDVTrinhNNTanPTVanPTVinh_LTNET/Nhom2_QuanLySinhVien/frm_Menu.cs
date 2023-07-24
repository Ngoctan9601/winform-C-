using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Nhom2_QuanLySinhVien
{
    public partial class frm_Menu : Form
    {
        public frm_Menu()
        {
            InitializeComponent();
        }

        private void quảnLýThànhViênNhómToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QlyThanhVien.Show(); 
        }
  
        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có chắc muốn đăng xuất (Do you sure you want to logout)?", "LogOut??", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (ret == DialogResult.Yes)
            {
                Singleton.frm_DangNhap.Show();
                this.Hide();
            }
        }

        private void đổiMậtKhẩuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_DoiMatKhau.Show();
        }

        private void quảnLýGiáoViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QLGiaoVien.Show();
            this.Hide();
        }

        private void quảnLýSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QLSinhVien.Show();
            this.Hide();
        }

        private void quảnLýĐiểmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_DiemHocPhan.Show();
            this.Hide();
        }

        private void quảnLýLớpHọcPhẩnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QLLopHocPhan.Show();
            this.Hide();
        }

        private void lớpHọcToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QLLopHoc.Show();
            this.Hide();
        }

        private void mônHọcToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QLMonHoc.Show();
            this.Hide();
        }

        private void ngànhHọcToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QLNganh.Show();
            this.Hide();
        }

        private void niênKhóaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Singleton.frm_QLNienKhoa.Show();
            this.Hide();
        }

        private void frm_Menu_Load(object sender, EventArgs e)
        {

        }

        private void lớpHọcPhầnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new frm_ThongKeBangDiem().Show();
            this.Hide();
        }

        private void danhSáchSinhViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new frm_ThongKeDSSV().Show();
            this.Hide();
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }
    }
}
