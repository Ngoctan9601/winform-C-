using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nhom2_QuanLySinhVien
{
    class ChooseUsers
    {
        public static int getLeggee()
        {
            return leggee;
        }

        public static void setLeggee(int leggee)
        {
            ChooseUsers.leggee = leggee;
        }

        public ChooseUsers()
        {
        }
        private static int leggee;
    }
}
