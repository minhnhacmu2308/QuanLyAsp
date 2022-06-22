using QuanLyAsp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyAsp.Daos
{
    public class tblUserDao
    {
        QuanLyDbContext myDb = new QuanLyDbContext();
        public List<tblUser> GetAll()
        {
            return myDb.tblUsers.ToList();
        }
    }
}