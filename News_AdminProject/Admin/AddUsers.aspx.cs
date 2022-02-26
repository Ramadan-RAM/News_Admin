using News_AdminProject.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_AdminProject.Admin
{
    public partial class AddUsers : System.Web.UI.Page
    {
        Users _Users = new Users();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                _Users.InsertUser(txtUserName.Text, txtEmail.Text, txtPasswored.Text);
                
                txtUserName.Text = "";
                txtEmail.Text = "";
                txtPasswored.Text = "";
                txtConfirmPass.Text = "";

            }
        }
    }
}