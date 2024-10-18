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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //first grid
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string display = "Select Firstname, Lastname, Username, Email from ClientTBL";
            OleDbCommand cmddisplay = new OleDbCommand(display, connection);
            cmddisplay.ExecuteNonQuery();
            OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();

            string display2 = "Select * from HotelRooms";
            OleDbCommand cmddisplay2 = new OleDbCommand(display2, connection);
            cmddisplay2.ExecuteNonQuery();
            OleDbDataAdapter adapter2 = new OleDbDataAdapter(display2, connection);
            DataTable data2 = new DataTable();
            adapter2.Fill(data2);
            GridView2.DataSource = data2;
            GridView2.DataBind();

            string display3 = "Select ClientUsername, RoomID, CheckIn, CheckOut, ReservationStatus, TotalAmount from ReservationTBL";
            OleDbCommand cmddisplay3 = new OleDbCommand(display3, connection);
            cmddisplay3.ExecuteNonQuery();
            OleDbDataAdapter adapter3 = new OleDbDataAdapter(display3, connection);
            DataTable data3 = new DataTable();
            adapter3.Fill(data3);
            GridView3.DataSource = data3;
            GridView3.DataBind();

            connection.Close();
        }


        protected void DeleteClient_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();

            string display1 = "Insert into CancellationTBL SELECT * FROM ReservationTBL WHERE RoomID = '" + TextBox_ClientInfo.SelectedValue + "'";
            OleDbCommand cmddisplay1 = new OleDbCommand(display1, connection);
            cmddisplay1.ExecuteNonQuery();

            string display2 = "Update HotelRooms SET RoomStatus = 0 WHERE RoomID IN (SELECT RoomID FROM ReservationTBL WHERE ClientUsername = '" + TextBox_ClientInfo.SelectedValue + "')";
            OleDbCommand cmddisplay2 = new OleDbCommand(display2, connection);
            cmddisplay2.ExecuteNonQuery();

            string delete = "DELETE * FROM ClientTBL WHERE Username = ('" + TextBox_ClientInfo.SelectedValue + "');";
            OleDbCommand cmddelete = new OleDbCommand(delete, connection);
            cmddelete.ExecuteNonQuery();
            connection.Close();

            if (TextBox_ClientInfo.Items.Count > 0)
            {
                TextBox_ClientInfo.Items.Clear();
            }

            TextBox_ClientInfo.DataBind();

            if (romid.Items.Count > 0)
            {
                romid.Items.Clear();
            }

            romid.DataBind();
        }

        protected void Uproom_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string update = "Update HotelRooms set RoomStatus= '" + upyu.SelectedValue + "' where RoomID = '" + Roomstat.SelectedValue + "';";
            OleDbCommand cmdupdate = new OleDbCommand(update, connection);
            cmdupdate.ExecuteNonQuery();
            connection.Close();
        }

        protected void UpdateReservation_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string update = "Update ReservationTBL set ReservationStatus= '" + upinf.SelectedValue + "' where RoomID = '" + romid.SelectedValue + "';";
            OleDbCommand cmdupdate = new OleDbCommand(update, connection);
            cmdupdate.ExecuteNonQuery();

            string update2 = "Update HotelRooms set RoomStatus= '" + upinf.SelectedValue + "' where RoomID = '" + romid.SelectedValue + "';";
            OleDbCommand cmdupdate2 = new OleDbCommand(update2, connection);
            cmdupdate2.ExecuteNonQuery();

            connection.Close();

            upinf.SelectedValue = null;
            romid.SelectedValue = null;
        }

        protected void MyTimer_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void MyTimer1_Tick(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }

        protected void MyTimer2_Tick(object sender, EventArgs e)
        {
            GridView3.DataBind();
        }
    }
}