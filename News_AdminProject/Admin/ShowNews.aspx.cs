using News_AdminProject.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_AdminProject.Admin
{
    public partial class ShowNews : System.Web.UI.Page
    {
        News _News = new News();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                GetNews();
            }
        }

        protected void GetNews()
        {
            GrdNews.DataSource = _News.SelectAllNews();
            GrdNews.DataBind();
        }

        protected void DlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            GrdNews.DataSource = _News.SelectAllNewsByCatID(int.Parse(DlCategory.SelectedValue));
            GrdNews.DataBind();
        }

        protected void GrdNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblDelete = (Label)GrdNews.Rows[e.RowIndex].Cells[0].FindControl("Label1");
            _News.DeleteNews(int.Parse(lblDelete.Text));
            GetNews();
        }
    }
}