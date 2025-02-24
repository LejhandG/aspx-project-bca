using System;
using System.IO;
using System.Web.UI.WebControls;

namespace yes
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string uploadPath = Server.MapPath("Uploads/");
                if (!Directory.Exists(uploadPath))
                    Directory.CreateDirectory(uploadPath);

                string filePath = Path.Combine(uploadPath, FileUpload1.FileName);
                FileUpload1.SaveAs(filePath);

                StatusLabel.Text = "Upload successful! " + filePath;
            }
            else
            {
                StatusLabel.Text = "Please select a file.";
            }
        }
    }
}