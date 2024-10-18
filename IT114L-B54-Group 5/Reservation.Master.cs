using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace IT114L_B54_Group_5
{
    public partial class Reservation : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                string username = Session["Username"].ToString();
                Username_Login.Text = "Welcome " + username + "!";
            }
            if (!IsPostBack)
            {
               GridView1_SelectedIndexChanged();
            }

        }
        protected void Terms_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

        private void GridView1_SelectedIndexChanged()
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string display = "Select RoomID, RoomStatus from HotelRooms";
            OleDbCommand cmddisplay = new OleDbCommand(display, connection);
            cmddisplay.ExecuteNonQuery();
            OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            GridView10.DataSource = data;
            GridView10.DataBind();
            connection.Close();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            GridView1_SelectedIndexChanged();
        }
    }
}