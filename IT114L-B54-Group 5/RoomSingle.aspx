<%@ Page Title="" Language="C#" MasterPageFile="~/Reservation.Master" AutoEventWireup="true" CodeBehind="RoomSingle.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm4" %>
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
        .auto-style27 {
            border-style: solid;
            border-width: 1px;
            text-align: center;
            font-size: xx-large;
            width: 468px;
        }
        .auto-style28 {
            border-style: solid;
            border-width: 1px;
            text-align: center;
            font-size: xx-large;
            width: 717px;
        }
        table
        {
            border:1px solid black;
        }
        .auto-style29 {
            text-align: center;
            color: #8C52FF;
            width: 80px;
        }
        .auto-style31 {
            color: #8C52FF;
            text-align: center;
            width: 337px;
        }
        .auto-style33 {
            text-align: center;
            color: #8C52FF;
            width: 404px;
        }
        .auto-style34 {
            text-align: center;
            width: 404px;
        }
        .auto-style35 {
            color: #8C52FF;
            width: 224px;
        }
        </style>
    <script>
        function ConfirmClear() {
            if (confirm("Are you sure you want to clear the fields?")) {
                document.getElementById('<%= SingleRID.ClientID %>').value = "";
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
        <td class="auto-style27">
            <br />
            <asp:Image ID="Image2" runat="server" Height="160px" ImageUrl="~/Room Images/singleLivingRoom.jpg" Width="225px" />
            <br />
            <br />
            <span class="showstandc"><strong>Room Areas</strong></span><br />
            <br />
            <asp:Image ID="Image3" runat="server" Height="160px" ImageUrl="~/Room Images/singleBathroom.jpg" Width="225px" />
        </td>
        <td class="auto-style28"><strong><span class="auto-style3">SINGLE ROOM TYPE</span><br />
            </strong>
            <asp:Image ID="Image1" runat="server" Height="330px" Width="450px" ImageUrl="~/Room Images/single.jpg" />
            <strong>
            <br />
            </strong></td>
        <td class="auto-style11">
            <strong>
            <span class="auto-style12"><span class="auto-style10">Room Description:</span> </span> </strong><span class="auto-style12">Ideal for 1-2 Person. Perfect for solo travelers or anyone seeking a comfortable and affordable stay. The room is furnished with a comfortable single bed, complete with crisp linens and plush pillows to ensure a restful night&#39;s sleep.<br />
            <br class="auto-style9" />
            <strong><span class="auto-style10">Room Price (Per Day):</span> </strong>1500php</span></td>
    </tr>
    </table>
<table class="auto-style1">
    <tr>
        <td class="auto-style29" rowspan="8"><asp:TextBox ID="TextBox2" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <div class="auto-style13">

                <asp:UpdatePanel runat="server">
                    <ContentTemplate>

                <asp:GridView ID="GridView1" runat="server" CellPadding="3" ForeColor="#8C52FF" HorizontalAlign="Center" BackColor="#8C52FF" BorderColor="#8C52FF" BorderWidth="5px">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#FFDE59" Font-Bold="True" ForeColor="#8C52FF" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                
                <asp:Timer ID="MyTimer" runat="server" Interval="1000" OnTick="MyTimer_Tick"></asp:Timer>
               

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            </td>
        <td class="auto-style33"><strong>Reservation</strong></td>
        <td class="auto-style35" rowspan="8">
            <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="~/Images/map.jpg" Width="300px" />
        </td>
        <td class="auto-style31"><strong>Cancellation</strong></td>
    </tr>
    <tr>
        <td class="auto-style33">&nbsp;</td>
        <td class="auto-style31">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style33"><strong>Check IN Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:TextBox ID="check_in" runat="server" TextMode="Date" OnTextChanged="check_in_TextChanged" AutoPostBack="True" ValidationGroup="reser"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="check_in" ErrorMessage="Please Choose a Check-In Date." CssClass="auto-style10" ValidationGroup="reser"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style31">
            <div class="showstandc2">
                <strong>Select Room ID to Cancel:&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:DropDownList ID="selectRName" runat="server" AppendDataBoundItems="True" DataSourceID="dsRoomID_Cancel" DataTextField="RoomID" DataValueField="RoomID" ValidationGroup="resercancel">
                <asp:ListItem Text="Select Room ID" Value="0" Selected="True"></asp:ListItem>
            </asp:DropDownList>

            </div>

            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="selectRName" CssClass="showstandc" ErrorMessage="Choose your Room ID" MaximumValue="3.1" MinimumValue="1.1" ValidationGroup="resercancel"></asp:RangeValidator>
            <strong>

            <asp:AccessDataSource ID="dsRoomID_Cancel" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM ReservationTBL WHERE ClientUsername = ?">
            <SelectParameters>
            <asp:SessionParameter Name="ClientUsername" SessionField="Username" />
            </SelectParameters>
            </asp:AccessDataSource>
        
            </strong>
            </td>
    </tr>
    <tr>
        <td class="auto-style33">
            <strong>Check OUT Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
            <asp:TextBox ID="check_out" runat="server" TextMode="Date" OnTextChanged="check_out_TextChanged" AutoPostBack="True" ValidationGroup="reser"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="check_out" ErrorMessage="Please Choose a Check-Out Date." CssClass="auto-style10" ValidationGroup="reser"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style31">
            <asp:Button ID="CancelSingle" runat="server" Text="Cancel" OnClick="CancelSingle_Click" ValidationGroup="resercancel" />
            </td>
    </tr>
    <tr>
        <td class="auto-style33"><strong>
            Room ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="SingleRID" runat="server" DataSourceID="dsRoomID" DataTextField="RoomID" DataValueField="RoomID" AppendDataBoundItems="True" CausesValidation="True" ValidationGroup="reser">
            <asp:ListItem Text="Select Room ID" Value="0" Selected="True"></asp:ListItem>
        </asp:DropDownList>

            <br />
            </strong>
        
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="SingleRID" ErrorMessage="Choose your Room ID" MaximumValue="1.6" MinimumValue="1.1" CssClass="showstandc" ValidationGroup="reser"></asp:RangeValidator>
        
            <strong>

            <asp:AccessDataSource ID="dsRoomID" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM HotelRooms WHERE CStr(RoomID) IN ('1.1', '1.2', '1.3', '1.4', '1.5', '1.6')"></asp:AccessDataSource>
        
            </strong>
        </td>
        <td class="auto-style31">&nbsp;<asp:Label ID="cancelConfirmation" runat="server" Text="Are you sure you want to cancel?" Visible="False" CssClass="auto-style10"></asp:Label>
            <br />
            <asp:Button ID="YesCancel" runat="server" OnClick="YesCancel_Click" Text="Yes" Visible="False" ValidationGroup="resercancel" />
            <asp:Button ID="NoCancel" runat="server" OnClick="NoCancel_Click" Text="No" Visible="False" />
        </td>
    </tr>
    <tr>
        <td class="auto-style33" rowspan="2"><strong>
            Total Number of Days:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="difference_box" runat="server" Enabled="False" ReadOnly="True" AutoPostBack="True" ValidationGroup="reser"></asp:TextBox>
        
            <br />
            <br />
            Total Bill:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:TextBox ID="total_box" runat="server" Enabled="False" AutoPostBack="True" ValidationGroup="reser"></asp:TextBox>
        </td>
        <td class="auto-style31">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34">
            <asp:Button ID="ReserveSingle" runat="server" Text="Reserve" OnClick="ReserveSingle_Click" ValidationGroup="reser" />
&nbsp;<asp:Button ID="ClearReserve" OnClientClick="return ConfirmClear();" runat="server" Text="Clear"/>
        </td>
        <td class="auto-style31">&nbsp;</td>
    </tr>
    </table>
</asp:Content>
