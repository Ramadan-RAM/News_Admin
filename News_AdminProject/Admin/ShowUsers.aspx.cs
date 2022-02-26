using News_AdminProject.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_AdminProject.Admin
{
    public partial class ShowUsers : System.Web.UI.Page
    {
        Users _Users = new Users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetUsers();
            }
        }
        protected void GetUsers()
        {
            GrdUsers.DataSource = _Users.SelectAllUsers();
            GrdUsers.DataBind();
            
        }

        protected void GrdUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GrdUsers.EditIndex = e.NewEditIndex;
            GetUsers();
        }

        protected void GrdUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label UserID = (Label)GrdUsers.Rows[e.RowIndex].Cells[0].FindControl("lblUserId");
            TextBox txtUserName  = (TextBox)GrdUsers.Rows[e.RowIndex].Cells[1].FindControl("txtUserName");
            TextBox txtPassword = (TextBox)GrdUsers.Rows[e.RowIndex].Cells[2].FindControl("txtPassword");
            TextBox txtEmail = (TextBox)GrdUsers.Rows[e.RowIndex].Cells[3].FindControl("txtEmail");

            _Users.UpdateUsers(int.Parse(UserID.Text), txtUserName.Text, txtPassword.Text, txtEmail.Text);

            GetUsers();
        }

        protected void GrdUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label UserID = (Label)GrdUsers.Rows[e.RowIndex].Cells[0].FindControl("lblUserId");

            _Users.DeleteUser(int.Parse(UserID.Text));

            GrdUsers.EditIndex = -1;
            GetUsers();

        }

        protected void GrdUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GrdUsers.EditIndex = -1;
            GetUsers();
        }
    }
}