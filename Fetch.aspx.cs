using System;
using System.IO;
using System.Linq;
using System.Web;

namespace lol
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("RegisterLogin.aspx");
            }

            if (!IsPostBack)
            {
                ddlFileTypes.SelectedIndex = 0;
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

        protected void btnLoadFiles_Click(object sender, EventArgs e)
        {
            
            BindFiles(ddlFileTypes.SelectedValue);
        }

        protected void ddlFileTypes_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            BindFiles(ddlFileTypes.SelectedValue);
        }

        private void BindFiles(string fileFilter)
        {
            string username = Session["LoggedIn"].ToString();
            string folderPath = Path.Combine(Server.MapPath("~/Uploads"), username);

            if (Directory.Exists(folderPath))
            {
                var files = Directory.GetFiles(folderPath)
                    .Where(f => fileFilter.Split(';').Any(ext => f.EndsWith(ext.TrimStart('*'))))
                    .Select(f => new
                    {
                        FileName = Path.GetFileName(f),
                        FileType = Path.GetExtension(f),
                        FilePath = f
                    }).ToList();

                gvFiles.DataSource = files;
                gvFiles.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No files found for this user.');</script>");
            }
        }

        protected void gvFiles_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "OpenFile")
            {
                string filePath = e.CommandArgument.ToString();
                if (File.Exists(filePath))
                {
                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                    Response.TransmitFile(filePath);
                    Response.End();
                }
                else
                {
                    Response.Write("<script>alert('File not found.');</script>");
                }
            }
        }
    }
}