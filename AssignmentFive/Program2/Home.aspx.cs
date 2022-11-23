using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentFive.Program2
{
    public partial class Home : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("admin") && TextBox2.Text.Equals("admin"))
            {
                Response.Redirect(String.Format("admin.aspx"));
            }
            else
            {
                string sql = "select * from UserLogin where Username='" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "' and Status = 'Confirmed'";
                int i = db.exereader(sql);
                if (i == 1)
                {

                    Response.Redirect(String.Format("index.aspx?uname={0}", TextBox1.Text));
                }
                else
                {
                    Response.Write("Failed");
                }
            }
        }
    }
}