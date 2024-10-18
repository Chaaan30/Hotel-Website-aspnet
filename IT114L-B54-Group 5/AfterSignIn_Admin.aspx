<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfterSignIn_Admin.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            color: #000000;
        }
        .auto-style15 {
            width: 781px;
            height: 37px;
        }
        .auto-style18 {
            width: 723px;
            height: 37px;
        }
        .auto-style22 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style24 {
            width: 723px;
            height: 37px;
            color: #FFFFFF;
        }
        .auto-style25 {
            text-align: center;
            height: 28px;
            background-color: #808080;
        }
        .auto-style26 {
            text-align: center;
        }
        .auto-style27 {
            width: 30%;
        }
        .auto-style28 {
            width: 728px;
        }
        .auto-style29 {
            height: 27px;
            text-align: center;
            color: #FFFFFF;
            background-color: #666666;
            font-size: xx-large;
        }
        .auto-style30 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style31 {
            text-align: center;
            background-color: #808080;
        }
        .auto-style32 {
            color: #FFFFFF;
            text-align: center;
            background-color: #808080;
        }
        body, html {
          height: 100%;
          margin: 0;
          font-family: Arial;
        }

        .button {
          display: inline-block;
          margin-left: 20px;
        }
        
        * {box-sizing: border-box;}

        .header {
          overflow: hidden;
          background-color: #8C52FF;
          padding: 20px 10px;
        }

        .header a {
          float: left;
          color: black;
          text-align: center;
          padding: 12px;
          text-decoration: none;
          font-size: 18px; 
          line-height: 25px;
          border-radius: 4px;
        }

        .header a.active {
          background-color: #ffde59;
          color: black;
          margin-right: 10px;
        }

        .header a:hover {
          background-color: #d6ba49;
        }

        .header-right {
          float: right;
        }

        @media screen and (max-width: 500px) {
          .header a {
            float: none;
            display: block;
            text-align: left;
          }
  
          .header-right {
            float: none;
          }
        }
        .auto-style33 {
            text-align: center;
            font-size: large;
        }
        .auto-style34 {
            width: 30%;
            height: 27px;
        }
        .auto-style35 {
            width: 728px;
            height: 27px;
        }
        .auto-style36 {
            height: 27px;
        }
        </style>
    <script>
        function ConfirmClear() {
            if (confirm("Are you sure you want to delete Client Information?, doing so will delete their existing reservation if there is any.")) {
                return true;
            }
            else {
                return false;
            }
        }

        function UpdateRoom() {
            if (confirm("Are you sure you want to update the selected room's status?")) {
                return true;
            }
            else {
                return false;
            }
        }

        function UpdateUser() {
            if (confirm("Are you sure you want to update the user's reservation status?")) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="header">

          <div class="header-right">
            <a class="active" href="Homepage.aspx">Logout</a>


          </div>

             <asp:ImageButton class="button" ID="ImageButton1" runat="server" Height="45px" ImageUrl="~/Images/HotelLogo.png" PostBackUrl="###" Width="45px" CausesValidation="False" ToolTip="Home" />
          </div>

        <table class="auto-style1">
        <tr>
            <td class="auto-style29">
                <strong>ADMIN WEB CONTROL PAGE</strong></td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">This is where the administrator supervise, update, and monitor the records or status of the hotel rooms, reservations, and clients.</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style34"></td>
                        <td class="auto-style35">
                        </td>
                        <td class="auto-style36"></td>
                    </tr>
                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style28">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style28">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27">
                            <table class="auto-style22">
                                <tr>
                                    <td class="auto-style25">
                <strong>
                <asp:Label ID="Label15" runat="server" CssClass="auto-style24" Text="CLIENT INFORMATION"></asp:Label>
                </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">This is the record for Client Informations.</td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">In a special case where we want to delete a client record, we can select their Username to Delete Client Information.</td>
                                </tr>
                                <tr>
                                    <td class="auto-style26"><strong>
                            <asp:Label ID="Label18" runat="server" Text="Enter Client Username:"></asp:Label>
                                        <asp:DropDownList ID="TextBox_ClientInfo" runat="server" DataSourceID="TextBox_ClientInfo2" DataTextField="Username" DataValueField="Username" AutoPostBack="True">
                                            <asp:ListItem Value="0">Delete Information</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:AccessDataSource ID="TextBox_ClientInfo2" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT Username FROM ClientTBL"></asp:AccessDataSource>
                            </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">
                <asp:Button ID="DeleteClient" runat="server" OnClientClick="return ConfirmClear();" OnClick="DeleteClient_Click" Text="Delete Client Information" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">

                    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
                    <ContentTemplate>

                        <asp:ScriptManager runat="server">
                        </asp:ScriptManager>

                    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>

                    <asp:Timer ID="MyTimer" runat="server" Interval="1000" OnTick="MyTimer_Tick"></asp:Timer>
                    </ContentTemplate>
                    </asp:UpdatePanel>

                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style28">
                            <table class="auto-style30">
                                <tr>
                                    <td class="auto-style31">
                <strong>
                <asp:Label ID="Label19" runat="server" CssClass="auto-style24" Text="HOTEL ROOMS"></asp:Label>
                </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">
                                        Whenever we want to manually change the room status, we can enter the Room ID to Update Room Status.<span class="auto-style5">
                                        <strong>
                                        <br />
                                        </strong></span><span class="auto-style15"><strong> 0<span class="auto-style5"> = Vacant, 1 = Occupied</span></strong></span></td>
                                </tr>
                                <tr>
                                    <td class="auto-style26"><strong>
                            <asp:Label ID="Label20" runat="server" Text="Enter Room ID:"></asp:Label>
                                        <asp:DropDownList ID="Roomstat" runat="server" DataSourceID="Roomstat1" DataTextField="RoomID" DataValueField="RoomID">
                                        </asp:DropDownList>
                                        <asp:AccessDataSource ID="Roomstat1" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM HotelRooms"></asp:AccessDataSource>
                                        <br />
                            <asp:Label ID="Label21" runat="server" Text="Update Room Status:" CssClass="auto-style5"></asp:Label>
                                        <asp:DropDownList ID="upyu" runat="server">
                                            <asp:ListItem>0</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                        </asp:DropDownList>
                            </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">
                                        <asp:Button ID="Uproom0" runat="server" OnClick="Uproom_Click" Text="Update Room Status" OnClientClick="return UpdateRoom();" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">

                    <asp:UpdatePanel runat="server">
                    <ContentTemplate>

                    <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>

                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="MyTimer1_Tick"></asp:Timer>
                    </ContentTemplate>
                    </asp:UpdatePanel>

                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="auto-style30">
                                <tr>
                                    <td class="auto-style32">
                <strong>
                <asp:Label ID="Label22" runat="server" CssClass="auto-style18" Text="RESERVATION"></asp:Label>
                </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">Whenever we want to manually change the reservation status of the client, we must select their Room ID to Update Reservation Status of Client.<strong><br />
&nbsp;0 - Pending, 1 - Reserved</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">
                <strong>
                            <asp:Label ID="Label23" runat="server" Text="Enter Room ID:"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="romid" runat="server" DataSourceID="romid1" DataTextField="RoomID" DataValueField="RoomID">
                                        </asp:DropDownList>
                                        <asp:AccessDataSource ID="romid1" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM ReservationTBL"></asp:AccessDataSource>
                                        <br />
                            <asp:Label ID="Label24" runat="server" Text="Update Information:"></asp:Label>
                            </strong>
                                        <br />
                                        <asp:DropDownList ID="upinf" runat="server">
                                            <asp:ListItem Value="0"></asp:ListItem>
                                            <asp:ListItem Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">
                                        <asp:Button ID="UpdateReservation" runat="server" OnClick="UpdateReservation_Click" Text="Update Status" OnClientClick="return UpdateUser();" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style26">

                    <asp:UpdatePanel runat="server" ID="UpdatePanel2">
                    <ContentTemplate>

                    <asp:GridView ID="GridView3" runat="server" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>

                    <asp:Timer ID="Timer2" runat="server" Interval="1000" OnTick="MyTimer2_Tick"></asp:Timer>
                    </ContentTemplate>
                    </asp:UpdatePanel>

              </td>
            </tr>
          </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style28">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style28">
        <br />
    </form>
</body>
</html>
