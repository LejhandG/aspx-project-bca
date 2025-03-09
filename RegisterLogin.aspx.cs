using System;
using System.Data.SqlClient;

public partial class RegisterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoggedIn"] != null)
        {
            loginForm.Visible = false;
            registerForm.Visible = false;
            Response.Redirect("Home.aspx");
        }

    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("RegisterLogin.aspx");
    }

    protected bool ValidateUsername(string username)
{
    // Check length
    if (username.Length < 4 || username.Length > 20)
    {
        Response.Write("<script>alert('Username must be between 4 and 20 characters long.')</script>");
        return false;
    }

    // Check allowed characters (alphanumeric, underscore, and period)
    if (!System.Text.RegularExpressions.Regex.IsMatch(username, @"^[a-zA-Z0-9_.]+$"))
    {
        Response.Write("<script>alert('Username can only contain letters, numbers, underscores, and periods.')</script>");
        return false;
    }

    return true;
}

protected bool ValidatePassword(string password)
{
    // Check length
    if (password.Length < 8 || password.Length > 30)
    {
        Response.Write("<script>alert('Password must be between 8 and 30 characters long.')</script>");
        return false;
    }

    // Check complexity
    if (!System.Text.RegularExpressions.Regex.IsMatch(password, @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"))
    {
        Response.Write("<script>alert('Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character.')</script>");
        return false;
    }

    return true;
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
        using (SqlConnection con = new SqlConnection(@"workstation id=asplogin.mssql.somee.com;packet size=4096;user id=aspbca_SQLLogin_1;pwd=jbvhmefd82;data source=asplogin.mssql.somee.com;persist security info=False;initial catalog=asplogin;TrustServerCertificate=True"))
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
string username = txtRegEmail.Text;
    string password = txtRegPassword.Text;

    // Validate username and password
    if (!ValidateUsername(username) || !ValidatePassword(password))
    {
        return; // Stop if validation fails
    }
        using (SqlConnection con = new SqlConnection(@"workstation id=asplogin.mssql.somee.com;packet size=4096;user id=aspbca_SQLLogin_1;pwd=jbvhmefd82;data source=asplogin.mssql.somee.com;persist security info=False;initial catalog=asplogin;TrustServerCertificate=True"))
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