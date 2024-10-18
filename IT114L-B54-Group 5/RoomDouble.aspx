<%@ Page Title="" Language="C#" MasterPageFile="~/Reservation.Master" AutoEventWireup="true" CodeBehind="RoomDouble.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        text-align: center;
    }
    .auto-style9 {
        border-style: solid;
        border-width: 1px;
    }
    .auto-style11 {
        border-style: solid;
        border-width: 1px;
        text-align: center;
        font-size: xx-large;
    }
    .auto-style12 {
        font-size: medium;
    }
    .header-rightalt {
        float: right;
        margin-right: 20px;
        margin-top: 12px;
    }
    .auto-style13 {
        text-align: center;
    }
        .auto-style24 {
            border-style: solid;
            border-width: 1px;
            text-align: center;
            font-size: xx-large;
            width: 717px;
        }
        .auto-style25 {
            border-style: solid;
            border-width: 1px;
            text-align: center;
            font-size: xx-large;
            width: 468px;
        }
        .auto-style26 {
            text-align: center;
            color: #8C52FF;
            width: 80px;
        }
        .auto-style27 {
            text-align: center;
            color: #8C52FF;
            width: 404px;
        }
        .auto-style28 {
            text-align: center;
            width: 404px;
        }
        table
        {
            border:1px solid black;
        }
        .auto-style29 {
            color: #8C52FF;
            width: 224px;
        }
        .auto-style30 {
            color: #8C52FF;
            text-align: center;
            width: 305px;
        }
        .auto-style31 {
            text-align: center;
            width: 337px;
        }
    </style>
    <script>
        function ConfirmClear() {
            if (confirm("Are you sure you want to clear the fields?")) {
                document.getElementById('<%= DoubleRID.ClientID %>').value = "";
                document.getElementById('<%= total_box.ClientID %>').value = "";
                document.getElementById('<%= difference_box.ClientID %>').value = "";
                document.getElementById('<%= check_in.ClientID %>').valueAsDate = null;
                document.getElementById('<%= check_out.ClientID %>').valueAsDate = null;
                return true;
            }
            else {
                return false;
            }
        }

        function checkin_checkout_checker() {
            if (checkIn && checkOut && checkOut < checkIn) {
                // Show an alert message
                alert("Check-out date cannot be before check-in date.");
                document.getElementById('<%= check_in.ClientID %>').valueAsDate = null;
                document.getElementById('<%= check_out.ClientID %>').valueAsDate = null;
                document.getElementById('<%= total_box.ClientID %>').value = "";
                document.getElementById('<%= difference_box.ClientID %>').value = "";
                return true;
            }
            else {
                return false;
            }
        }

        function sameday_checker() {
            if (checkIn && checkOut && checkOut.getTime() === checkIn.getTime()) {
                // Show an alert message
                alert("Our hotel accepts a minimum of at least 1 day.");
                document.getElementById('<%= check_in.ClientID %>').valueAsDate = null;
                document.getElementById('<%= check_out.ClientID %>').valueAsDate = null;
                document.getElementById('<%= total_box.ClientID %>').value = "";
                document.getElementById('<%= difference_box.ClientID %>').value = "";
                return true;
            }
            else {
                return false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style25">
            <br />
            <asp:Image ID="Image2" runat="server" Height="160px" ImageUrl="~/Room Images/doubleLivingRoom.jpg" Width="225px" />
            <br />
            <br />
            <span class="showstandc"><strong>Room Areas</strong></span><br />
            <br />
            <asp:Image ID="Image3" runat="server" Height="160px" ImageUrl="~/Room Images/doubleBathroom.jpg" Width="225px" />
        </td>
        <td class="auto-style24"><strong><span class="auto-style3">&nbsp;DOUBLE ROOM TYPE</span><br />
            </strong>
            <asp:Image ID="Image1" runat="server" Height="330px" Width="450px" ImageUrl="~/Room Images/double.jpg" />
            <strong>
            <br />
            </strong></td>
        <td class="auto-style11">
            <strong>
            <span class="auto-style12"><span class="auto-style10">Room Description:</span> </span> </strong><span class="auto-style12">Ideal for 2-4 or more persons. Perfect for couples or friends traveling together. As you step inside, you&#39;ll appreciate the thoughtful touches that make this room feel like a home away from home. A pleasant night&#39;s sleep is guaranteed by the room&#39;s two soft double beds, each with pristine linens and plush cushions.<br />
            <br class="auto-style9" />
            <strong><span class="auto-style10">Room Price (Per Day):</span> </strong>3000php</span></td>
    </tr>
    </table>
<table class="auto-style1">
    <tr>
        <td class="auto-style26" rowspan="8"><asp:TextBox ID="TextBox2" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <div class="auto-style13">
            <asp:UpdatePanel runat="server">
                    <ContentTemplate>

                <asp:GridView ID="GridView2" runat="server" CellPadding="3" ForeColor="Black" HorizontalAlign="Center" BackColor="#8C52FF" BorderColor="#8C52FF" BorderStyle="Solid" BorderWidth="5px" >
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="#FFDE59" Font-Bold="True" ForeColor="#8C52FF" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                
                <asp:Timer ID="MyTimer" runat="server" Interval="1000" OnTick="MyTimer_Tick"></asp:Timer>
               

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            </td>
        <td class="auto-style27"><strong>Reservation</strong></td>
        <td class="auto-style29" rowspan="8">
            <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="~/Images/map.jpg" Width="300px" />
        </td>
        <td class="auto-style30"><strong>Cancellation</strong></td>
    </tr>
    <tr>
        <td class="auto-style27">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style27"><strong>Check IN Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:TextBox ID="check_in" runat="server" TextMode="Date" OnTextChanged="check_in_TextChanged" AutoPostBack="True" ValidationGroup="reserd"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="check_in" ErrorMessage="Please Choose a Check-In Date." CssClass="showstandc" ValidationGroup="reserd"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style30">
            <div class="showstandc2">
                <strong>Select Room ID to Cancel:&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="selectRName" runat="server" AppendDataBoundItems="True" DataSourceID="dsRoomID_Cancel" DataTextField="RoomID" DataValueField="RoomID" ValidationGroup="resercancel">
                <asp:ListItem Text="Select Room ID" Value="0" Disabled="True" Selected="True"></asp:ListItem>
            </asp:DropDownList>

            <br />
            </strong>

            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="selectRName" CssClass="showstandc" ErrorMessage="Choose your Room ID" MaximumValue="3.1" MinimumValue="1.1" ValidationGroup="resercancel"></asp:RangeValidator>
            <strong>

            </div>

            <asp:AccessDataSource ID="dsRoomID_Cancel" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM ReservationTBL WHERE ClientUsername = ?">
            <SelectParameters>
            <asp:SessionParameter Name="ClientUsername" SessionField="Username" />
            </SelectParameters>
            </asp:AccessDataSource>
        
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style27">
            <strong>Check OUT Date:&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:TextBox ID="check_out" runat="server" TextMode="Date" OnTextChanged="check_out_TextChanged" AutoPostBack="True" ValidationGroup="reserd"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="check_out" ErrorMessage="Please Choose a Check-Out Date." CssClass="showstandc" ValidationGroup="reserd"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style31">
            <asp:Button ID="cancelDouble" runat="server" Text="Cancel" OnClick="cancelDouble_Click" ValidationGroup="resercancel" />
            </td>
    </tr>
    <tr>
        <td class="auto-style27"><strong>
            Room ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DoubleRID" runat="server" DataSourceID="dsRoomID" DataTextField="RoomID" DataValueField="RoomID" AppendDataBoundItems="True" ValidationGroup="reserd">
            <asp:ListItem Text="Select Room ID" Value="0" Disabled="True" Selected="True"></asp:ListItem>
        </asp:DropDownList>

            <br />
            </strong>
        
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DoubleRID" ErrorMessage="Choose your Room ID" MaximumValue="2.3" MinimumValue="2.1" CssClass="showstandc" ValidationGroup="reserd"></asp:RangeValidator>
        
            <strong>

            <asp:AccessDataSource ID="dsRoomID" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM HotelRooms WHERE CStr(RoomID) IN ('2.1', '2.2', '2.3')"></asp:AccessDataSource>
        
            </strong></td>
        <td class="auto-style31"><asp:Label ID="cancelDoubleConfirmation" runat="server" Text="Are you sure you want to cancel?" Visible="False" CssClass="showstandc"></asp:Label>
            <br />
            <asp:Button ID="YesCancel_double" runat="server" OnClick="YesCancel_Click" Text="Yes" Visible="False" ValidationGroup="resercancel" />
            <asp:Button ID="NoCancel_double" runat="server" OnClick="NoCancel_Click" Text="No" Visible="False" />
        </td>
    </tr>
    <tr>
        <td class="auto-style27" rowspan="2"><strong>Total Number of Days:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="difference_box" runat="server" Enabled="False" ReadOnly="True" AutoPostBack="True" ValidationGroup="reserd"></asp:TextBox>
        
            <br />
            <br />
            Total Bill:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
            </strong><asp:TextBox ID="total_box" runat="server" Enabled="False" AutoPostBack="True" ValidationGroup="reserd"></asp:TextBox>
        </td>
        <td class="auto-style31">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style28">
            <asp:Button ID="ReserveDouble" runat="server" Text="Reserve" OnClick="ReserveDouble_Click" ValidationGroup="reserd" />
&nbsp;<asp:Button ID="ClearReserveDouble" runat="server" Text="Clear" OnClientClick="return ConfirmClear();"/>
        </td>
        <td class="auto-style31">&nbsp;</td>
    </tr>
    </table>
</asp:Content>
