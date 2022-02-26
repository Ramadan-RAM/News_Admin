using News_AdminProject.Admin.Models;
using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace News_AdminProject.Admin
{
    public partial class NewsDetails : System.Web.UI.Page
    {
        News _News = new News();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlDataReader dr;

                dr = _News.SelectNewsByNewsID(int.Parse(Request.QueryString["NewsID"].ToString()));

                lblNewsId.Text = dr[0].ToString();
                txtTitle.Text = dr[1].ToString();
                txtSummury.Text = dr[2].ToString();
                txtDetails.Text = dr[3].ToString();
                Image1.ImageUrl = "~/Images/" + dr[4].ToString();
                txtImageName.Text =  dr[4].ToString();

                dr.Close();
            }
        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            if (txtImageName.Text == "")
            {
                lblImageState.Visible = true;
                return;
            }
           
                _News.UpdateNews(txtTitle.Text, txtSummury.Text, txtDetails.Text, txtImageName.Text,
                    int.Parse(lblNewsId.Text));

            txtTitle.Text = "";
            txtSummury.Text = "";
            txtDetails.Text = "";
            txtImageName.Text = "";
            
        }
    }
}