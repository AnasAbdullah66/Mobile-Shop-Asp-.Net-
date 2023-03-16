using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mobileshop
{
    public partial class frmEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            
        }

        protected void DetailsView1_ItemInserting1(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fu = DetailsView1.FindControl("fuPicture") as FileUpload;
            if (fu.HasFile)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.Values["Employee_Picture"] = fileName;
            }
        }

        protected void DetailsView1_ItemUpdating1(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload fu = DetailsView1.FindControl("fuPicture") as FileUpload;
            if (fu != null)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.NewValues["Employee_Picture"] = fileName;
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //FileUpload fu = GridView1.Rows[e.RowIndex].FindControl("fuPicture") as FileUpload;
            //if (fu != null)
            //{
            //    string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
            //    fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
            //    e.NewValues["Employee_Picture"] = fileName;
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/frmEmployeeList.aspx");
        }
    }
}