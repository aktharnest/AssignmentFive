using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentFive.Program2
{
    public partial class admin : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = db.exedataset("select * from UserReg,UserLogin Where UserReg.username=UserLogin.Username AND UserLogin.Status='Not Confirmed'");
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string s = "update UserLogin set Status='Confirmed' FROM UserReg WHERE UserReg.username=UserLogin.Username AND UserReg.Id='"+id+"';";
            int i = db.exenonquery(s);
            GridView1.DataSource = db.exedataset("select * from UserReg,UserLogin Where UserReg.username=UserLogin.Username AND UserLogin.Status='Not Confirmed'");
            GridView1.DataBind();
        }
    }
}