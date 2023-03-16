using Mobileshop.Models2;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mobileshop
{
    public partial class frmProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable ListView1_GetData()
        {
            MobileShopDB_Ev07Entities db = new MobileShopDB_Ev07Entities();
            return db.mobileInfoes.AsQueryable();
        }

        public void ListView1_InsertItem(mobileInfo m )
        {
            MobileShopDB_Ev07Entities db = new MobileShopDB_Ev07Entities();
            db.mobileInfoes.Add(m);
            db.SaveChanges();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_UpdateItem(mobileInfo m)
        {
            MobileShopDB_Ev07Entities db = new MobileShopDB_Ev07Entities();
            db.Entry(m).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_DeleteItem(int id)
        {
            MobileShopDB_Ev07Entities db = new MobileShopDB_Ev07Entities();
            mobileInfo m = new mobileInfo { mobile_ID = id };
            db.Entry(m).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            FileUpload fu = (FileUpload)ListView1.InsertItem.FindControl("fuPicture");
            if (fu.HasFile)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.Values["mobile_Picture"] = fileName;
            }
        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            FileUpload fu = (FileUpload)ListView1.EditItem.FindControl("fuPicture");
            if (fu.HasFile)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.NewValues["mobile_Picture"] = fileName;
            }
        }
        public IQueryable<mobileType> ddlGetType()
        {
            MobileShopDB_Ev07Entities db = new MobileShopDB_Ev07Entities();
            return db.mobileTypes.AsQueryable();
        }

        public IQueryable<brand> ddlGetBrand()
        {
            MobileShopDB_Ev07Entities db = new MobileShopDB_Ev07Entities();
            return db.brands.AsQueryable();
        }
    }
}