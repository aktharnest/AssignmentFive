using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentFive
{
    public partial class Program1 : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = db.exedataset("select * from Employee");
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex; //set edit index
            GridView1.DataSource = db.exedataset("select * from Employee"); //taking val from tbl
            GridView1.DataBind();//bind to gridview
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = db.exedataset("select * from Employee");
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int Emp_Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox txtname = new TextBox();
            txtname = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];
            
            TextBox txtemail = new TextBox();
            txtemail = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];

            TextBox txtphone = new TextBox();
            txtphone = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            TextBox txtage = new TextBox();
            txtage = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];

            db.exenonquery("update Employee set Name='" + txtname.Text + "',Email='" + txtemail.Text + "',Phone='" + txtphone.Text + "',Age='"+txtage.Text+"' where EmployeeId='" + Emp_Id + "'");

            GridView1.EditIndex = -1;
            GridView1.DataSource = db.exedataset("select * from Employee");
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string Emp_Id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from Employee where EmployeeId='" + Emp_Id + "'");
            GridView1.DataSource = db.exedataset("select * from Employee");
            GridView1.DataBind();
        }
    }

}