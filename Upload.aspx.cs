using System;
using System.IO;
using System.Web;
using System.Web.UI.WebControls;

namespace yes
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("RegisterLogin.aspx");
            }
            if (Session["LoggedIn"] != null)
            {
                lnkRegisterLogin.Visible = false;
                lnkLogout.Visible = true;
            }
        }
        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("RegisterLogin.aspx");
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null) return;
            string username = Session["LoggedIn"].ToString();
            string uploadPath = Path.Combine(Server.MapPath("~/Uploads"), username);
            Directory.CreateDirectory(uploadPath);
            string filePaths = "";

            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                string filePath = Path.Combine(uploadPath, Path.GetFileName(postedFile.FileName));
                postedFile.SaveAs(filePath);
                filePaths += filePath + "<br />";
            }

            
            StatusLabel.Text = "Upload successful! " + filePaths;

            
        }
    }
}