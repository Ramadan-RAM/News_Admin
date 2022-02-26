using News_AdminProject.Admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace News_AdminProject.Admin
{
    public partial class AddNews : System.Web.UI.Page
    {
        News _News = new News();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidCat_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (int.Parse(DlCategory.SelectedValue) == 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void Btn_Save_Click(object sender, EventArgs e)
        {
            string FileName = "";

            if (Path.GetExtension(FileUpload1.FileName.ToLower()) == ".jpg" || Path.GetExtension(FileUpload1.FileName.ToLower()) == ".png")
            {
                FileName = FileUpload1.FileName;
            }
            else
            {
                lblImageState.Visible = true;
                return;
            }

            if(Page.IsValid)
            {
                _News.InsertNews(txtTitle.Text, txtSummury.Text, txtDetails.Text, FileName, 
                    int.Parse(DlCategory.SelectedValue));
            }

            DlCategory.SelectedIndex = 0;
            txtTitle.Text = "";
            txtSummury.Text = "";
            txtDetails.Text = "";
            _ = FileUpload1.FileName.ToLower() == "";

        }
    }
}