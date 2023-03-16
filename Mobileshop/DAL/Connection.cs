using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mobileshop.DAL
{
    public static class Connection
    {
        public static string GetConnectionString()
        {
            string conStr = "Data Source=.;Initial Catalog=MobileShopDB_Ev07;Integrated Security=True";
            return conStr;
        }
    }
}