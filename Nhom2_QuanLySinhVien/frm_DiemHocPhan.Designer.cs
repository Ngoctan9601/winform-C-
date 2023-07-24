
namespace Nhom2_QuanLySinhVien
{
    partial class frm_DiemHocPhan
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_DiemHocPhan));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbmonhoc = new System.Windows.Forms.ComboBox();
            this.cblop = new System.Windows.Forms.ComboBox();
            this.txtgv = new System.Windows.Forms.TextBox();
            this.cbolopHP = new System.Windows.Forms.ComboBox();
            this.txtnganh = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.txtmh = new System.Windows.Forms.TextBox();
            this.txtdiemkt = new System.Windows.Forms.TextBox();
            this.txtdiemqt = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txttensv = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txt_dtbm = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.dgvdsDiem = new System.Windows.Forms.DataGridView();
            this.label12 = new System.Windows.Forms.Label();
            this.cboTimKiem = new System.Windows.Forms.ComboBox();
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.btnExcel = new System.Windows.Forms.Button();
            this.btnCapNhat = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.txtTK = new System.Windows.Forms.TextBox();
            this.btnLuu = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.label9 = new System.Windows.Forms.Label();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.btn_reload = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txttongSV = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.MaLopHP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MaSV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenSV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiemThiQT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiemThiKT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiemTK = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HocKy = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenGV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenNganh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvdsDiem)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1354, 52);
            this.panel1.TabIndex = 17;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(520, 12);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(344, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "QUẢN LÝ ĐIỂM SINH VIÊN";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbmonhoc);
            this.groupBox1.Controls.Add(this.cblop);
            this.groupBox1.Controls.Add(this.txtgv);
            this.groupBox1.Controls.Add(this.cbolopHP);
            this.groupBox1.Controls.Add(this.txtnganh);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(19, 55);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(636, 213);
            this.groupBox1.TabIndex = 18;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin lớp học phần";
            // 
            // cbmonhoc
            // 
            this.cbmonhoc.FormattingEnabled = true;
            this.cbmonhoc.Location = new System.Drawing.Point(208, 24);
            this.cbmonhoc.Name = "cbmonhoc";
            this.cbmonhoc.Size = new System.Drawing.Size(394, 26);
            this.cbmonhoc.TabIndex = 36;
            this.cbmonhoc.SelectedIndexChanged += new System.EventHandler(this.cbmonhoc_SelectedIndexChanged);
            // 
            // cblop
            // 
            this.cblop.FormattingEnabled = true;
            this.cblop.Location = new System.Drawing.Point(208, 101);
            this.cblop.Name = "cblop";
            this.cblop.Size = new System.Drawing.Size(394, 26);
            this.cblop.TabIndex = 35;
            this.cblop.SelectedIndexChanged += new System.EventHandler(this.cblop_SelectedIndexChanged);
            // 
            // txtgv
            // 
            this.txtgv.Location = new System.Drawing.Point(208, 176);
            this.txtgv.Name = "txtgv";
            this.txtgv.Size = new System.Drawing.Size(394, 24);
            this.txtgv.TabIndex = 5;
            // 
            // cbolopHP
            // 
            this.cbolopHP.FormattingEnabled = true;
            this.cbolopHP.Location = new System.Drawing.Point(208, 62);
            this.cbolopHP.Name = "cbolopHP";
            this.cbolopHP.Size = new System.Drawing.Size(394, 26);
            this.cbolopHP.TabIndex = 2;
            this.cbolopHP.SelectedIndexChanged += new System.EventHandler(this.cbolopHP_SelectedIndexChanged);
            // 
            // txtnganh
            // 
            this.txtnganh.Location = new System.Drawing.Point(208, 139);
            this.txtnganh.Name = "txtnganh";
            this.txtnganh.Size = new System.Drawing.Size(394, 24);
            this.txtnganh.TabIndex = 4;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(22, 29);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(79, 18);
            this.label5.TabIndex = 0;
            this.label5.Text = "Môn học:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 186);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(84, 18);
            this.label6.TabIndex = 0;
            this.label6.Text = "Giáo viên:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(30, 143);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(61, 18);
            this.label4.TabIndex = 0;
            this.label4.Text = "Ngành:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(115, 18);
            this.label2.TabIndex = 0;
            this.label2.Text = "Lớp học phần:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(30, 101);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(41, 18);
            this.label3.TabIndex = 0;
            this.label3.Text = "Lớp:";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(13, 137);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(84, 18);
            this.label13.TabIndex = 38;
            this.label13.Text = "Môn học :";
            // 
            // txtmh
            // 
            this.txtmh.Location = new System.Drawing.Point(149, 137);
            this.txtmh.Name = "txtmh";
            this.txtmh.Size = new System.Drawing.Size(428, 24);
            this.txtmh.TabIndex = 37;
            // 
            // txtdiemkt
            // 
            this.txtdiemkt.Location = new System.Drawing.Point(149, 100);
            this.txtdiemkt.Name = "txtdiemkt";
            this.txtdiemkt.Size = new System.Drawing.Size(299, 24);
            this.txtdiemkt.TabIndex = 34;
            // 
            // txtdiemqt
            // 
            this.txtdiemqt.Location = new System.Drawing.Point(149, 63);
            this.txtdiemqt.Name = "txtdiemqt";
            this.txtdiemqt.Size = new System.Drawing.Size(299, 24);
            this.txtdiemqt.TabIndex = 33;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(13, 107);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(78, 18);
            this.label11.TabIndex = 32;
            this.label11.Text = "Điểm KT:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(11, 70);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(80, 18);
            this.label10.TabIndex = 31;
            this.label10.Text = "Điểm QT:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(13, 33);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(67, 18);
            this.label8.TabIndex = 28;
            this.label8.Text = "Tên SV:";
            // 
            // txttensv
            // 
            this.txttensv.Location = new System.Drawing.Point(149, 26);
            this.txttensv.Name = "txttensv";
            this.txttensv.Size = new System.Drawing.Size(484, 24);
            this.txttensv.TabIndex = 27;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(701, 328);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(116, 18);
            this.label7.TabIndex = 26;
            this.label7.Text = "Điểm TB môn:";
            // 
            // txt_dtbm
            // 
            this.txt_dtbm.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_dtbm.Location = new System.Drawing.Point(852, 321);
            this.txt_dtbm.Name = "txt_dtbm";
            this.txt_dtbm.Size = new System.Drawing.Size(264, 24);
            this.txt_dtbm.TabIndex = 25;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.dgvdsDiem);
            this.groupBox4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox4.Location = new System.Drawing.Point(19, 391);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(1306, 262);
            this.groupBox4.TabIndex = 20;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Danh sách điểm";
            // 
            // dgvdsDiem
            // 
            this.dgvdsDiem.AllowUserToAddRows = false;
            this.dgvdsDiem.AllowUserToDeleteRows = false;
            this.dgvdsDiem.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            this.dgvdsDiem.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvdsDiem.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaLopHP,
            this.MaSV,
            this.TenSV,
            this.DiemThiQT,
            this.DiemThiKT,
            this.DiemTK,
            this.HocKy,
            this.TenGV,
            this.TenNganh});
            this.dgvdsDiem.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvdsDiem.Location = new System.Drawing.Point(3, 20);
            this.dgvdsDiem.Name = "dgvdsDiem";
            this.dgvdsDiem.RowHeadersWidth = 51;
            this.dgvdsDiem.RowTemplate.Height = 24;
            this.dgvdsDiem.Size = new System.Drawing.Size(1300, 239);
            this.dgvdsDiem.TabIndex = 0;
            this.dgvdsDiem.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvdsDiem_CellContentClick);
            this.dgvdsDiem.VisibleChanged += new System.EventHandler(this.dgvdsDiem_VisibleChanged);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(43, 29);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(125, 18);
            this.label12.TabIndex = 0;
            this.label12.Text = "Tìm kiếm theo :";
            // 
            // cboTimKiem
            // 
            this.cboTimKiem.FormattingEnabled = true;
            this.cboTimKiem.Items.AddRange(new object[] {
            "Mã Sinh Viên",
            "Tên Sinh Viên"});
            this.cboTimKiem.Location = new System.Drawing.Point(196, 22);
            this.cboTimKiem.Name = "cboTimKiem";
            this.cboTimKiem.Size = new System.Drawing.Size(239, 26);
            this.cboTimKiem.TabIndex = 21;
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.btnTimKiem.ForeColor = System.Drawing.Color.Black;
            this.btnTimKiem.Image = ((System.Drawing.Image)(resources.GetObject("btnTimKiem.Image")));
            this.btnTimKiem.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnTimKiem.Location = new System.Drawing.Point(469, 33);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(121, 36);
            this.btnTimKiem.TabIndex = 22;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.btnTimKiem.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnTimKiem.UseVisualStyleBackColor = false;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // btnExcel
            // 
            this.btnExcel.BackColor = System.Drawing.Color.Green;
            this.btnExcel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExcel.ForeColor = System.Drawing.Color.Yellow;
            this.btnExcel.Image = ((System.Drawing.Image)(resources.GetObject("btnExcel.Image")));
            this.btnExcel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExcel.Location = new System.Drawing.Point(1088, 254);
            this.btnExcel.Name = "btnExcel";
            this.btnExcel.Size = new System.Drawing.Size(182, 35);
            this.btnExcel.TabIndex = 22;
            this.btnExcel.Text = "Xuất bảng Điểm ";
            this.btnExcel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnExcel.UseVisualStyleBackColor = false;
            this.btnExcel.Click += new System.EventHandler(this.btnExcel_Click);
            // 
            // btnCapNhat
            // 
            this.btnCapNhat.BackColor = System.Drawing.Color.Green;
            this.btnCapNhat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCapNhat.ForeColor = System.Drawing.Color.Yellow;
            this.btnCapNhat.Image = ((System.Drawing.Image)(resources.GetObject("btnCapNhat.Image")));
            this.btnCapNhat.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCapNhat.Location = new System.Drawing.Point(724, 254);
            this.btnCapNhat.Name = "btnCapNhat";
            this.btnCapNhat.Size = new System.Drawing.Size(120, 35);
            this.btnCapNhat.TabIndex = 22;
            this.btnCapNhat.Text = "Cập nhật";
            this.btnCapNhat.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCapNhat.UseVisualStyleBackColor = false;
            this.btnCapNhat.Click += new System.EventHandler(this.btnCapNhat_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.BackColor = System.Drawing.Color.Green;
            this.btnThoat.ForeColor = System.Drawing.Color.Yellow;
            this.btnThoat.Location = new System.Drawing.Point(1183, 659);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(142, 35);
            this.btnThoat.TabIndex = 22;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = false;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // txtTK
            // 
            this.txtTK.Location = new System.Drawing.Point(196, 58);
            this.txtTK.Name = "txtTK";
            this.txtTK.Size = new System.Drawing.Size(239, 24);
            this.txtTK.TabIndex = 23;
            // 
            // btnLuu
            // 
            this.btnLuu.BackColor = System.Drawing.Color.Green;
            this.btnLuu.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLuu.ForeColor = System.Drawing.Color.Yellow;
            this.btnLuu.Image = ((System.Drawing.Image)(resources.GetObject("btnLuu.Image")));
            this.btnLuu.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLuu.Location = new System.Drawing.Point(909, 254);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(94, 35);
            this.btnLuu.TabIndex = 24;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnLuu.UseVisualStyleBackColor = false;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.label9);
            this.groupBox3.Controls.Add(this.label12);
            this.groupBox3.Controls.Add(this.cboTimKiem);
            this.groupBox3.Controls.Add(this.btnTimKiem);
            this.groupBox3.Controls.Add(this.txtTK);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(19, 274);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(636, 98);
            this.groupBox3.TabIndex = 32;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Sinh Viên Lớp Học Phần:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(43, 56);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(69, 18);
            this.label9.TabIndex = 24;
            this.label9.Text = "Từ khóa";
            // 
            // btn_reload
            // 
            this.btn_reload.Image = ((System.Drawing.Image)(resources.GetObject("btn_reload.Image")));
            this.btn_reload.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_reload.Location = new System.Drawing.Point(524, 72);
            this.btn_reload.Name = "btn_reload";
            this.btn_reload.Size = new System.Drawing.Size(109, 35);
            this.btn_reload.TabIndex = 34;
            this.btn_reload.Text = "Reload";
            this.btn_reload.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btn_reload.UseVisualStyleBackColor = true;
            this.btn_reload.Click += new System.EventHandler(this.btn_reload_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtdiemqt);
            this.groupBox2.Controls.Add(this.btn_reload);
            this.groupBox2.Controls.Add(this.label13);
            this.groupBox2.Controls.Add(this.txttensv);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.txtmh);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.txtdiemkt);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(673, 55);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(649, 176);
            this.groupBox2.TabIndex = 39;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Thông tin điểm sinh viên";
            // 
            // txttongSV
            // 
            this.txttongSV.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txttongSV.Location = new System.Drawing.Point(1090, 361);
            this.txttongSV.Name = "txttongSV";
            this.txttongSV.Size = new System.Drawing.Size(235, 24);
            this.txttongSV.TabIndex = 25;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(910, 368);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(146, 18);
            this.label14.TabIndex = 26;
            this.label14.Text = "Tổng số sinh viên:";
            // 
            // MaLopHP
            // 
            this.MaLopHP.DataPropertyName = "MaLopHP";
            this.MaLopHP.HeaderText = "Mã Lớp Học Phần";
            this.MaLopHP.MinimumWidth = 8;
            this.MaLopHP.Name = "MaLopHP";
            this.MaLopHP.Width = 150;
            // 
            // MaSV
            // 
            this.MaSV.DataPropertyName = "MaSV";
            this.MaSV.HeaderText = "Mã Sinh Viên";
            this.MaSV.MinimumWidth = 8;
            this.MaSV.Name = "MaSV";
            this.MaSV.Width = 150;
            // 
            // TenSV
            // 
            this.TenSV.DataPropertyName = "TenSV";
            this.TenSV.HeaderText = "Tên SV";
            this.TenSV.MinimumWidth = 8;
            this.TenSV.Name = "TenSV";
            this.TenSV.Width = 150;
            // 
            // DiemThiQT
            // 
            this.DiemThiQT.DataPropertyName = "DiemThiQT";
            this.DiemThiQT.HeaderText = "Điểm Quá Trình";
            this.DiemThiQT.MinimumWidth = 8;
            this.DiemThiQT.Name = "DiemThiQT";
            this.DiemThiQT.Width = 150;
            // 
            // DiemThiKT
            // 
            this.DiemThiKT.DataPropertyName = "DiemThiKT";
            this.DiemThiKT.HeaderText = "Điểm Kết Thúc";
            this.DiemThiKT.MinimumWidth = 8;
            this.DiemThiKT.Name = "DiemThiKT";
            this.DiemThiKT.Width = 150;
            // 
            // DiemTK
            // 
            this.DiemTK.DataPropertyName = "DiemTK";
            this.DiemTK.HeaderText = "Điểm TK Môn";
            this.DiemTK.MinimumWidth = 8;
            this.DiemTK.Name = "DiemTK";
            this.DiemTK.Width = 150;
            // 
            // HocKy
            // 
            this.HocKy.DataPropertyName = "HocKy";
            this.HocKy.HeaderText = "Học Kỳ";
            this.HocKy.MinimumWidth = 8;
            this.HocKy.Name = "HocKy";
            this.HocKy.Width = 150;
            // 
            // TenGV
            // 
            this.TenGV.DataPropertyName = "TenGV";
            this.TenGV.HeaderText = "Tên Giáo Viên";
            this.TenGV.MinimumWidth = 8;
            this.TenGV.Name = "TenGV";
            this.TenGV.Width = 150;
            // 
            // TenNganh
            // 
            this.TenNganh.DataPropertyName = "TenNganh";
            this.TenNganh.HeaderText = "Tên Ngành ";
            this.TenNganh.MinimumWidth = 8;
            this.TenNganh.Name = "TenNganh";
            this.TenNganh.Width = 150;
            // 
            // frm_DiemHocPhan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FloralWhite;
            this.ClientSize = new System.Drawing.Size(1354, 718);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnLuu);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnExcel);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btnCapNhat);
            this.Controls.Add(this.txttongSV);
            this.Controls.Add(this.txt_dtbm);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.5F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ForeColor = System.Drawing.Color.Black;
            this.Name = "frm_DiemHocPhan";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frm_QLDiemHocPhan";
            this.Load += new System.EventHandler(this.frm_DiemHocPhan_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvdsDiem)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbolopHP;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.DataGridView dgvdsDiem;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cboTimKiem;
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.Button btnExcel;
        private System.Windows.Forms.Button btnCapNhat;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.TextBox txtTK;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.TextBox txtgv;
        private System.Windows.Forms.TextBox txtnganh;
        private System.Windows.Forms.TextBox txt_dtbm;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txttensv;
        private System.Windows.Forms.TextBox txtdiemkt;
        private System.Windows.Forms.TextBox txtdiemqt;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.ComboBox cblop;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.ComboBox cbmonhoc;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtmh;
        private System.Windows.Forms.Button btn_reload;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txttongSV;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaLopHP;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaSV;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenSV;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiemThiQT;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiemThiKT;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiemTK;
        private System.Windows.Forms.DataGridViewTextBoxColumn HocKy;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenGV;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenNganh;
    }
}