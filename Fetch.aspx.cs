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
            if (!IsPostBack)
            {

                ddlFileTypes.SelectedIndex = 0;
            }
        }

        protected void btnLoadFiles_Click(object sender, EventArgs e)
        {
            string folderPath = @"C:\Users\bdhru\source\repos\File Hosting\File Hosting\Uploads";
            if (Directory.Exists(folderPath))
            {
                BindFiles(folderPath, ddlFileTypes.SelectedValue);
            }
            else
            {
                Response.Write("<script>alert('Invalid folder path.');</script>");
            }
        }

        protected void ddlFileTypes_SelectedIndexChanged(object sender, EventArgs e)
        {
            string folderPath = @"C:\Users\bdhru\source\repos\File Hosting\File Hosting\Uploads";
            if (Directory.Exists(folderPath))
            {
                BindFiles(folderPath, ddlFileTypes.SelectedValue);
            }
        }

        private void BindFiles(string folderPath, string fileFilter)
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