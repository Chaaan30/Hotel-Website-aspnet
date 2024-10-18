<%@ Page Title="" Language="C#" MasterPageFile="~/Reservation.Master" AutoEventWireup="true" CodeBehind="RoomSuite.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm11" %>
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
        .auto-style22 {
            text-align: center;
            height: 33px;
            width: 404px;
        }
        .auto-style23 {
            height: 33px;
            width: 337px;
        }
        .auto-style30 {
            font-size: medium;
            color: #8C52FF;
        }
        .auto-style31 {
            border-style: solid;
            border-width: 1px;
            text-align: center;
            font-size: xx-large;
            width: 468px;
        }
        .auto-style32 {
            border-style: solid;
            border-width: 1px;
            text-align: center;
            font-size: xx-large;
            width: 717px;
        }
        .auto-style33 {
            text-align: center;
            color: #8C52FF;
            width: 80px;
        }
        .auto-style34 {
            text-align: center;
            color: #8C52FF;
            width: 404px;
        }
        table
        {
            border:1px solid black;
        }
    .auto-style35 {
            color: #8C52FF;
            text-align: center;
            width: 337px;
        }
        .auto-style36 {
            text-align: center;
            width: 337px;
        }
        .auto-style37 {
            color: #8C52FF;
            width: 224px;
            }
    </style>
    <script>
        function ConfirmClear() {
            if (confirm("Are you sure you want to clear the fields?")) {
                document.getElementById('<%= SuiteRID.ClientID %>').value = "";
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
        <td class="auto-style31">
            <br />
            <asp:Image ID="Image2" runat="server" Height="160px" ImageUrl="~/Room Images/suiteLivingRoom.jpg" Width="225px" />
            <br />
            <br />
            <span class="showstandc"><strong>Room Areas</strong></span><br />
            <br />
            <asp:Image ID="Image3" runat="server" Height="160px" ImageUrl="~/Room Images/suiteBathroom.jpg" Width="225px" />
        </td>
        <td class="auto-style32"><strong><span class="auto-style3">SUITE ROOM TYPE</span><br />
            </strong>
            <asp:Image ID="Image1" runat="server" Height="330px" Width="450px" ImageUrl="~/Room Images/suite.jpg" />
            <strong>
            <br />
            </strong></td>
        <td class="auto-style11">
            <strong>
            <span class="auto-style30">Room Description: </span> </strong><span class="auto-style12">Ideal for 4-8 or more persons. With its luxurious amenities and breathtaking views, our suite is the perfect choice for discerning travelers seeking the ultimate in comfort and relaxation. The separate bedroom features a comfortable king-size bed, complete with luxurious linens and fluffy pillows, ensuring a restful night&#39;s sleep.<br />
            <br class="auto-style9" />
            <span class="auto-style10">
            <strong>Room Price (Per Day): </strong></span>5000php</span></td>
    </tr>
    </table>
<table class="auto-style1">
    <tr>
        <td class="auto-style33" rowspan="8"><asp:TextBox ID="TextBox2" runat="server" Enabled="False" Visible="False"></asp:TextBox>
            <div class="auto-style13">
            <asp:UpdatePanel runat="server">
                    <ContentTemplate>

                        <asp:GridView ID="GridView3" runat="server" BackColor="#8C52FF" BorderColor="#8C52FF" BorderStyle="Solid" BorderWidth="5px" CellPadding="3" ForeColor="Black" HorizontalAlign="Center">
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
        <td class="auto-style34"><strong>Reservation</strong></td>
        <td class="auto-style37" rowspan="8">
            <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="~/Images/map.jpg" Width="300px" />
        </td>
        <td class="auto-style35"><strong>Cancellation</strong></td>
    </tr>
    <tr>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style35">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"><strong>Check IN Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:TextBox ID="check_in" runat="server" TextMode="Date" OnTextChanged="check_in_TextChanged" AutoPostBack="True" ValidationGroup="resers"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="check_in" ErrorMessage="Please Choose a Check-In Date." CssClass="showstandc" ValidationGroup="resers"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style35"><strong>Select Room ID to Cancel:&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="selectRName" runat="server" AppendDataBoundItems="True" DataSourceID="dsRoomID_Cancel" DataTextField="RoomID" DataValueField="RoomID" ValidationGroup="resercancel">
                <asp:ListItem Text="Select Room ID" Value="0" Disabled="True" Selected="True"></asp:ListItem>
            </asp:DropDownList>

            <br />
        
            </strong>

            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="selectRName" CssClass="showstandc" ErrorMessage="Choose your Room ID" MaximumValue="3.1" MinimumValue="1.1" ValidationGroup="resercancel"></asp:RangeValidator>
            <strong>

            <asp:AccessDataSource ID="dsRoomID_Cancel" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM ReservationTBL WHERE ClientUsername = ?">
            <SelectParameters>
            <asp:SessionParameter Name="ClientUsername" SessionField="Username" />
            </SelectParameters>
            </asp:AccessDataSource>
        
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style34">
            <strong>Check OUT Date:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="check_out" runat="server" TextMode="Date" OnTextChanged="check_out_TextChanged" AutoPostBack="True" ValidationGroup="resers"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="check_out" ErrorMessage="Please Choose a Check-Out Date." CssClass="showstandc" ValidationGroup="resers"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style36">
            <asp:Button ID="cancelSuite" runat="server" Text="Cancel" OnClick="cancelSuite_Click" ValidationGroup="resercancel" />
            </td>
    </tr>
    <tr>
        <td class="auto-style34"><strong>
            Room ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="SuiteRID" runat="server" DataSourceID="dsRoomID" DataTextField="RoomID" DataValueField="RoomID" AppendDataBoundItems="True" ValidationGroup="resers">
            <asp:ListItem Text="Select Room ID" Value="0" Disabled="True" Selected="True"></asp:ListItem>
        </asp:DropDownList>

            <br />
            </strong>
        
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="SuiteRID" ErrorMessage="Choose your Room ID" MaximumValue="3.1" MinimumValue="3.1" CssClass="showstandc" ValidationGroup="resers"></asp:RangeValidator>
        
            <strong>

            <asp:AccessDataSource ID="dsRoomID" runat="server" DataFile="~/App_Data/DBMP5.accdb" SelectCommand="SELECT DISTINCT RoomID FROM HotelRooms WHERE CStr(RoomID) IN ('3.1')"></asp:AccessDataSource>
        
            </strong></td>
        <td class="auto-style36"><asp:Label ID="cancelConfirmationSuite" runat="server" Text="Are you sure you want to cancel?" Visible="False" CssClass="showstandc"></asp:Label>
            <br />
            <asp:Button ID="YesCancel_suite" runat="server" OnClick="YesCancel_Click" Text="Yes" Visible="False" ValidationGroup="resercancel" />
            <asp:Button ID="NoCancel_suite" runat="server" OnClick="NoCancel_Click" Text="No" Visible="False" />
        </td>
    </tr>
    <tr>
        <td class="auto-style34" rowspan="2"><strong>Total Number of Days:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="difference_box" runat="server" Enabled="False" ReadOnly="True" AutoPostBack="True" ValidationGroup="resers"></asp:TextBox>
        
            <br />
            <br />
            Total Bill:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:TextBox ID="total_box" runat="server" Enabled="False" AutoPostBack="True" ValidationGroup="resers"></asp:TextBox>
        </td>
        <td class="auto-style36">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style36">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">
            <asp:Button ID="ReserveSuite" runat="server" Text="Reserve" OnClick="ReserveSuite_Click" ValidationGroup="resers" />
            &nbsp;<asp:Button ID="CancelReserveSuite" runat="server" Text="Clear" OnClientClick="return ConfirmClear();" />
        </td>
        <td class="auto-style23"></td>
    </tr>
    </table>
</asp:Content>
