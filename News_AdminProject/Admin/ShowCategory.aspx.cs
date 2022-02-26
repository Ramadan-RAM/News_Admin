using News_AdminProject.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_AdminProject.Admin
{
    public partial class ShowCategory : System.Web.UI.Page
    {
        Category _Cat = new Category();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                GetData();
            }
        }

        protected void GetData()
        {
            GrdCategory.DataSource = _Cat.SelectAllCategory();
            GrdCategory.DataBind();
        }

        protected void GrdCategory_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GrdCategory.EditIndex = e.NewEditIndex;
            GetData();
        }

        protected void GrdCategory_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblCatID = (Label)GrdCategory.Rows[e.RowIndex].Cells[0].FindControl("lblCatID");
            TextBox TxtCatName = (TextBox)GrdCategory.Rows[e.RowIndex].Cells[1].FindControl("txtCategoryName");
            _Cat.UpdateCategory(int.Parse(lblCatID.Text), TxtCatName.Text);
            GrdCategory.EditIndex = -1;
            GetData();
        }

        protected void GrdCategory_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GrdCategory.EditIndex = -1;
            GetData();
        }

        protected void GrdCategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblCatID = (Label)GrdCategory.Rows[e.RowIndex].Cells[0].FindControl("lblCatID");
            
            _Cat.DeleteCategory(int.Parse(lblCatID.Text));
             GetData();
        }
    }
}