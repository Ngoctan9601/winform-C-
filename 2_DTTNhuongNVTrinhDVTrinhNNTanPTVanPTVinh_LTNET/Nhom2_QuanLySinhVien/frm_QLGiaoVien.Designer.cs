
namespace Nhom2_QuanLySinhVien
{
    partial class frm_QLGiaoVien
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_QLGiaoVien));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.rbtnam = new System.Windows.Forms.RadioButton();
            this.rbtnu = new System.Windows.Forms.RadioButton();
            this.dtpngaysinh = new System.Windows.Forms.DateTimePicker();
            this.btnadduser = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.txtusser = new System.Windows.Forms.TextBox();
            this.txtdiachi = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtsodt = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtemail = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txttenGV = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtmaGV = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnexcel = new System.Windows.Forms.Button();
            this.cbotimkiem = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txttukhoa = new System.Windows.Forms.TextBox();
            this.btnclear = new System.Windows.Forms.Button();
            this.btntimkiem = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.dgv_dsGiaoVien = new System.Windows.Forms.DataGridView();
            this.MaGV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenGV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgaySinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaNganh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioiTinh = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoDT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiaChi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Username = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnthem = new System.Windows.Forms.Button();
            this.btnsua = new System.Windows.Forms.Button();
            this.btnthoat = new System.Windows.Forms.Button();
            this.btnxoa = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.dgv_dsNganhHoc = new System.Windows.Forms.DataGridView();
            this.btnsave = new System.Windows.Forms.Button();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsGiaoVien)).BeginInit();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNganhHoc)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1528, 55);
            this.panel1.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.label1.Location = new System.Drawing.Point(542, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(424, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "QUẢN LÝ THÔNG TIN GIÁO VIÊN";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.Honeydew;
            this.groupBox1.Controls.Add(this.rbtnam);
            this.groupBox1.Controls.Add(this.rbtnu);
            this.groupBox1.Controls.Add(this.dtpngaysinh);
            this.groupBox1.Controls.Add(this.btnadduser);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.txtusser);
            this.groupBox1.Controls.Add(this.txtdiachi);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.txtsodt);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.txtemail);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txttenGV);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtmaGV);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Location = new System.Drawing.Point(16, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(569, 413);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin chi tiết";
            // 
            // rbtnam
            // 
            this.rbtnam.AutoSize = true;
            this.rbtnam.Location = new System.Drawing.Point(299, 177);
            this.rbtnam.Name = "rbtnam";
            this.rbtnam.Size = new System.Drawing.Size(64, 22);
            this.rbtnam.TabIndex = 5;
            this.rbtnam.TabStop = true;
            this.rbtnam.Text = "Nam";
            this.rbtnam.UseVisualStyleBackColor = true;
            // 
            // rbtnu
            // 
            this.rbtnu.AutoSize = true;
            this.rbtnu.Location = new System.Drawing.Point(128, 172);
            this.rbtnu.Name = "rbtnu";
            this.rbtnu.Size = new System.Drawing.Size(50, 22);
            this.rbtnu.TabIndex = 5;
            this.rbtnu.TabStop = true;
            this.rbtnu.Text = "Nữ";
            this.rbtnu.UseVisualStyleBackColor = true;
            // 
            // dtpngaysinh
            // 
            this.dtpngaysinh.Location = new System.Drawing.Point(128, 132);
            this.dtpngaysinh.Name = "dtpngaysinh";
            this.dtpngaysinh.Size = new System.Drawing.Size(411, 24);
            this.dtpngaysinh.TabIndex = 4;
            // 
            // btnadduser
            // 
            this.btnadduser.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.btnadduser.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.btnadduser.Image = ((System.Drawing.Image)(resources.GetObject("btnadduser.Image")));
            this.btnadduser.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnadduser.Location = new System.Drawing.Point(421, 358);
            this.btnadduser.Name = "btnadduser";
            this.btnadduser.Size = new System.Drawing.Size(118, 36);
            this.btnadduser.TabIndex = 3;
            this.btnadduser.Text = "Add user";
            this.btnadduser.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnadduser.UseVisualStyleBackColor = false;
            this.btnadduser.Click += new System.EventHandler(this.btnadduser_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(22, 371);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(85, 18);
            this.label10.TabIndex = 0;
            this.label10.Text = "Username";
            // 
            // txtusser
            // 
            this.txtusser.Location = new System.Drawing.Point(128, 358);
            this.txtusser.Multiline = true;
            this.txtusser.Name = "txtusser";
            this.txtusser.Size = new System.Drawing.Size(271, 34);
            this.txtusser.TabIndex = 1;
            // 
            // txtdiachi
            // 
            this.txtdiachi.Location = new System.Drawing.Point(128, 307);
            this.txtdiachi.Multiline = true;
            this.txtdiachi.Name = "txtdiachi";
            this.txtdiachi.Size = new System.Drawing.Size(411, 34);
            this.txtdiachi.TabIndex = 1;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(22, 315);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(70, 18);
            this.label9.TabIndex = 0;
            this.label9.Text = "Địa chỉ: ";
            // 
            // txtsodt
            // 
            this.txtsodt.Location = new System.Drawing.Point(128, 259);
            this.txtsodt.Multiline = true;
            this.txtsodt.Name = "txtsodt";
            this.txtsodt.Size = new System.Drawing.Size(411, 34);
            this.txtsodt.TabIndex = 1;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(22, 267);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(61, 18);
            this.label8.TabIndex = 0;
            this.label8.Text = "Số ĐT:";
            // 
            // txtemail
            // 
            this.txtemail.Location = new System.Drawing.Point(128, 211);
            this.txtemail.Multiline = true;
            this.txtemail.Name = "txtemail";
            this.txtemail.Size = new System.Drawing.Size(411, 34);
            this.txtemail.TabIndex = 1;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(22, 219);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(55, 18);
            this.label7.TabIndex = 0;
            this.label7.Text = "Email:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 174);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(81, 18);
            this.label6.TabIndex = 0;
            this.label6.Text = "Giới tính: ";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(22, 138);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(87, 18);
            this.label5.TabIndex = 0;
            this.label5.Text = "Ngày sinh:";
            // 
            // txttenGV
            // 
            this.txttenGV.Location = new System.Drawing.Point(128, 81);
            this.txttenGV.Multiline = true;
            this.txttenGV.Name = "txttenGV";
            this.txttenGV.Size = new System.Drawing.Size(411, 34);
            this.txttenGV.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(22, 89);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(74, 18);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên GV: ";
            // 
            // txtmaGV
            // 
            this.txtmaGV.Enabled = false;
            this.txtmaGV.Location = new System.Drawing.Point(128, 33);
            this.txtmaGV.Multiline = true;
            this.txtmaGV.Name = "txtmaGV";
            this.txtmaGV.ReadOnly = true;
            this.txtmaGV.Size = new System.Drawing.Size(411, 34);
            this.txtmaGV.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 18);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã GV: ";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.Linen;
            this.groupBox2.Controls.Add(this.btnexcel);
            this.groupBox2.Controls.Add(this.cbotimkiem);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.txttukhoa);
            this.groupBox2.Controls.Add(this.btnclear);
            this.groupBox2.Controls.Add(this.btntimkiem);
            this.groupBox2.Controls.Add(this.label12);
            this.groupBox2.Location = new System.Drawing.Point(591, 56);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(921, 112);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Tìm kiếm";
            // 
            // btnexcel
            // 
            this.btnexcel.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnexcel.ForeColor = System.Drawing.Color.Yellow;
            this.btnexcel.Image = ((System.Drawing.Image)(resources.GetObject("btnexcel.Image")));
            this.btnexcel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnexcel.Location = new System.Drawing.Point(250, 62);
            this.btnexcel.Name = "btnexcel";
            this.btnexcel.Size = new System.Drawing.Size(99, 36);
            this.btnexcel.TabIndex = 4;
            this.btnexcel.Text = "Excel";
            this.btnexcel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnexcel.UseVisualStyleBackColor = false;
            this.btnexcel.Click += new System.EventHandler(this.btnexcel_Click);
            // 
            // cbotimkiem
            // 
            this.cbotimkiem.FormattingEnabled = true;
            this.cbotimkiem.Items.AddRange(new object[] {
            "MaGV",
            "TenGV"});
            this.cbotimkiem.Location = new System.Drawing.Point(182, 24);
            this.cbotimkiem.Name = "cbotimkiem";
            this.cbotimkiem.Size = new System.Drawing.Size(255, 26);
            this.cbotimkiem.TabIndex = 2;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(24, 29);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(125, 18);
            this.label11.TabIndex = 0;
            this.label11.Text = "Tìm kiếm theo: ";
            // 
            // txttukhoa
            // 
            this.txttukhoa.Location = new System.Drawing.Point(628, 24);
            this.txttukhoa.Multiline = true;
            this.txttukhoa.Name = "txttukhoa";
            this.txttukhoa.Size = new System.Drawing.Size(242, 26);
            this.txttukhoa.TabIndex = 1;
            // 
            // btnclear
            // 
            this.btnclear.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btnclear.ForeColor = System.Drawing.Color.Yellow;
            this.btnclear.Image = ((System.Drawing.Image)(resources.GetObject("btnclear.Image")));
            this.btnclear.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnclear.Location = new System.Drawing.Point(770, 62);
            this.btnclear.Name = "btnclear";
            this.btnclear.Size = new System.Drawing.Size(100, 36);
            this.btnclear.TabIndex = 3;
            this.btnclear.Text = "Clear";
            this.btnclear.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnclear.UseVisualStyleBackColor = false;
            this.btnclear.Click += new System.EventHandler(this.btnclear_Click);
            // 
            // btntimkiem
            // 
            this.btntimkiem.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.btntimkiem.ForeColor = System.Drawing.Color.Yellow;
            this.btntimkiem.Image = ((System.Drawing.Image)(resources.GetObject("btntimkiem.Image")));
            this.btntimkiem.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btntimkiem.Location = new System.Drawing.Point(575, 62);
            this.btntimkiem.Name = "btntimkiem";
            this.btntimkiem.Size = new System.Drawing.Size(100, 36);
            this.btntimkiem.TabIndex = 3;
            this.btntimkiem.Text = "Find ";
            this.btntimkiem.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btntimkiem.UseVisualStyleBackColor = false;
            this.btntimkiem.Click += new System.EventHandler(this.btntimkiem_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(511, 29);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(74, 18);
            this.label12.TabIndex = 0;
            this.label12.Text = "Từ khóa:";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.dgv_dsGiaoVien);
            this.groupBox3.Location = new System.Drawing.Point(16, 475);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(1496, 300);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Danh sách giáo viên";
            // 
            // dgv_dsGiaoVien
            // 
            this.dgv_dsGiaoVien.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsGiaoVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsGiaoVien.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaGV,
            this.TenGV,
            this.NgaySinh,
            this.MaNganh,
            this.GioiTinh,
            this.Email,
            this.SoDT,
            this.DiaChi,
            this.Username});
            this.dgv_dsGiaoVien.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsGiaoVien.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsGiaoVien.Name = "dgv_dsGiaoVien";
            this.dgv_dsGiaoVien.RowHeadersWidth = 51;
            this.dgv_dsGiaoVien.RowTemplate.Height = 24;
            this.dgv_dsGiaoVien.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgv_dsGiaoVien.Size = new System.Drawing.Size(1490, 277);
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
            // NgaySinh
            // 
            this.NgaySinh.DataPropertyName = "NgaySinh";
            this.NgaySinh.HeaderText = "Ngày sinh";
            this.NgaySinh.MinimumWidth = 6;
            this.NgaySinh.Name = "NgaySinh";
            this.NgaySinh.Width = 125;
            // 
            // MaNganh
            // 
            this.MaNganh.DataPropertyName = "MaNganh";
            this.MaNganh.HeaderText = "Ngành học";
            this.MaNganh.MinimumWidth = 6;
            this.MaNganh.Name = "MaNganh";
            this.MaNganh.Width = 125;
            // 
            // GioiTinh
            // 
            this.GioiTinh.DataPropertyName = "GioiTinh";
            this.GioiTinh.HeaderText = "Giới tính";
            this.GioiTinh.MinimumWidth = 6;
            this.GioiTinh.Name = "GioiTinh";
            this.GioiTinh.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.GioiTinh.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.GioiTinh.Width = 125;
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
            // Username
            // 
            this.Username.DataPropertyName = "Username";
            this.Username.HeaderText = "Username";
            this.Username.MinimumWidth = 6;
            this.Username.Name = "Username";
            this.Username.Width = 125;
            // 
            // btnthem
            // 
            this.btnthem.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnthem.ForeColor = System.Drawing.Color.White;
            this.btnthem.Image = ((System.Drawing.Image)(resources.GetObject("btnthem.Image")));
            this.btnthem.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnthem.Location = new System.Drawing.Point(610, 419);
            this.btnthem.Name = "btnthem";
            this.btnthem.Size = new System.Drawing.Size(111, 36);
            this.btnthem.TabIndex = 3;
            this.btnthem.Text = "Insert";
            this.btnthem.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnthem.UseVisualStyleBackColor = false;
            this.btnthem.Click += new System.EventHandler(this.btnthem_Click);
            // 
            // btnsua
            // 
            this.btnsua.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnsua.ForeColor = System.Drawing.Color.White;
            this.btnsua.Image = ((System.Drawing.Image)(resources.GetObject("btnsua.Image")));
            this.btnsua.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnsua.Location = new System.Drawing.Point(801, 419);
            this.btnsua.Name = "btnsua";
            this.btnsua.Size = new System.Drawing.Size(111, 36);
            this.btnsua.TabIndex = 3;
            this.btnsua.Text = "Update";
            this.btnsua.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnsua.UseVisualStyleBackColor = false;
            this.btnsua.Click += new System.EventHandler(this.btnsua_Click);
            // 
            // btnthoat
            // 
            this.btnthoat.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnthoat.ForeColor = System.Drawing.Color.White;
            this.btnthoat.Image = ((System.Drawing.Image)(resources.GetObject("btnthoat.Image")));
            this.btnthoat.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnthoat.Location = new System.Drawing.Point(1397, 419);
            this.btnthoat.Name = "btnthoat";
            this.btnthoat.Size = new System.Drawing.Size(111, 36);
            this.btnthoat.TabIndex = 3;
            this.btnthoat.Text = "Exit";
            this.btnthoat.UseVisualStyleBackColor = false;
            this.btnthoat.Click += new System.EventHandler(this.btnthoat_Click);
            // 
            // btnxoa
            // 
            this.btnxoa.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnxoa.ForeColor = System.Drawing.Color.White;
            this.btnxoa.Image = ((System.Drawing.Image)(resources.GetObject("btnxoa.Image")));
            this.btnxoa.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnxoa.Location = new System.Drawing.Point(1003, 419);
            this.btnxoa.Name = "btnxoa";
            this.btnxoa.Size = new System.Drawing.Size(111, 36);
            this.btnxoa.TabIndex = 3;
            this.btnxoa.Text = "Delete";
            this.btnxoa.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnxoa.UseVisualStyleBackColor = false;
            this.btnxoa.Click += new System.EventHandler(this.btnxoa_Click);
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.dgv_dsNganhHoc);
            this.groupBox4.Location = new System.Drawing.Point(591, 180);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(921, 217);
            this.groupBox4.TabIndex = 12;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Danh sách ngành học";
            // 
            // dgv_dsNganhHoc
            // 
            this.dgv_dsNganhHoc.AllowUserToAddRows = false;
            this.dgv_dsNganhHoc.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgv_dsNganhHoc.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_dsNganhHoc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgv_dsNganhHoc.Location = new System.Drawing.Point(3, 20);
            this.dgv_dsNganhHoc.Name = "dgv_dsNganhHoc";
            this.dgv_dsNganhHoc.RowHeadersWidth = 51;
            this.dgv_dsNganhHoc.RowTemplate.Height = 24;
            this.dgv_dsNganhHoc.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dgv_dsNganhHoc.Size = new System.Drawing.Size(915, 194);
            this.dgv_dsNganhHoc.TabIndex = 0;
            this.dgv_dsNganhHoc.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_dsNganhHoc_CellContentClick);
            this.dgv_dsNganhHoc.VisibleChanged += new System.EventHandler(this.dgv_dsNganhHoc_VisibleChanged);
            // 
            // btnsave
            // 
            this.btnsave.BackColor = System.Drawing.Color.DarkSlateGray;
            this.btnsave.ForeColor = System.Drawing.Color.White;
            this.btnsave.Image = ((System.Drawing.Image)(resources.GetObject("btnsave.Image")));
            this.btnsave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnsave.Location = new System.Drawing.Point(1204, 417);
            this.btnsave.Name = "btnsave";
            this.btnsave.Size = new System.Drawing.Size(97, 38);
            this.btnsave.TabIndex = 13;
            this.btnsave.Text = "Save";
            this.btnsave.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnsave.UseVisualStyleBackColor = false;
            this.btnsave.Click += new System.EventHandler(this.button1_Click);
            // 
            // frm_QLGiaoVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.GhostWhite;
            this.ClientSize = new System.Drawing.Size(1528, 810);
            this.Controls.Add(this.btnsave);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnxoa);
            this.Controls.Add(this.btnthoat);
            this.Controls.Add(this.btnsua);
            this.Controls.Add(this.btnthem);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MinimizeBox = false;
            this.Name = "frm_QLGiaoVien";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = " ";
            this.Load += new System.EventHandler(this.frm_QLGiaoVien_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsGiaoVien)).EndInit();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_dsNganhHoc)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.RadioButton rbtnam;
        private System.Windows.Forms.RadioButton rbtnu;
        private System.Windows.Forms.DateTimePicker dtpngaysinh;
        private System.Windows.Forms.Button btnadduser;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtdiachi;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtsodt;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtemail;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txttenGV;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtmaGV;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox cbotimkiem;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txttukhoa;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnclear;
        private System.Windows.Forms.Button btntimkiem;
        private System.Windows.Forms.DataGridView dgv_dsGiaoVien;
        private System.Windows.Forms.Button btnthem;
        private System.Windows.Forms.Button btnsua;
        private System.Windows.Forms.Button btnthoat;
        private System.Windows.Forms.Button btnxoa;
        private System.Windows.Forms.TextBox txtusser;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.DataGridView dgv_dsNganhHoc;
        private System.Windows.Forms.Button btnsave;
        private System.Windows.Forms.Button btnexcel;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaGV;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenGV;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgaySinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaNganh;
        private System.Windows.Forms.DataGridViewCheckBoxColumn GioiTinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn Email;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoDT;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiaChi;
        private System.Windows.Forms.DataGridViewTextBoxColumn Username;
    }
}