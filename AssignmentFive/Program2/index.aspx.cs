using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentFive.Program2
{
    public partial class index : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = Request.QueryString["uname"].ToString();
            string s = "SELECT * FROM UserReg WHERE username = '" + uname + "'";
            DataSet d1 = new DataSet();
            d1= db.exedataset(s);
            Label1.Text = Convert.ToString(d1.Tables[0].Rows[0]["Name"]);
            Label4.Text = Convert.ToString(d1.Tables[0].Rows[0]["Email"]);
            Label6.Text = Convert.ToString(d1.Tables[0].Rows[0]["Phone"]);
            Label8.Text = Convert.ToString(d1.Tables[0].Rows[0]["Gender"]);
            Label10.Text = Convert.ToString(d1.Tables[0].Rows[0]["dob"]);
        }
    }
}