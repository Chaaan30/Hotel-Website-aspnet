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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void cvInput_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 5)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        //Insert Single and Single outputs------------------------------------------------------------------------------------------------------------------------------------------
        protected void Reservation_Reserve_Click(object sender, EventArgs e)
        {
                OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
                connection.Open();
                string display = "Insert into ReservationTBL(ClientUsername, RoomID, RoomName, CheckIn, CheckOut, TotalAmount) values('" + Usname.Text + "' , '" + Roomid.Text + "' , '" + romnam.Text + "' , '" + CI1.Text + "' , '" + CO1.Text + "' , '" + TotalSing.Text + "');";
                OleDbCommand cmddisplay = new OleDbCommand(display, connection);
                cmddisplay.ExecuteNonQuery();
                connection.Close();

            tutal1.Text = "";
            Usname.Text = "";
            Roomid.Text = "";
            CI1.Text = "";
            CO1.Text = "";
            TotalSing.Text = "";
            romnam.Text = "";
        }
        protected void HideS_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }
        protected void SRoom_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string display = "Select * from HotelRooms where RoomType = 'Single'";
            OleDbCommand cmddisplay = new OleDbCommand(display, connection);
            cmddisplay.ExecuteNonQuery();
            OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
            connection.Close();
            GridView1.Visible = true;
        }
        protected void cansing_Click(object sender, EventArgs e)
        {
            tutal1.Text = "";
            Usname.Text = "";
            Roomid.Text = "";
            CI1.Text = "";
            CO1.Text = "";
            TotalSing.Text = "";
            romnam.Text = "";
        }

        protected void CalculateS_Click(object sender, EventArgs e)
        {
                DateTime dt1 = DateTime.Parse(CI1.Text);
                DateTime dt2 = DateTime.Parse(CO1.Text);
                TimeSpan ts = dt2 - dt1;
                tutal1.Text = ts.Days.ToString();

                int sin = Convert.ToInt32(tutal1.Text);
                int tot = sin * 1500;
                TotalSing.Text = tot.ToString();
        }
        //Input Double and Double output----------------------------------------------------------------------------------------------------------------------------------------------
        protected void Reservedoub_Click(object sender, EventArgs e)
        {
                OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
                connection.Open();
                string display = "Insert into ReservationTBL(ClientUsername, RoomID, RoomName, CheckIn, CheckOut, TotalAmount) values('" + Usname2.Text + "' , '" + roomid2.Text + "' , '" + romnamd.Text + "' , '" + CI2.Text + "' , '" + CO2.Text + "' , '" + TotalDoub.Text + "');";
                OleDbCommand cmddisplay = new OleDbCommand(display, connection);
                cmddisplay.ExecuteNonQuery();
                connection.Close();

                tutal2.Text = "";
                Usname2.Text = "";
                roomid2.Text = "";
                CI2.Text = "";
                CO2.Text = "";
                TotalDoub.Text = "";
                romnamd.Text = "";
        }
        protected void DRoom_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string display = "Select * from HotelRooms where RoomType = 'Double'";
            OleDbCommand cmddisplay = new OleDbCommand(display, connection);
            cmddisplay.ExecuteNonQuery();
            OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            GridView3.DataSource = data;
            GridView3.DataBind();
            connection.Close();
            GridView3.Visible = true;
        }
        protected void Hided_Click(object sender, EventArgs e)
        {
            GridView3.Visible = false;
        }
        protected void CalculateD_Click(object sender, EventArgs e)
        {
                DateTime dt1 = DateTime.Parse(CI2.Text);
                DateTime dt2 = DateTime.Parse(CO2.Text);
                TimeSpan ts = dt2 - dt1;
                tutal2.Text = ts.Days.ToString();

                int dou = Convert.ToInt32(tutal2.Text);
                int tota = dou * 2500;
                TotalDoub.Text = tota.ToString();
        }
        protected void candoub_Click(object sender, EventArgs e)
        {
            tutal2.Text = "";
            Usname2.Text = "";
            roomid2.Text = "";
            CI2.Text = "";
            CO2.Text = "";
            TotalDoub.Text = "";
            romnamd.Text = "";
        }
        //Input VIP and VIP output------------------------------------------------------------------------------------------------------------------------------------
        protected void VIPRoom_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string display = "Select * from HotelRooms where RoomType = 'Suite'";
            OleDbCommand cmddisplay = new OleDbCommand(display, connection);
            cmddisplay.ExecuteNonQuery();
            OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            GridView2.DataSource = data;
            GridView2.DataBind();
            connection.Close();
            GridView2.Visible = true;
        }
        protected void CalculateVIP_Click(object sender, EventArgs e)
        {
                DateTime dt1 = DateTime.Parse(CI3.Text);
                DateTime dt2 = DateTime.Parse(CO3.Text);
                TimeSpan ts = dt2 - dt1;
                tutal3.Text = ts.Days.ToString();

                int VIP = Convert.ToInt32(tutal3.Text);
                int total = VIP * 5000;
                TotaVIP.Text = total.ToString();
        }
        
        protected void resVIP_Click(object sender, EventArgs e)
        {
                OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
                connection.Open();
                string display = "Insert into ReservationTBL(ClientUsername, RoomID, RoomName, CheckIn, CheckOut, TotalAmount) values('" + Usname3.Text + "' , '" + rOomid3.Text + "' , '" + romnamvip.Text + "' , '" + CI3.Text + "' , '" + CO3.Text + "' , '" + TotaVIP.Text + "');";
                OleDbCommand cmddisplay = new OleDbCommand(display, connection);
                cmddisplay.ExecuteNonQuery();
                connection.Close();


            tutal3.Text = "";
            Usname3.Text = "";
            rOomid3.Text = "";
            CI3.Text = "";
            CO3.Text = "";
            TotaVIP.Text = "";
            romnamvip.Text = "";
        }

        protected void cancelVIP_Click(object sender, EventArgs e)
        {
            tutal3.Text = "";
            Usname3.Text = "";
            rOomid3.Text = "";
            CI3.Text = "";
            CO3.Text = "";
            TotaVIP.Text = "";
            romnamvip.Text = "";
        }

        protected void HideVIP_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
        }
        //Show Reserve Rooms-------------------------------------------------------------------------------------------------------------------------------------
        protected void Showrom_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();
            string display = "Select ClientUsername, RoomID, RoomName, CheckIn, CheckOut, TotalAmount from ReservationTBL where ClientUsername = ('" + showshow.Text + "');";
            OleDbCommand cmddisplay = new OleDbCommand(display, connection);
            cmddisplay.ExecuteNonQuery();
            OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            GridView4.DataSource = data;
            GridView4.DataBind();
            connection.Close();
            
            GridView4.Visible = true;
        }

        protected void Hidvip_Click(object sender, EventArgs e)
        {
            GridView4.Visible = false;
        }

        protected void kansel_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();

            // Execute the INSERT INTO command
            string insertQuery = "INSERT INTO CancellationTBL SELECT * FROM ReservationTBL WHERE ClientUsername = ('" + showshow.Text + "')";
            OleDbCommand insertCommand = new OleDbCommand(insertQuery, connection);
            insertCommand.ExecuteNonQuery();

            // Execute the DELETE FROM command
            string deleteQuery = "DELETE FROM ReservationTBL WHERE RoomName = ('" + Roomidd.Text + "')";
            OleDbCommand deleteCommand = new OleDbCommand(deleteQuery, connection);
            deleteCommand.ExecuteNonQuery();

            connection.Close();
        }

        protected void Terms_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }

        protected void MyCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Get the input value from the TextBox control
            string input = Roomidd.Text;

            // Define the multiple ranges to validate against
            string[][] ranges = new string[][] {
            new string[] { "DL101", "DL106" },
            new string[] { "DL201", "DL203" },
            new string[] { "DLVIP", "DLVIP" }
        };

            // Check the input value against each range
            foreach (string[] range in ranges)
            {
                if (input.CompareTo(range[0]) >= 0 && input.CompareTo(range[1]) <= 0)
                {
                    // The input value is within this range, so it is valid
                    args.IsValid = true;
                    return;
                }
            }

            // The input value is not within any of the ranges, so it is invalid
            args.IsValid = false;
        }
    }
}