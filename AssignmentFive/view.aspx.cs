using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentFive
{
    public partial class view : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            string s = "SELECT * FROM Employee WHERE EmployeeId = '" + id + "'";
            DataSet d1 = new DataSet();
            d1 = db.exedataset(s);
            Label1.Text = Convert.ToString(d1.Tables[0].Rows[0]["Name"]);

        }
    }
}