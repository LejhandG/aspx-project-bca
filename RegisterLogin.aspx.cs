using System;
using System.Data.SqlClient;

public partial class RegisterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoggedIn"] != null)
        {
            lnkAuth.Text = "Logout";
            loginForm.Visible = false;
            registerForm.Visible = false;
        }
    }

    protected void btnLoginTab_Click(object sender, EventArgs e)
    {
        loginForm.Visible = true;
        registerForm.Visible = false;
        btnLoginTab.CssClass = "flex-1 font-space py-2 rounded-lg bg-[#57a4ff] text-black";
        btnRegisterTab.CssClass = "flex-1 font-space py-2 rounded-lg bg-[#f0f0f0] text-gray-500";
    }

    protected void btnRegisterTab_Click(object sender, EventArgs e)
    {
        loginForm.Visible = false;
        registerForm.Visible = true;
        btnRegisterTab.CssClass = "flex-1 font-space py-2 rounded-lg bg-[#57a4ff] text-black";
        btnLoginTab.CssClass = "flex-1 font-space py-2 rounded-lg bg-[#f0f0f0] text-gray-500";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-LS1B1UB8\SQLEXPRESS;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate=True"))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(
                "SELECT COUNT(*) FROM login WHERE username=@user AND password=@pass", con);
            cmd.Parameters.AddWithValue("@user", txtEmail.Text);
            cmd.Parameters.AddWithValue("@pass", txtPassword.Text);

            int count = (int)cmd.ExecuteScalar();

            if (count > 0)
            {
                Session["LoggedIn"] = txtEmail.Text;
                Response.Write("<script>alert('Login successful!')</script>");
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials')</script>");
            }
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-LS1B1UB8\SQLEXPRESS;Initial Catalog=asplogin;Integrated Security=True;TrustServerCertificate=True"))
        {
            con.Open();
            SqlCommand checkCmd = new SqlCommand(
                "SELECT COUNT(*) FROM login WHERE username=@user", con);
            checkCmd.Parameters.AddWithValue("@user", txtRegEmail.Text);
            int exists = (int)checkCmd.ExecuteScalar();

            if (exists > 0)
            {
                Response.Write("<script>alert('User already exists')</script>");
                return;
            }

            SqlCommand insertCmd = new SqlCommand(
                "INSERT INTO login (username, password) VALUES (@user, @pass)", con);
            insertCmd.Parameters.AddWithValue("@user", txtRegEmail.Text);
            insertCmd.Parameters.AddWithValue("@pass", txtRegPassword.Text);
            insertCmd.ExecuteNonQuery();

            Session["LoggedIn"] = txtRegEmail.Text;
            Response.Write("<script>alert('Registration successful!')</script>");
            Response.Redirect("Home.aspx");
        }
    }

    protected void lnkAuth_Click(object sender, EventArgs e)
    {
        if (Session["LoggedIn"] != null)
        {
            Session.Clear();
            Response.Redirect("RegisterLogin.aspx");
        }
    }
}
