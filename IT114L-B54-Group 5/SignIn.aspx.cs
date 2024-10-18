using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT114L_B54_Group_5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void SignButton_Click(object sender, EventArgs e)
        {

            string username = Sign_Username.Text;
            Session["Username"] = username;

            OleDbConnection connection2 = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            {
                connection2.Open();
                string query_admin = "SELECT COUNT(*) FROM AdminTBL WHERE Username = @Username AND Password = @Password AND Status = @Status";
                using (OleDbCommand command = new OleDbCommand(query_admin, connection2))
                {
                    command.Parameters.AddWithValue("@Username", Sign_Username.Text);
                    command.Parameters.AddWithValue("@Password", Sign_Password.Text);
                    command.Parameters.AddWithValue("@Status", 1);
                    int count = (int)command.ExecuteScalar();
                    if (count == 1)
                    {
                        Session["Username"] = Sign_Username.Text;
                        string script = "alert('Welcome Admin!'); window.location='AfterSignIn_Admin.aspx';";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                    }
                }
                connection2.Close();
            }

            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            {
                connection.Open();
                string query_user = "SELECT COUNT(*) FROM ClientTBL WHERE Username = @Username AND Password = @Password AND Status = @Status";
                using (OleDbCommand command = new OleDbCommand(query_user, connection))
                {
                    command.Parameters.AddWithValue("@Username", Sign_Username.Text);
                    command.Parameters.AddWithValue("@Password", Sign_Password.Text);
                    command.Parameters.AddWithValue("@Status", 1);
                    int count = (int)command.ExecuteScalar();
                    if (count == 1)
                    {
                        Session["Username"] = Sign_Username.Text;
                        string script = "alert('You are now Signed-in!'); window.location='AfterSignIn_Homepage.aspx';";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                    }
                    else
                    {
                        string script = "alert('The username/password you entered is incorrect.');";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                    }
                }
                connection.Close();
            }
        }
    }
}
