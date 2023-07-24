using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Nhom2_QuanLySinhVien
{
    class DBConnection
    {
        public static SqlConnection getDBConnection()
        {
            string connString = @"Data Source=THUY-NHUONG\THUYNHUONG;Initial Catalog=QuanLySinhVien;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }
    }
}
