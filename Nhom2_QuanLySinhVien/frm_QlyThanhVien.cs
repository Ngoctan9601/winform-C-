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
    public partial class frm_QlyThanhVien : Form
    {
        public frm_QlyThanhVien()
        {
            InitializeComponent();
        }

        private void DataGridView_colorText()
        {
            this.dataGridView1.DefaultCellStyle.ForeColor = Color.Black;
            this.dataGridView1.DefaultCellStyle.BackColor = Color.Lavender;
        }
        private void DataGridView_CentreHeaders()
        {
            // Centre Column Cells Content
            dataGridView1.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;

            // Centre (Column and Row) Headers    
            dataGridView1.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;

            // Set Font Segoe UI, 14pt, style=Bold
            dataGridView1.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 14F, FontStyle.Bold, GraphicsUnit.Pixel);
        }
        private void DataGridView_AutoSize()
        {
            var col = dataGridView1.Columns;

            for (int i = 0; i < col.Count; i++)
            {
                if (i == 0) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 1) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 2) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 3) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                if (i == 4) { col[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill; }
                // Etc...
            }
        }
        private void frmQlyThanhVien_Load(object sender, EventArgs e)
        {
            this.dataGridView1.Rows.Add("19103100334", "Đỗ Thị Thùy Nhương", "10/12/2001");
            this.dataGridView1.Rows.Add("19103100305", "Nguyễn Việt Trinh", "16/05/2001");
            this.dataGridView1.Rows.Add("19103100305", "Nguyễn Ngọc Tân", "09/06/2001");
            this.dataGridView1.Rows.Add("19103100313", "Dương Văn Trình", "25/03/2001");
            this.dataGridView1.Rows.Add("19103100324", "Phạm Trọng Văn", "14/05/2001");
            this.dataGridView1.Rows.Add("19103100324", "Phạm Trọng Vinh", "04/01/2001");
        }

        private void dataGridView1_VisibleChanged(object sender, EventArgs e)
        {
            if (dataGridView1.Visible)
            {
                DataGridView_AutoSize();
                DataGridView_colorText();
                DataGridView_CentreHeaders();
            }
        }
    }
}
