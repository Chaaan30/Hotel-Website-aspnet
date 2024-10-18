using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;


namespace IT114L_B54_Group_5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Reg_Button_Register_Click(object sender, EventArgs e)
        {
            string email = Rev_EmailAddress.Text;
            string username = Reg_Username.Text;
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            string checkEmail = "SELECT COUNT(*) FROM ClientTBL WHERE Email = @email";
            OleDbCommand cmdCheck = new OleDbCommand(checkEmail, connection);
            cmdCheck.Parameters.AddWithValue("@email", email);

            string checkUsername = "SELECT COUNT(*) FROM ClientTBL WHERE Username = @username";
            OleDbCommand cmdCheckUsername = new OleDbCommand(checkUsername, connection);
            cmdCheckUsername.Parameters.AddWithValue("@username", username);

            connection.Open();

            int emailExists = (int)cmdCheck.ExecuteScalar();
            int usernameExists = (int)cmdCheckUsername.ExecuteScalar();

            connection.Close();

            if (emailExists > 0)
            {
                Response.Write("<script>alert('Email is already registered.');</script>");
            }
            else if (usernameExists > 0)
            {
                Response.Write("<script>alert('Username is already taken.');</script>");
            }
            else
            {

                string sqlCmd = "INSERT INTO ClientTBL (Firstname, Lastname, Username, Email, [Password], ConfirmPassword, Status) VALUES (@Firstname, @Lastname, @Username, @Email, @Password, @ConfirmPassword, @Status);";
                using (OleDbCommand command = new OleDbCommand(sqlCmd, connection))
                {
                    command.Parameters.AddWithValue("@Firstname", Reg_FirstName.Text);
                    command.Parameters.AddWithValue("@Lastname", Reg_LastName.Text);
                    command.Parameters.AddWithValue("@Username", Reg_Username.Text);
                    command.Parameters.AddWithValue("@Email", Rev_EmailAddress.Text);
                    command.Parameters.AddWithValue("@Password", Reg_Password.Text);
                    command.Parameters.AddWithValue("@ConfirmPassword", Reg_CPassword.Text);
                    command.Parameters.AddWithValue("@Status", 1);

                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();

                    Reg_FirstName.Text = "";
                    Reg_LastName.Text = "";
                    Reg_Username.Text = "";
                    Rev_EmailAddress.Text = "";
                    Reg_Password.Text = "";
                    Reg_CPassword.Text = "";

                    string script = "alert('Welcome! You are now registered! You can now login your account!'); window.location='HomePage.aspx';";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                    }
                connection.Close();
            }
        }
    }
}


