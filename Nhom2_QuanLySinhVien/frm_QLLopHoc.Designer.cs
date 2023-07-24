
namespace Nhom2_QuanLySinhVien
{
    partial class frm_QLLopHoc
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_QLLopHoc));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txttenLop = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtmaLop = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgv_dsLop = new System.Windows.Forms.DataGridView();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnclear = new System.Windows.Forms.Button();
            this.btntimkiem = new System.Windows.Forms.Button();
            this.txttukhoa = new System.Windows.Forms.TextBox();
            this.btnthoat = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.cbotimkiem = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.btnthem = new System.Windows.Forms.Button();
            this.btnsua = new System.Windows.Forms.Button();
            this.btnxoa = new System.Windows.Forms.Button();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.dgv_dsNganhHoc = new System.Windows.Forms.DataGridView();
            this.MaNganh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.dgv_dsNienKhoa = new System.Windows.Forms.DataGridView();
            this.Khoa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NamNK = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsLop)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNganhHoc)).BeginInit();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNienKhoa)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1359, 50);
            this.panel1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.label1.Location = new System.Drawing.Point(517, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(408, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "QUẢN LÝ THÔNG TIN LỚP HỌC";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.Snow;
            this.groupBox1.Controls.Add(this.txttenLop);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtmaLop);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(16, 53);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(535, 124);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin lớp học";
            // 
            // txttenLop
            // 
            this.txttenLop.Location = new System.Drawing.Point(151, 69);
            this.txttenLop.Multiline = true;
            this.txttenLop.Name = "txttenLop";
            this.txttenLop.Size = new System.Drawing.Size(362, 28);
            this.txttenLop.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(36, 79);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 18);
            this.label3.TabIndex = 2;
            this.label3.Text = "Tên lớp: ";
            // 
            // txtmaLop
            // 
            this.txtmaLop.Location = new System.Drawing.Point(151, 25);
            this.txtmaLop.Multiline = true;
            this.txtmaLop.Name = "txtmaLop";
            this.txtmaLop.Size = new System.Drawing.Size(362, 29);
            this.txtmaLop.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(36, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 18);
            this.label2.TabIndex = 3;
            this.label2.Text = "Mã lớp: ";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgv_dsLop);
            this.groupBox2.Location = new System.Drawing.Point(16, 427);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(1319, 253);
            this.groupBox2.TabIndex = 3;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Danh sách lớp";
            // 
            // dgv_dsLop
            // 
            this.dgv_dsLop.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsLop.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsLop.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsLop.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsLop.Name = "dgv_dsLop";
            this.dgv_dsLop.RowHeadersWidth = 51;
            this.dgv_dsLop.RowTemplate.Height = 24;
            this.dgv_dsLop.Size = new System.Drawing.Size(1313, 230);
            this.dgv_dsLop.TabIndex = 0;
            this.dgv_dsLop.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsLop_CellContentClick);
            this.dgv_dsLop.VisibleChanged += new System.EventHandler(this.dgv_dsLop_VisibleChanged);
            // 
            // groupBox3
            // 
            this.groupBox3.BackColor = System.Drawing.Color.SeaShell;
            this.groupBox3.Controls.Add(this.btnclear);
            this.groupBox3.Controls.Add(this.btntimkiem);
            this.groupBox3.Controls.Add(this.txttukhoa);
            this.groupBox3.Controls.Add(this.btnthoat);
            this.groupBox3.Controls.Add(this.label12);
            this.groupBox3.Controls.Add(this.cbotimkiem);
            this.groupBox3.Controls.Add(this.label11);
            this.groupBox3.Location = new System.Drawing.Point(557, 53);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(778, 124);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Tìm kiếm theo";
            // 
            // btnclear
            // 
            this.btnclear.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.btnclear.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.btnclear.Image = ((System.Drawing.Image)(resources.GetObject("btnclear.Image")));
            this.btnclear.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnclear.Location = new System.Drawing.Point(586, 79);
            this.btnclear.Name = "btnclear";
            this.btnclear.Size = new System.Drawing.Size(102, 34);
            this.btnclear.TabIndex = 7;
            this.btnclear.Text = "Clear";
            this.btnclear.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnclear.UseVisualStyleBackColor = false;
            this.btnclear.Click += new System.EventHandler(this.btnclear_Click);
            // 
            // btntimkiem
            // 
            this.btntimkiem.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.btntimkiem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.btntimkiem.Image = ((System.Drawing.Image)(resources.GetObject("btntimkiem.Image")));
            this.btntimkiem.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btntimkiem.Location = new System.Drawing.Point(498, 32);
            this.btntimkiem.Name = "btntimkiem";
            this.btntimkiem.Size = new System.Drawing.Size(119, 33);
            this.btntimkiem.TabIndex = 7;
            this.btntimkiem.Text = "Tìm kiếm";
            this.btntimkiem.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btntimkiem.UseVisualStyleBackColor = false;
            this.btntimkiem.Click += new System.EventHandler(this.btntimkiem_Click);
            // 
            // txttukhoa
            // 
            this.txttukhoa.Location = new System.Drawing.Point(187, 75);
            this.txttukhoa.Multiline = true;
            this.txttukhoa.Name = "txttukhoa";
            this.txttukhoa.Size = new System.Drawing.Size(275, 29);
            this.txttukhoa.TabIndex = 6;
            // 
            // btnthoat
            // 
            this.btnthoat.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.btnthoat.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.btnthoat.Image = ((System.Drawing.Image)(resources.GetObject("btnthoat.Image")));
            this.btnthoat.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnthoat.Location = new System.Drawing.Point(659, 32);
            this.btnthoat.Name = "btnthoat";
            this.btnthoat.Size = new System.Drawing.Size(97, 35);
            this.btnthoat.TabIndex = 7;
            this.btnthoat.Text = "Thoát";
            this.btnthoat.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnthoat.UseVisualStyleBackColor = false;
            this.btnthoat.Click += new System.EventHandler(this.btnthoat_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(40, 81);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(74, 18);
            this.label12.TabIndex = 5;
            this.label12.Text = "Từ khóa:";
            // 
            // cbotimkiem
            // 
            this.cbotimkiem.FormattingEnabled = true;
            this.cbotimkiem.Location = new System.Drawing.Point(187, 30);
            this.cbotimkiem.Name = "cbotimkiem";
            this.cbotimkiem.Size = new System.Drawing.Size(275, 26);
            this.cbotimkiem.TabIndex = 4;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(31, 36);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(125, 18);
            this.label11.TabIndex = 3;
            this.label11.Text = "Tìm kiếm theo: ";
            // 
            // btnthem
            // 
            this.btnthem.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnthem.ForeColor = System.Drawing.Color.Maroon;
            this.btnthem.Image = ((System.Drawing.Image)(resources.GetObject("btnthem.Image")));
            this.btnthem.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnthem.Location = new System.Drawing.Point(563, 230);
            this.btnthem.Name = "btnthem";
            this.btnthem.Size = new System.Drawing.Size(129, 42);
            this.btnthem.TabIndex = 7;
            this.btnthem.Text = "Thêm mới";
            this.btnthem.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnthem.UseVisualStyleBackColor = false;
            this.btnthem.Click += new System.EventHandler(this.btnthem_Click);
            // 
            // btnsua
            // 
            this.btnsua.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnsua.ForeColor = System.Drawing.Color.Maroon;
            this.btnsua.Image = ((System.Drawing.Image)(resources.GetObject("btnsua.Image")));
            this.btnsua.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnsua.Location = new System.Drawing.Point(563, 290);
            this.btnsua.Name = "btnsua";
            this.btnsua.Size = new System.Drawing.Size(129, 42);
            this.btnsua.TabIndex = 7;
            this.btnsua.Text = "Sửa";
            this.btnsua.UseVisualStyleBackColor = false;
            this.btnsua.Click += new System.EventHandler(this.btnsua_Click);
            // 
            // btnxoa
            // 
            this.btnxoa.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.btnxoa.ForeColor = System.Drawing.Color.Maroon;
            this.btnxoa.Image = ((System.Drawing.Image)(resources.GetObject("btnxoa.Image")));
            this.btnxoa.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnxoa.Location = new System.Drawing.Point(563, 352);
            this.btnxoa.Name = "btnxoa";
            this.btnxoa.Size = new System.Drawing.Size(129, 42);
            this.btnxoa.TabIndex = 7;
            this.btnxoa.Text = "Xóa";
            this.btnxoa.UseVisualStyleBackColor = false;
            this.btnxoa.Click += new System.EventHandler(this.btnxoa_Click);
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.dgv_dsNganhHoc);
            this.groupBox5.Location = new System.Drawing.Point(16, 183);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(535, 241);
            this.groupBox5.TabIndex = 30;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Danh sách ngành học";
            // 
            // dgv_dsNganhHoc
            // 
            this.dgv_dsNganhHoc.AllowUserToAddRows = false;
            this.dgv_dsNganhHoc.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsNganhHoc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsNganhHoc.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaNganh,
            this.dataGridViewTextBoxColumn5});
            this.dgv_dsNganhHoc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsNganhHoc.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsNganhHoc.Name = "dgv_dsNganhHoc";
            this.dgv_dsNganhHoc.RowHeadersWidth = 51;
            this.dgv_dsNganhHoc.RowTemplate.Height = 24;
            this.dgv_dsNganhHoc.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dgv_dsNganhHoc.Size = new System.Drawing.Size(529, 218);
            this.dgv_dsNganhHoc.TabIndex = 0;
            this.dgv_dsNganhHoc.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsNganhHoc_CellContentClick);
            this.dgv_dsNganhHoc.VisibleChanged += new System.EventHandler(this.dgv_dsNganhHoc_VisibleChanged);
            // 
            // MaNganh
            // 
            this.MaNganh.DataPropertyName = "MaNganh";
            this.MaNganh.HeaderText = "Mã ngành";
            this.MaNganh.MinimumWidth = 6;
            this.MaNganh.Name = "MaNganh";
            this.MaNganh.Width = 125;
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "TenNganh";
            this.dataGridViewTextBoxColumn5.HeaderText = "Tên ngành";
            this.dataGridViewTextBoxColumn5.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.Width = 125;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.dgv_dsNienKhoa);
            this.groupBox4.Location = new System.Drawing.Point(703, 183);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(632, 241);
            this.groupBox4.TabIndex = 31;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Danh sách niên khóa";
            // 
            // dgv_dsNienKhoa
            // 
            this.dgv_dsNienKhoa.AllowUserToAddRows = false;
            this.dgv_dsNienKhoa.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsNienKhoa.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsNienKhoa.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Khoa,
            this.dataGridViewTextBoxColumn1,
            this.NamNK});
            this.dgv_dsNienKhoa.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsNienKhoa.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsNienKhoa.Name = "dgv_dsNienKhoa";
            this.dgv_dsNienKhoa.RowHeadersWidth = 51;
            this.dgv_dsNienKhoa.RowTemplate.Height = 24;
            this.dgv_dsNienKhoa.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dgv_dsNienKhoa.Size = new System.Drawing.Size(626, 218);
            this.dgv_dsNienKhoa.TabIndex = 0;
            this.dgv_dsNienKhoa.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsNienKhoa_CellContentClick);
            this.dgv_dsNienKhoa.VisibleChanged += new System.EventHandler(this.dgv_dsNienKhoa_VisibleChanged);
            // 
            // Khoa
            // 
            this.Khoa.DataPropertyName = "Khoa";
            this.Khoa.HeaderText = "Khóa";
            this.Khoa.MinimumWidth = 6;
            this.Khoa.Name = "Khoa";
            this.Khoa.Width = 125;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "TenKhoa";
            this.dataGridViewTextBoxColumn1.HeaderText = "Tên niên khóa";
            this.dataGridViewTextBoxColumn1.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.Width = 125;
            // 
            // NamNK
            // 
            this.NamNK.DataPropertyName = "NamNK";
            this.NamNK.HeaderText = "Niên khóa";
            this.NamNK.MinimumWidth = 6;
            this.NamNK.Name = "NamNK";
            this.NamNK.Width = 125;
            // 
            // frm_QLLopHoc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.InactiveBorder;
            this.ClientSize = new System.Drawing.Size(1359, 716);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.btnxoa);
            this.Controls.Add(this.btnsua);
            this.Controls.Add(this.btnthem);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "frm_QLLopHoc";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frm_QLLopHoc";
            this.Load += new System.EventHandler(this.frm_QLLopHoc_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsLop)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNganhHoc)).EndInit();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNienKhoa)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox cbotimkiem;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Button btntimkiem;
        private System.Windows.Forms.TextBox txttukhoa;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txttenLop;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtmaLop;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgv_dsLop;
        private System.Windows.Forms.Button btnclear;
        private System.Windows.Forms.Button btnthem;
        private System.Windows.Forms.Button btnsua;
        private System.Windows.Forms.Button btnxoa;
        private System.Windows.Forms.Button btnthoat;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.DataGridView dgv_dsNganhHoc;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaNganh;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.DataGridView dgv_dsNienKhoa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Khoa;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn NamNK;
    }
}