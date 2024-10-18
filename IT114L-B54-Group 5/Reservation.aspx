<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 286px;
        }
        .auto-style6 {
            height: 22px;
            width: 286px;
        }
        .auto-style7 {
            width: 296px;
        }
        .auto-style8 {
            height: 22px;
            width: 296px;
        }
        .auto-style9 {
            color: #8C52FF;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-align: center;
        }
        .modal {
			display: none;
			position: fixed;
			z-index: 1;
			left: 0;
			top: 0;
			width: 100%;
			height: 100%;
			overflow: auto;
			background-color: rgba(0, 0, 0, 0.4);
		}

		.modal-content {
			background-color: #fefefe;
			margin: 15% auto;
			padding: 20px;
			border: 1px solid #888;
			width: 80%;
			max-width: 600px;
		}

		.close {
			color: #aaa;
			float: right;
			font-size: 28px;
			font-weight: bold;
		}

		.close:hover,
		.close:focus {
			color: black;
			text-decoration: none;
			cursor: pointer;
		}
        .auto-style12 {
            text-align: center;
            color: #8C52FF;
            height: 23px;
        }
        .auto-style13 {
            height: 22px;
            color: #8C52FF;
            font-size: x-large;
        }
        .auto-style14 {
            color: #8C52FF;
            font-size: x-large;
        }
        .auto-style15 {
            text-align: left;
            color: #8C52FF;
            height: 23px;
            font-size: x-large;
        }
        .auto-style17 {
            color: #3A00B5;
        }
        .auto-style18 {
            color: #3A00B5;
            font-size: xx-large;
        }
        .auto-style19 {
            text-align: right;
            height: 30px;
        }
        .auto-style20 {
            height: 30px;
        }
        .auto-style21 {
            font-size: small;
        }
    </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style3">
            <tr>
                <td colspan="3" class="auto-style11"><strong>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style18" Text="RESERVATION"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="3">
                    <strong>
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style9" Text="&quot;Come as a guest, leave as a friend, our hotel's hospitality never ends.&quot;"></asp:Label>
                    <br />
                    <br />
                    <asp:LinkButton runat="server" OnClick="Terms_Click"  OnClientClick="openModal(); return false;" CssClass="auto-style9" >Show Terms and Conditions</asp:LinkButton>
	                 </strong>
	                 <div id="myModal" class="modal">
		                <div class="modal-content">
			                <span class="close" onclick="closeModal()">&times;</span>
			                <h2>Terms and Conditions</h2>
			                <p><b>Once you click "Reserve" you AGREE to our Terms and Conditions</b></p>
                            <p>1. Reservation Process: The online hotel reservation process allows you to reserve a room or suite at the selected hotel. The reservation will be confirmed by the admin.
                            </p>
                            <p>2. Personal Information: By making a reservation, you agree to provide accurate and complete personal information, including your name, address, and payment information. The hotel reserves the right to request additional identification or payment verification on-site.
                            </p>
                            <p>3. Damage Policy: The hotel's on-site manager reserves the right to charge guests for any damage to the hotel property or contents caused by the guest or their visitors, please consult with the on-site manager for more details.
                            </p>
                            <p>4. Transaction Policy: We only take reservations from exclusive registered clients. There is no reservation payment as we only accept reservations through the online website.   
                            </p>
                            <p>5. Payment Process:  We do not accept any type of transaction online. Your transaction or mode of payment (Cash, Card, etc.) shall be processed once you enter the hotel. Upon entry inside the hotel, our exclusive clients will be escorted to the reception hall by our staff to settle their payments on-site. For more information, please ask the on-site hotel's receptionist. 
                            </p>
                            <p>6. These terms and conditions constitute the entire agreement between the clients and the hotel only. This conditions overrule all prior agreements or misunderstandings made by any party (ex: staff, manager, clients, admin, etc.) whether written or oral.</p>
		                </div>
	                </div>
	                <script>
                        var modal = document.getElementById("myModal");

                        function openModal() {
                            modal.style.display = "block";
                        }

                        function closeModal() {
                            modal.style.display = "none";
                        }

                        window.onclick = function (event) {
                            if (event.target == modal) {
                                closeModal();
                            }
                        }
                    </script>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="3">
                    <hr /></td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="3">
                    <strong>Single Room</strong></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Images/single.jpg" Width="300px" />
                </td>
                <td class="auto-style7"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text="Room Type:"></asp:Label>
                    </strong>
                    <br />
                    <span class="auto-style9"><strong>Single Room</strong></span><br />
                    <strong>
                    <br />
                    <span class="auto-style17">Room Description:</span><br />
                    <span class="auto-style9">-1 Single Bed</span><br class="auto-style9" />
                    <span class="auto-style9">-Balcony</span><br class="auto-style9" />
                    <span class="auto-style9">-Mini Fridge</span><br class="auto-style9" />
                    <span class="auto-style9">-Ideal for 1-2 Persons</span></strong><br />
                    <br />
                    <strong>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style17" Text="Price per day: "></asp:Label>
                    <br />
                    <span class="auto-style9">-P1500</span></strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label14" runat="server" Text="Check In  Date:"></asp:Label>
                    </strong>&nbsp;<asp:TextBox ID="CI1" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CI1" ErrorMessage="Please choose check in date." ForeColor="#8C52FF" ValidationGroup="val1"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <strong>
                    <asp:Label ID="Label15" runat="server" Text="Check Out Date:"></asp:Label>
                    </strong>&nbsp;<asp:TextBox ID="CO1" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="CO1" ErrorMessage="Please choose check out date." ForeColor="#8C52FF" ValidationGroup="val1"></asp:RequiredFieldValidator>
                    <br />
                    <br />
&nbsp;<strong><asp:Label ID="Label16" runat="server" Text="Days:"></asp:Label>
                    </strong><br />
                    <asp:TextBox ID="tutal1" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <strong>Total:</strong><br />
                    <asp:TextBox ID="TotalSing" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <strong>Username:</strong><br />
                    <asp:TextBox ID="Usname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Usname" ErrorMessage="Username cannot be blank." ForeColor="#8C52FF" ValidationGroup="val1" CssClass="auto-style9"></asp:RequiredFieldValidator>
                    <br />
                    <strong>RoomID:</strong><br />
                    <asp:TextBox ID="Roomid" runat="server" MaxLength="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Roomid" Display="Dynamic" ErrorMessage="Room ID cannot be blank." ForeColor="#8C52FF" ValidationGroup="val1"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="Roomid" Display="Dynamic" ErrorMessage="Please type a valid ID." ForeColor="#8C52FF" MaximumValue="1.6" MinimumValue="1.1" Type="Double" ValidationGroup="val2"></asp:RangeValidator>
                    <br />
                    <strong>Room Name:</strong><br />
                    <asp:TextBox ID="romnam" runat="server" MaxLength="5" ValidationGroup="val1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="romnam" Display="Dynamic" ErrorMessage="Room Name cannot be blank." ForeColor="#8C52FF" ValidationGroup="val1"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="romnam" Display="Dynamic" ErrorMessage="Please type a valid Name." ForeColor="#8C52FF" MaximumValue="DL106" MinimumValue="DL101" ValidationGroup="val1"></asp:RangeValidator>
                    &nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:GridView ID="GridView1" runat="server">
    <HeaderStyle BackColor="#8c52ff" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Button ID="SRoom" runat="server" OnClick="SRoom_Click" Text="Show Single Room Available" />
                    &nbsp;<asp:Button ID="HideS" runat="server" OnClick="HideS_Click" Text="Hide Single Room Menu" />
                    &nbsp;<asp:Button ID="CalculateS" runat="server" OnClick="CalculateS_Click" Text="Calculate Days and Total" ValidationGroup="val1" />
                &nbsp;<asp:Button ID="Reservation_Reserve0" runat="server" OnClick="Reservation_Reserve_Click" Text="Reserve" ValidationGroup="val1" />

                &nbsp;<asp:Button ID="cansing" runat="server" OnClick="cansing_Click" Text="Clear" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr /></td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="3">
                    <strong>Double Room</strong></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Image ID="Image3" runat="server" Height="300px" ImageUrl="~/Images/double.jpg" Width="300px" />
                </td>
                <td class="auto-style8"><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style17" Text="Room Type: "></asp:Label>
                    </strong>
                    <br />
                    <span class="auto-style9"><strong>Double</strong></span><br />
                    <br />
                    <strong>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style17" Text="Room Description: "></asp:Label>
                    <br />
                    <span class="auto-style9">2 Single Beds</span><br class="auto-style9" />
                    <span class="auto-style9">-Balcony</span><br class="auto-style9" />
                    <span class="auto-style9">-Mini Fridge</span><br class="auto-style9" />
                    <span class="auto-style9">-Ideal for 2-4 Persons</span></strong><br />
                    <br />
                    <strong>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style17" Text="Price per day: "></asp:Label>
                    <br />
                    <span class="auto-style9">-P2500</span></strong></td>
                <td class="auto-style4">
                    <strong>Check</strong> <strong>In</strong> <strong>Date:</strong><asp:TextBox ID="CI2" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="CI2" ErrorMessage="Please choose check in date." ForeColor="#8C52FF" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <strong>Check</strong> <strong>Out</strong> <strong>Date:</strong><asp:TextBox ID="CO2" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="CO2" ErrorMessage="Please choose check out date." ForeColor="#8C52FF" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <strong>Days:</strong><br />
                    <asp:TextBox ID="tutal2" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <strong>Total:</strong><br />
                    <asp:TextBox ID="TotalDoub" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <strong>Username:</strong><br />
                    <asp:TextBox ID="Usname2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Usname2" ErrorMessage="Username cannot be blank." ForeColor="#8C52FF" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    <br />
                    <strong>RoomID:</strong><br />
                    <asp:TextBox ID="roomid2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="roomid2" Display="Dynamic" ErrorMessage="Room ID cannot be blank." ForeColor="#8C52FF" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="roomid2" Display="Dynamic" ErrorMessage="Please type a valid ID." ForeColor="#8C52FF" MaximumValue="2.3" MinimumValue="2.1" Type="Double" ValidationGroup="val2"></asp:RangeValidator>
                    <br />
                    <strong>Room Name:</strong><br />
                    <asp:TextBox ID="romnamd" runat="server" ValidationGroup="val2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="romnamd" Display="Dynamic" ErrorMessage="Room Name cannot be blank." ForeColor="#8C52FF" ValidationGroup="val2"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="romnamd" Display="Dynamic" ErrorMessage="Please type a valid Name." ForeColor="#8C52FF" MaximumValue="DL203" MinimumValue="DL201" ValidationGroup="val2"></asp:RangeValidator>
                    <br />
                    <br />
                    <asp:GridView ID="GridView3" runat="server">
                    <HeaderStyle BackColor="#8c52ff" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Button ID="DRoom" runat="server" OnClick="DRoom_Click" Text="Show Double Room Available" />
                    &nbsp;<asp:Button ID="Hided" runat="server" OnClick="Hided_Click" Text="Hide Double Room Menu" />
&nbsp;<asp:Button ID="CalculateD" runat="server" OnClick="CalculateD_Click" Text="Calculate Days and Total" ValidationGroup="val2" />
	                <div id="myModal2" class="modal">
		                <div class="modal-content">
			                <span class="close" onclick="closeModal()">&times;</span>
			                <h2>Terms and Conditions</h2>
			                <p><b>Once you click "Reserve" you AGREED to this Terms and Conditions</b></p>
                            <p>1. Reservation Process: The online hotel reservation process allows you to reserve a room or suite at the selected hotel. The reservation will be confirmed by the admin.
                            </p>
                            <p>2. Personal Information: By making a reservation, you agree to provide accurate and complete personal information, including your name, address, and payment information. The hotel reserves the right to request additional identification or payment verification on-site.
                            </p>
                            <p>3. Damage Policy: The hotel's on-site manager reserves the right to charge guests for any damage to the hotel property or contents caused by the guest or their visitors, please consult with the on-site manager for more details.
                            </p>
                            <p>4. Transaction Policy: We only take reservations from exclusive registered clients. There is no reservation payment as we only accept reservations through the online website.   
                            </p>
                            <p>5. Payment Process:  We do not accept any type of transaction online. Your transaction or mode of payment (Cash, Card, etc.) shall be processed once you enter the hotel. Upon entry inside the hotel, our exclusive clients will be escorted to the reception hall by our staff to settle their payments on-site. For more information, please ask the on-site hotel's receptionist. 
                            </p>
                            <p>6. These terms and conditions constitute the entire agreement between the clients and the hotel only. This conditions overrule all prior agreements or misunderstandings made by any party (ex: staff, manager, clients, admin, etc.) whether written or oral.</p>
		                </div>
	                </div>
	                <script>
                        var modal = document.getElementById("myModal");

                        function openModal() {
                            modal.style.display = "block";
                        }

                        function closeModal() {
                            modal.style.display = "none";
                        }

                        window.onclick = function (event) {
                            if (event.target == modal) {
                                closeModal();
                            }
                        }
                    </script>
                    &nbsp;<asp:Button ID="Reservedoub" runat="server" OnClick="Reservedoub_Click" Text="Reserve" ValidationGroup="val2" />
                    &nbsp;<asp:Button ID="candoub" runat="server" OnClick="candoub_Click" Text="Clear" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <hr /></td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="3">
                    <strong>Suite</strong></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Images/suite.jpg" Width="300px" />
                </td>
                <td class="auto-style7"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style17" Text="Room Type: "></asp:Label>
                    <br />
                    <span class="auto-style9">-Suite</span></strong><br />
                    <br />
                    <strong>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Room Description: "></asp:Label>
                    <br />
                    <span class="auto-style9">-Bedroom 1: Large Double Bed</span><br class="auto-style9" />
                    <span class="auto-style9">-Bedroom 2: 2 Single Bed</span><br class="auto-style9" />
                    <span class="auto-style9">-Living room: 1 Sofa Bed</span><br class="auto-style9" />
                    <span class="auto-style9">-Kitchen</span><br class="auto-style9" />
                    <span class="auto-style9">-Balcony</span><br class="auto-style9" />
                    <span class="auto-style9">-Fridge</span><br class="auto-style9" />
                    <span class="auto-style9">-Ideal for 1 Family(7-8 Persons)</span></strong><br />
                    <br />
                    <strong>
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="Price per day: "></asp:Label>
                    <br />
                    <span class="auto-style9">-P5000</span></strong></td>
                <td>
                    <strong>Chech In Date:</strong><asp:TextBox ID="CI3" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="CI3" ErrorMessage="Please choose check in date." ForeColor="#8C52FF" ValidationGroup="val3"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <strong>Check Out Date:</strong><asp:TextBox ID="CO3" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="CO3" ErrorMessage="Please choose check out date." ForeColor="#8C52FF" ValidationGroup="val3"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <strong>Days:</strong><br />
                    <asp:TextBox ID="tutal3" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <strong>Total:</strong><br />
                    <asp:TextBox ID="TotaVIP" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <strong>Username:</strong><br />
                    <asp:TextBox ID="Usname3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Usname3" ErrorMessage="Username cannot be blank." ForeColor="#8C52FF" ValidationGroup="val3"></asp:RequiredFieldValidator>
                    <br />
                    <strong>RoomID:</strong><br />
                    <asp:TextBox ID="rOomid3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="rOomid3" Display="Dynamic" ErrorMessage="Room ID cannot be blank." ForeColor="#8C52FF" ValidationGroup="val3"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="rOomid3" Display="Dynamic" ErrorMessage="Please type a valid ID." ForeColor="#8C52FF" MaximumValue="3.1" MinimumValue="3.1" Type="Double" ValidationGroup="val2"></asp:RangeValidator>
                    <br />
                    <strong>Room Name:</strong><br />
                    <asp:TextBox ID="romnamvip" runat="server" ValidationGroup="val3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="romnamvip" Display="Dynamic" ErrorMessage="Room Name cannot be blank." ForeColor="#8C52FF" ValidationGroup="val3"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="romnamvip" Display="Dynamic" ErrorMessage="Please type a valid Name." ForeColor="#8C52FF" MaximumValue="DLVIP" MinimumValue="DLVIP" ValidationGroup="val3"></asp:RangeValidator>
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server">
                    <HeaderStyle BackColor="#8c52ff" />
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:Button ID="VIPRoom" runat="server" OnClick="VIPRoom_Click" Text="Show Suite Room Available" />
                &nbsp;<asp:Button ID="HideVIP" runat="server" OnClick="HideVIP_Click" Text="Hide Suite Room Menu" />
                &nbsp;<asp:Button ID="CalculateVIP" runat="server" OnClick="CalculateVIP_Click" Text="Calculate Days and Total" ValidationGroup="val3" />
	                <div id="myModal3" class="modal">
		                <div class="modal-content">
			                <span class="close" onclick="closeModal()">&times;</span>
			                <h2>Terms and Conditions</h2>
			                <p><b>Once you click "Reserve" you AGREED to this Terms and Conditions</b></p>
                            <p>1. Reservation Process: The online hotel reservation process allows you to reserve a room or suite at the selected hotel. The reservation will be confirmed by the admin.
                            </p>
                            <p>2. Personal Information: By making a reservation, you agree to provide accurate and complete personal information, including your name, address, and payment information. The hotel reserves the right to request additional identification or payment verification on-site.
                            </p>
                            <p>3. Damage Policy: The hotel's on-site manager reserves the right to charge guests for any damage to the hotel property or contents caused by the guest or their visitors, please consult with the on-site manager for more details.
                            </p>
                            <p>4. Transaction Policy: We only take reservations from exclusive registered clients. There is no reservation payment as we only accept reservations through the online website.   
                            </p>
                            <p>5. Payment Process:  We do not accept any type of transaction online. Your transaction or mode of payment (Cash, Card, etc.) shall be processed once you enter the hotel. Upon entry inside the hotel, our exclusive clients will be escorted to the reception hall by our staff to settle their payments on-site. For more information, please ask the on-site hotel's receptionist. 
                            </p>
                            <p>6. These terms and conditions constitute the entire agreement between the clients and the hotel only. This conditions overrule all prior agreements or misunderstandings made by any party (ex: staff, manager, clients, admin, etc.) whether written or oral.</p>
		                </div>
	                </div>
	                <script>
                        var modal = document.getElementById("myModal");

                        function openModal() {
                            modal.style.display = "block";
                        }

                        function closeModal() {
                            modal.style.display = "none";
                        }

                        window.onclick = function (event) {
                            if (event.target == modal) {
                                closeModal();
                            }
                        }
                    </script>
                &nbsp;<asp:Button ID="resVIP" runat="server" OnClick="resVIP_Click" Text="Reserve" ValidationGroup="val3" />
&nbsp;<asp:Button ID="cancelVIP" runat="server" OnClick="cancelVIP_Click" Text="Clear" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3"><hr /></td>
            </tr>
            </table>
    <br />
    <br />
    <table class="auto-style3">
        <tr>
            <td class="auto-style12" colspan="3"><hr /></td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3"><strong>Check Room Reservation and Cancellation of Rooms<br />
                <span class="auto-style21">*Please Enter your username to check your own room reservations.</span></strong></td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Username:</strong></td>
            <td class="auto-style20">
                <asp:TextBox ID="showshow" runat="server" ValidationGroup="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="showshow" CssClass="auto-style9" ErrorMessage="Username cannot be blank" ValidationGroup="4"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style20">
                <strong>Room Name:</strong>
                <asp:TextBox ID="Roomidd" runat="server" MaxLength="5" ValidationGroup="5" CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="Roomidd" CssClass="auto-style9" ErrorMessage="Room Name cannot be blank" ValidationGroup="5" Display="Dynamic"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Showrom" runat="server" OnClick="Showrom_Click" Text="Show Room/s Reserved Menu" ValidationGroup="4" />
&nbsp;<asp:Button ID="Hidvip" runat="server" OnClick="Hidvip_Click" Text="Hide Menu" ValidationGroup="4" />
&nbsp;&nbsp;&nbsp;</td>
            <td>
                <asp:Button ID="kansel" runat="server" OnClick="kansel_Click" Text="Cancel Room" ValidationGroup="4" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:GridView ID="GridView4" runat="server" HorizontalAlign="Center">
                <HeaderStyle BackColor="#8c52ff" />
                </asp:GridView>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

