using News_AdminProject.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_AdminProject.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        Category _Cat = new Category();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                _Cat.InsertCategory(txtCategoryName.Text);
            }
            txtCategoryName.Text = "";
        }
    }
}