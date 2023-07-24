
namespace Nhom2_QuanLySinhVien
{
    partial class frm_QLLopHocPhan
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_QLLopHocPhan));
            this.btnthoat = new System.Windows.Forms.Button();
            this.btnxoa = new System.Windows.Forms.Button();
            this.btnsua = new System.Windows.Forms.Button();
            this.btnthem = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnfileExcel = new System.Windows.Forms.Button();
            this.btntimkiem = new System.Windows.Forms.Button();
            this.txttukhoa = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.cbotimkiem = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.btnclear = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtmaLop = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.grb_dsGiaoVien = new System.Windows.Forms.GroupBox();
            this.dgv_dsGiaoVien = new System.Windows.Forms.DataGridView();
            this.MaGV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenGV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Username = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoDT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiaChi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.grb_dsLop = new System.Windows.Forms.GroupBox();
            this.dgv_dsLop = new System.Windows.Forms.DataGridView();
            this.MaLop = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenLop = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenKhoa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgv_dsMonHoc = new System.Windows.Forms.DataGridView();
            this.MaMH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenMH = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HocKy = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoTC = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.grb_dsMonHoc = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgv_LopHocPhan = new System.Windows.Forms.DataGridView();
            this.MaLopHP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.dgv_dsNganhHoc = new System.Windows.Forms.DataGridView();
            this.MaNganh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.grb_dsGiaoVien.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsGiaoVien)).BeginInit();
            this.grb_dsLop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsLop)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsMonHoc)).BeginInit();
            this.grb_dsMonHoc.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_LopHocPhan)).BeginInit();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNganhHoc)).BeginInit();
            this.SuspendLayout();
            // 
            // btnthoat
            // 
            this.btnthoat.BackColor = System.Drawing.Color.Maroon;
            this.btnthoat.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnthoat.Image = ((System.Drawing.Image)(resources.GetObject("btnthoat.Image")));
            this.btnthoat.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnthoat.Location = new System.Drawing.Point(38, 697);
            this.btnthoat.Name = "btnthoat";
            this.btnthoat.Size = new System.Drawing.Size(127, 37);
            this.btnthoat.TabIndex = 12;
            this.btnthoat.Text = "Close";
            this.btnthoat.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnthoat.UseVisualStyleBackColor = false;
            this.btnthoat.Click += new System.EventHandler(this.btnthoat_Click);
            // 
            // btnxoa
            // 
            this.btnxoa.BackColor = System.Drawing.Color.Maroon;
            this.btnxoa.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnxoa.Image = ((System.Drawing.Image)(resources.GetObject("btnxoa.Image")));
            this.btnxoa.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnxoa.Location = new System.Drawing.Point(38, 586);
            this.btnxoa.Name = "btnxoa";
            this.btnxoa.Size = new System.Drawing.Size(123, 38);
            this.btnxoa.TabIndex = 13;
            this.btnxoa.Text = "Delete";
            this.btnxoa.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnxoa.UseVisualStyleBackColor = false;
            this.btnxoa.Click += new System.EventHandler(this.btnxoa_Click);
            // 
            // btnsua
            // 
            this.btnsua.BackColor = System.Drawing.Color.Maroon;
            this.btnsua.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnsua.Image = ((System.Drawing.Image)(resources.GetObject("btnsua.Image")));
            this.btnsua.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnsua.Location = new System.Drawing.Point(38, 532);
            this.btnsua.Name = "btnsua";
            this.btnsua.Size = new System.Drawing.Size(123, 38);
            this.btnsua.TabIndex = 14;
            this.btnsua.Text = "Update";
            this.btnsua.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnsua.UseVisualStyleBackColor = false;
            this.btnsua.Click += new System.EventHandler(this.btnsua_Click);
            // 
            // btnthem
            // 
            this.btnthem.BackColor = System.Drawing.Color.Maroon;
            this.btnthem.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnthem.Image = ((System.Drawing.Image)(resources.GetObject("btnthem.Image")));
            this.btnthem.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnthem.Location = new System.Drawing.Point(38, 480);
            this.btnthem.Name = "btnthem";
            this.btnthem.Size = new System.Drawing.Size(123, 38);
            this.btnthem.TabIndex = 15;
            this.btnthem.Text = "Insert";
            this.btnthem.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnthem.UseVisualStyleBackColor = false;
            this.btnthem.Click += new System.EventHandler(this.btnthem_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.BackColor = System.Drawing.Color.MintCream;
            this.groupBox3.Controls.Add(this.btnfileExcel);
            this.groupBox3.Controls.Add(this.btntimkiem);
            this.groupBox3.Controls.Add(this.txttukhoa);
            this.groupBox3.Controls.Add(this.label12);
            this.groupBox3.Controls.Add(this.cbotimkiem);
            this.groupBox3.Controls.Add(this.label11);
            this.groupBox3.Location = new System.Drawing.Point(425, 57);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(521, 124);
            this.groupBox3.TabIndex = 10;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Tìm kiếm theo";
            // 
            // btnfileExcel
            // 
            this.btnfileExcel.BackColor = System.Drawing.Color.Green;
            this.btnfileExcel.ForeColor = System.Drawing.Color.Yellow;
            this.btnfileExcel.Image = ((System.Drawing.Image)(resources.GetObject("btnfileExcel.Image")));
            this.btnfileExcel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnfileExcel.Location = new System.Drawing.Point(378, 67);
            this.btnfileExcel.Name = "btnfileExcel";
            this.btnfileExcel.Size = new System.Drawing.Size(124, 34);
            this.btnfileExcel.TabIndex = 17;
            this.btnfileExcel.Text = "Xuất Excel";
            this.btnfileExcel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnfileExcel.UseVisualStyleBackColor = false;
            this.btnfileExcel.Click += new System.EventHandler(this.btnfileExcel_Click);
            // 
            // btntimkiem
            // 
            this.btntimkiem.BackColor = System.Drawing.Color.Green;
            this.btntimkiem.ForeColor = System.Drawing.Color.Yellow;
            this.btntimkiem.Image = ((System.Drawing.Image)(resources.GetObject("btntimkiem.Image")));
            this.btntimkiem.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btntimkiem.Location = new System.Drawing.Point(378, 21);
            this.btntimkiem.Name = "btntimkiem";
            this.btntimkiem.Size = new System.Drawing.Size(124, 35);
            this.btntimkiem.TabIndex = 7;
            this.btntimkiem.Text = "Tìm kiếm";
            this.btntimkiem.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btntimkiem.UseVisualStyleBackColor = false;
            this.btntimkiem.Click += new System.EventHandler(this.btntimkiem_Click);
            // 
            // txttukhoa
            // 
            this.txttukhoa.Location = new System.Drawing.Point(148, 67);
            this.txttukhoa.Multiline = true;
            this.txttukhoa.Name = "txttukhoa";
            this.txttukhoa.Size = new System.Drawing.Size(207, 28);
            this.txttukhoa.TabIndex = 1;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(22, 77);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(74, 18);
            this.label12.TabIndex = 5;
            this.label12.Text = "Từ khóa:";
            // 
            // cbotimkiem
            // 
            this.cbotimkiem.FormattingEnabled = true;
            this.cbotimkiem.Location = new System.Drawing.Point(148, 30);
            this.cbotimkiem.Name = "cbotimkiem";
            this.cbotimkiem.Size = new System.Drawing.Size(207, 26);
            this.cbotimkiem.TabIndex = 0;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(11, 39);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(125, 18);
            this.label11.TabIndex = 3;
            this.label11.Text = "Tìm kiếm theo: ";
            // 
            // btnclear
            // 
            this.btnclear.BackColor = System.Drawing.Color.Maroon;
            this.btnclear.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnclear.Image = ((System.Drawing.Image)(resources.GetObject("btnclear.Image")));
            this.btnclear.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnclear.Location = new System.Drawing.Point(38, 641);
            this.btnclear.Name = "btnclear";
            this.btnclear.Size = new System.Drawing.Size(127, 38);
            this.btnclear.TabIndex = 7;
            this.btnclear.Text = "Clear";
            this.btnclear.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnclear.UseVisualStyleBackColor = false;
            this.btnclear.Click += new System.EventHandler(this.btnclear_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.AliceBlue;
            this.groupBox1.Controls.Add(this.txtmaLop);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(18, 57);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(387, 85);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin lớp học phần";
            // 
            // txtmaLop
            // 
            this.txtmaLop.Location = new System.Drawing.Point(168, 35);
            this.txtmaLop.Name = "txtmaLop";
            this.txtmaLop.Size = new System.Drawing.Size(186, 24);
            this.txtmaLop.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(17, 40);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(143, 18);
            this.label2.TabIndex = 3;
            this.label2.Text = "Mã lớp học phần: ";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1504, 48);
            this.panel1.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(551, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(490, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "QUẢN LÝ THÔNG TIN LỚP HỌC PHẦN";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // grb_dsGiaoVien
            // 
            this.grb_dsGiaoVien.Controls.Add(this.dgv_dsGiaoVien);
            this.grb_dsGiaoVien.Location = new System.Drawing.Point(422, 187);
            this.grb_dsGiaoVien.Name = "grb_dsGiaoVien";
            this.grb_dsGiaoVien.Size = new System.Drawing.Size(524, 261);
            this.grb_dsGiaoVien.TabIndex = 19;
            this.grb_dsGiaoVien.TabStop = false;
            this.grb_dsGiaoVien.Text = "Thông tin giáo viên";
            // 
            // dgv_dsGiaoVien
            // 
            this.dgv_dsGiaoVien.AllowUserToAddRows = false;
            this.dgv_dsGiaoVien.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsGiaoVien.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.dgv_dsGiaoVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsGiaoVien.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaGV,
            this.TenGV,
            this.Username,
            this.Column1,
            this.Email,
            this.SoDT,
            this.DiaChi});
            this.dgv_dsGiaoVien.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsGiaoVien.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsGiaoVien.MultiSelect = false;
            this.dgv_dsGiaoVien.Name = "dgv_dsGiaoVien";
            this.dgv_dsGiaoVien.RowHeadersWidth = 51;
            this.dgv_dsGiaoVien.RowTemplate.Height = 24;
            this.dgv_dsGiaoVien.Size = new System.Drawing.Size(518, 238);
            this.dgv_dsGiaoVien.TabIndex = 0;
            this.dgv_dsGiaoVien.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsGiaoVien_CellContentClick);
            this.dgv_dsGiaoVien.VisibleChanged += new System.EventHandler(this.dgv_dsGiaoVien_VisibleChanged);
            // 
            // MaGV
            // 
            this.MaGV.DataPropertyName = "MaGV";
            this.MaGV.HeaderText = "Mã giáo viên";
            this.MaGV.MinimumWidth = 6;
            this.MaGV.Name = "MaGV";
            this.MaGV.Width = 125;
            // 
            // TenGV
            // 
            this.TenGV.DataPropertyName = "TenGV";
            this.TenGV.HeaderText = "Tên giáo viên";
            this.TenGV.MinimumWidth = 6;
            this.TenGV.Name = "TenGV";
            this.TenGV.Width = 125;
            // 
            // Username
            // 
            this.Username.DataPropertyName = "Username";
            this.Username.HeaderText = "Username";
            this.Username.MinimumWidth = 6;
            this.Username.Name = "Username";
            this.Username.Width = 125;
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "MaNganh";
            this.Column1.HeaderText = "Ngành học";
            this.Column1.MinimumWidth = 6;
            this.Column1.Name = "Column1";
            this.Column1.Width = 125;
            // 
            // Email
            // 
            this.Email.DataPropertyName = "Email";
            this.Email.HeaderText = "Email";
            this.Email.MinimumWidth = 6;
            this.Email.Name = "Email";
            this.Email.Width = 125;
            // 
            // SoDT
            // 
            this.SoDT.DataPropertyName = "SoDT";
            this.SoDT.HeaderText = "Số ĐT";
            this.SoDT.MinimumWidth = 6;
            this.SoDT.Name = "SoDT";
            this.SoDT.Width = 125;
            // 
            // DiaChi
            // 
            this.DiaChi.DataPropertyName = "DiaChi";
            this.DiaChi.HeaderText = "Địa chỉ";
            this.DiaChi.MinimumWidth = 6;
            this.DiaChi.Name = "DiaChi";
            this.DiaChi.Width = 125;
            // 
            // grb_dsLop
            // 
            this.grb_dsLop.Controls.Add(this.dgv_dsLop);
            this.grb_dsLop.Location = new System.Drawing.Point(18, 161);
            this.grb_dsLop.Name = "grb_dsLop";
            this.grb_dsLop.Size = new System.Drawing.Size(387, 287);
            this.grb_dsLop.TabIndex = 20;
            this.grb_dsLop.TabStop = false;
            this.grb_dsLop.Text = "Thông tin lớp";
            // 
            // dgv_dsLop
            // 
            this.dgv_dsLop.AllowUserToAddRows = false;
            this.dgv_dsLop.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsLop.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsLop.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaLop,
            this.TenLop,
            this.TenKhoa,
            this.Column2});
            this.dgv_dsLop.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsLop.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsLop.Name = "dgv_dsLop";
            this.dgv_dsLop.RowHeadersWidth = 51;
            this.dgv_dsLop.RowTemplate.Height = 24;
            this.dgv_dsLop.Size = new System.Drawing.Size(381, 264);
            this.dgv_dsLop.TabIndex = 1;
            this.dgv_dsLop.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsLop_CellContentClick);
            this.dgv_dsLop.VisibleChanged += new System.EventHandler(this.dgv_dsLop_VisibleChanged_2);
            // 
            // MaLop
            // 
            this.MaLop.DataPropertyName = "MaLop";
            this.MaLop.HeaderText = "Mã lớp";
            this.MaLop.MinimumWidth = 6;
            this.MaLop.Name = "MaLop";
            this.MaLop.Width = 125;
            // 
            // TenLop
            // 
            this.TenLop.DataPropertyName = "TenLop";
            this.TenLop.HeaderText = "Tên lớp";
            this.TenLop.MinimumWidth = 6;
            this.TenLop.Name = "TenLop";
            this.TenLop.Width = 125;
            // 
            // TenKhoa
            // 
            this.TenKhoa.DataPropertyName = "TenKhoa";
            this.TenKhoa.HeaderText = "Niên khóa";
            this.TenKhoa.MinimumWidth = 6;
            this.TenKhoa.Name = "TenKhoa";
            this.TenKhoa.Width = 125;
            // 
            // Column2
            // 
            this.Column2.DataPropertyName = "MaNganh";
            this.Column2.HeaderText = "Ngành học";
            this.Column2.MinimumWidth = 6;
            this.Column2.Name = "Column2";
            this.Column2.Width = 125;
            // 
            // dgv_dsMonHoc
            // 
            this.dgv_dsMonHoc.AllowUserToAddRows = false;
            this.dgv_dsMonHoc.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsMonHoc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsMonHoc.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaMH,
            this.TenMH,
            this.HocKy,
            this.SoTC});
            this.dgv_dsMonHoc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsMonHoc.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsMonHoc.Name = "dgv_dsMonHoc";
            this.dgv_dsMonHoc.RowHeadersWidth = 51;
            this.dgv_dsMonHoc.RowTemplate.Height = 24;
            this.dgv_dsMonHoc.Size = new System.Drawing.Size(503, 213);
            this.dgv_dsMonHoc.TabIndex = 21;
            this.dgv_dsMonHoc.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsMonHoc_CellContentClick);
            this.dgv_dsMonHoc.VisibleChanged += new System.EventHandler(this.dgv_dsMonHoc_VisibleChanged_1);
            // 
            // MaMH
            // 
            this.MaMH.DataPropertyName = "MaMH";
            this.MaMH.HeaderText = "Mã môn học";
            this.MaMH.MinimumWidth = 6;
            this.MaMH.Name = "MaMH";
            this.MaMH.Width = 125;
            // 
            // TenMH
            // 
            this.TenMH.DataPropertyName = "TenMH";
            this.TenMH.HeaderText = "Tên môn học";
            this.TenMH.MinimumWidth = 6;
            this.TenMH.Name = "TenMH";
            this.TenMH.Width = 125;
            // 
            // HocKy
            // 
            this.HocKy.DataPropertyName = "HocKy";
            this.HocKy.HeaderText = "Học kỳ";
            this.HocKy.MinimumWidth = 6;
            this.HocKy.Name = "HocKy";
            this.HocKy.Width = 125;
            // 
            // SoTC
            // 
            this.SoTC.DataPropertyName = "SoTC";
            this.SoTC.HeaderText = "Số tín chỉ";
            this.SoTC.MinimumWidth = 6;
            this.SoTC.Name = "SoTC";
            this.SoTC.Width = 125;
            // 
            // grb_dsMonHoc
            // 
            this.grb_dsMonHoc.Controls.Add(this.dgv_dsMonHoc);
            this.grb_dsMonHoc.Location = new System.Drawing.Point(958, 209);
            this.grb_dsMonHoc.Name = "grb_dsMonHoc";
            this.grb_dsMonHoc.Size = new System.Drawing.Size(509, 236);
            this.grb_dsMonHoc.TabIndex = 21;
            this.grb_dsMonHoc.TabStop = false;
            this.grb_dsMonHoc.Text = "Thông tin môn học";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgv_LopHocPhan);
            this.groupBox2.Location = new System.Drawing.Point(207, 454);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(1263, 301);
            this.groupBox2.TabIndex = 25;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Danh sách lớp học phần";
            // 
            // dgv_LopHocPhan
            // 
            this.dgv_LopHocPhan.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_LopHocPhan.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.dgv_LopHocPhan.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_LopHocPhan.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaLopHP,
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3});
            this.dgv_LopHocPhan.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_LopHocPhan.Location = new System.Drawing.Point(3, 20);
            this.dgv_LopHocPhan.Name = "dgv_LopHocPhan";
            this.dgv_LopHocPhan.RowHeadersWidth = 51;
            this.dgv_LopHocPhan.RowTemplate.Height = 24;
            this.dgv_LopHocPhan.Size = new System.Drawing.Size(1257, 278);
            this.dgv_LopHocPhan.TabIndex = 2;
            this.dgv_LopHocPhan.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_LopHocPhan_CellContentClick);
            this.dgv_LopHocPhan.VisibleChanged += new System.EventHandler(this.dgv_LopHocPhan_VisibleChanged);
            // 
            // MaLopHP
            // 
            this.MaLopHP.DataPropertyName = "MaLopHP";
            this.MaLopHP.HeaderText = "Mã lớp học phần";
            this.MaLopHP.MinimumWidth = 6;
            this.MaLopHP.Name = "MaLopHP";
            this.MaLopHP.Width = 125;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "MaGV";
            this.dataGridViewTextBoxColumn1.HeaderText = "Giáo viên phụ trách";
            this.dataGridViewTextBoxColumn1.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.Width = 125;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "MaMH";
            this.dataGridViewTextBoxColumn2.HeaderText = "Môn học đăng ký";
            this.dataGridViewTextBoxColumn2.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.Width = 125;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "MaLop";
            this.dataGridViewTextBoxColumn3.HeaderText = "Lớp học";
            this.dataGridViewTextBoxColumn3.MinimumWidth = 6;
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.Width = 125;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.dgv_dsNganhHoc);
            this.groupBox4.Location = new System.Drawing.Point(961, 57);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(509, 149);
            this.groupBox4.TabIndex = 29;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Danh sách ngành học";
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
            this.dgv_dsNganhHoc.Size = new System.Drawing.Size(503, 126);
            this.dgv_dsNganhHoc.TabIndex = 0;
            this.dgv_dsNganhHoc.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsNganhHoc_CellContentClick_1);
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
            // frm_QLLopHocPhan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FloralWhite;
            this.ClientSize = new System.Drawing.Size(1504, 804);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.grb_dsGiaoVien);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.grb_dsMonHoc);
            this.Controls.Add(this.btnclear);
            this.Controls.Add(this.btnthoat);
            this.Controls.Add(this.btnxoa);
            this.Controls.Add(this.btnsua);
            this.Controls.Add(this.btnthem);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.grb_dsLop);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "frm_QLLopHocPhan";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = resources.GetString("$this.Text");
            this.Load += new System.EventHandler(this.frm_QLLopHocPhan_Load);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.grb_dsGiaoVien.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsGiaoVien)).EndInit();
            this.grb_dsLop.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsLop)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsMonHoc)).EndInit();
            this.grb_dsMonHoc.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_LopHocPhan)).EndInit();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNganhHoc)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnthoat;
        private System.Windows.Forms.Button btnxoa;
        private System.Windows.Forms.Button btnsua;
        private System.Windows.Forms.Button btnthem;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnclear;
        private System.Windows.Forms.Button btntimkiem;
        private System.Windows.Forms.TextBox txttukhoa;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cbotimkiem;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtmaLop;
        private System.Windows.Forms.Button btnfileExcel;
        private System.Windows.Forms.GroupBox grb_dsGiaoVien;
        private System.Windows.Forms.DataGridView dgv_dsGiaoVien;
        private System.Windows.Forms.GroupBox grb_dsLop;
        private System.Windows.Forms.DataGridView dgv_dsLop;
        private System.Windows.Forms.DataGridView dgv_dsMonHoc;
        private System.Windows.Forms.GroupBox grb_dsMonHoc;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.DataGridView dgv_dsNganhHoc;
        private System.Windows.Forms.DataGridView dgv_LopHocPhan;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaNganh;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaGV;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenGV;
        private System.Windows.Forms.DataGridViewTextBoxColumn Username;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Email;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoDT;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiaChi;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaLopHP;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaMH;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenMH;
        private System.Windows.Forms.DataGridViewTextBoxColumn HocKy;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoTC;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaLop;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenLop;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenKhoa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
    }
}