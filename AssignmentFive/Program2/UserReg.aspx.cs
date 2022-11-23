using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentFive.Program2
{
    public partial class UserReg : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "";
            if (RadioButton1.Checked)
            {
                s = "Male";
            }
            else if (RadioButton2.Checked)
            {
                s = "Female";
            }
            else
            {
                s = "Others";
            }
            string sql = "insert into UserLogin values('" + TextBox6.Text + "','" + TextBox7.Text + "','User','Not Confirmed')";
            int i = db.exenonquery(sql);
            sql = "insert into UserReg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + s + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            i = db.exenonquery(sql);
            if (i == 1)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("Failed");
            }
        }
    }
}