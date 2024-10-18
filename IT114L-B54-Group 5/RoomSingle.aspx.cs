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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                // Disable previous dates in both textboxes
                check_in.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
                check_out.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
            }
            if (Session["Username"] != null)
            {
                string username = Session["Username"].ToString();
                TextBox2.Text = username;
                OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
                connection.Open();
                string display = "Select ClientUsername, RoomID, CheckIn, CheckOut, TotalAmount from ReservationTBL WHERE ClientUsername = '" + username + "'";
                OleDbCommand cmddisplay = new OleDbCommand(display, connection);
                cmddisplay.ExecuteNonQuery();
                OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
                DataTable data = new DataTable();
                adapter.Fill(data);
                GridView1.DataSource = data;
                GridView1.DataBind();
                connection.Close();
            }
        }

        protected void check_in_TextChanged(object sender, EventArgs e)
        {
            // Check if the check_in date field has a valid value
            if (string.IsNullOrEmpty(check_in.Text))
            {
                difference_box.Text = "";
                total_box.Text = "";
                return;
            }

            // Parse the selected check-in and check-out dates
            DateTime checkInDate, checkOutDate;
            if (!DateTime.TryParse(check_in.Text, out checkInDate) || !DateTime.TryParse(check_out.Text, out checkOutDate))
            {
                // If either date is invalid, clear the difference and total boxes
                difference_box.Text = "";
                total_box.Text = "";
                return;
            }

            // Check if check-out date is before check-in date
            if (checkOutDate < checkInDate)
            {
                difference_box.Text = "";
                total_box.Text = "";
                // Show an alert message
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Check-out date cannot be before check-in date.');", true);
                // Clear the date fields
                check_in.Text = "";
                check_out.Text = "";
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "checkin_checkout_checker();", true);
                return;
            }

            // Check if check-in and check-out dates are the same day
            if (checkOutDate == checkInDate)
            {
                difference_box.Text = "";
                total_box.Text = "";
                // Show an alert message
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Our hotel accepts a minimum of at least 1 day.');", true);
                // Clear the date fields
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "sameday_checker();", true);
                return;
            }

            // Disable previous days on check-out date picker
            check_out.Attributes["min"] = check_in.Text;

            // Calculate the difference between check-in and check-out dates
            TimeSpan difference = checkOutDate - checkInDate;
            difference_box.Text = difference.TotalDays.ToString();

            // Calculate total amount by multiplying the difference by the price
            int pricePerNight = 1500;
            int totalAmount = (int)difference.TotalDays * pricePerNight;
            total_box.Text = totalAmount.ToString();
            // Call the checker function
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "checkin_checkout_checker();", true);
        }

        protected void check_out_TextChanged(object sender, EventArgs e)
        {
            // Parse the selected check-in and check-out dates
            DateTime checkInDate, checkOutDate;
            if (!DateTime.TryParse(check_in.Text, out checkInDate) || !DateTime.TryParse(check_out.Text, out checkOutDate))
            {
                // If either date is invalid, clear the difference and total boxes
                difference_box.Text = "";
                total_box.Text = "";
                return;
            }

            // Check if check-out date is before check-in date
            if (checkOutDate < checkInDate)
            {
                difference_box.Text = "";
                total_box.Text = "";
                // Show an alert message
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Check-out date cannot be before check-in date.');", true);
                // Clear the date fields
                check_in.Text = "";
                check_out.Text = "";
                // Call the checker function
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "checkin_checkout_checker();", true);
                return;
            }

            // Check if check-in and check-out dates are the same day
            if (checkOutDate == checkInDate)
            {
                difference_box.Text = "";
                total_box.Text = "";
                // Show an alert message
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Our hotel accepts a minimum of at least 1 day.');", true);
                // Clear the date fields
                check_in.Text = "";
                check_out.Text = "";
                // Clear the date fields
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "sameday_checker();", true);
                return;
            }

            // Calculate the difference between check-in and check-out dates
            TimeSpan difference = checkOutDate - checkInDate;
            difference_box.Text = difference.TotalDays.ToString();

            // Calculate total amount by multiplying the difference by the price
            int pricePerNight = 1500;
            int totalAmount = (int)difference.TotalDays * pricePerNight;
            total_box.Text = totalAmount.ToString();
        }


        protected void CancelSingle_Click(object sender, EventArgs e)
        {
            YesCancel.Visible = true;
            NoCancel.Visible = true;
            cancelConfirmation.Visible = true;
        }

        protected void YesCancel_Click(object sender, EventArgs e)
        {
            string selectedV = (selectRName.SelectedValue);
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();

            string display1 = "Insert into CancellationTBL SELECT * FROM ReservationTBL WHERE RoomID = '" + selectedV + "'";
            OleDbCommand cmddisplay1 = new OleDbCommand(display1, connection);
            cmddisplay1.ExecuteNonQuery();

            string display = "Delete FROM ReservationTBL WHERE RoomID = '" + selectedV + "'";
            OleDbCommand cmddisplay = new OleDbCommand(display, connection);
            cmddisplay.ExecuteNonQuery();
            OleDbDataAdapter adapter = new OleDbDataAdapter(display, connection);
            DataTable data = new DataTable();
            adapter.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();

            string display2 = "Update ReservationTBL set ReservationStatus = 0 WHERE RoomID = '" + selectedV + "'";
            OleDbCommand cmddisplay2 = new OleDbCommand(display2, connection);
            cmddisplay2.ExecuteNonQuery();

            string display3 = "Update HotelRooms set RoomStatus = 0 WHERE RoomID = '" + selectedV + "'";
            OleDbCommand cmddisplay3 = new OleDbCommand(display3, connection);
            cmddisplay3.ExecuteNonQuery();

            connection.Close();

            if (selectRName.Items.Count > 0)
            {
                selectRName.Items.Clear();
            }

            selectRName.DataBind();

            selectRName.Items.Insert(0, new ListItem("Select Room ID", "0"));

            YesCancel.Visible = false;
            NoCancel.Visible = false;
            cancelConfirmation.Visible = false;
            selectRName.SelectedValue = null;

            // Show success message
            string script2 = "alert('Your reservation has been successfully cancelled!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script2, true);
        }

        protected void NoCancel_Click(object sender, EventArgs e)
        {
            YesCancel.Visible = false;
            NoCancel.Visible = false;
            cancelConfirmation.Visible = false;
            selectRName.SelectedValue = null;
        }

        protected void ReserveSingle_Click(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection("Provider = Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("~/App_Data/DBMP5.accdb"));
            connection.Open();

            // Check if the room is available
            string checkRoomStatus = "SELECT RoomStatus FROM HotelRooms WHERE RoomID = '" + SingleRID.Text + "'";
            OleDbCommand cmdCheckRoomStatus = new OleDbCommand(checkRoomStatus, connection);
            int roomStatus = Convert.ToInt32(cmdCheckRoomStatus.ExecuteScalar());
            if (roomStatus == 1)
            {
                connection.Close();
                string script = "alert('The room is already occupied! Please choose another room.');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script, true);
                return;
            }

            // Add reservation
            string insertReservation = "Insert into ReservationTBL(ClientUsername, RoomID, CheckIn, CheckOut, TotalAmount) values('" + TextBox2.Text + "' , '" + SingleRID.Text + "' , '" + check_in.Text + "' , '" + check_out.Text + "' , '" + total_box.Text + "');";
            OleDbCommand cmdInsertReservation = new OleDbCommand(insertReservation, connection);
            cmdInsertReservation.ExecuteNonQuery();

            // Update reservation status
            string updateReservationStatus = "Update ReservationTBL set ReservationStatus = 1 WHERE RoomID = '" + SingleRID.Text + "'";
            OleDbCommand cmdUpdateReservationStatus = new OleDbCommand(updateReservationStatus, connection);
            cmdUpdateReservationStatus.ExecuteNonQuery();

            // Update room status
            string updateRoomStatus = "Update HotelRooms set RoomStatus = 1 WHERE RoomID = '" + SingleRID.Text + "'";
            OleDbCommand cmdUpdateRoomStatus = new OleDbCommand(updateRoomStatus, connection);
            cmdUpdateRoomStatus.ExecuteNonQuery();

            connection.Close();

            // Clear form fields
            SingleRID.SelectedValue = "0";
            check_in.Text = "";
            check_out.Text = "";
            difference_box.Text = "";
            total_box.Text = "";

            // Show success message
            string script2 = "alert('You are now Reserved!');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", script2, true);

            if (selectRName.Items.Count > 0)
            {
                selectRName.Items.Clear();
            }

            selectRName.DataBind();

            selectRName.Items.Insert(0, new ListItem("Select Room ID", "0"));
        }

        protected void MyTimer_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
    }
}