<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="HotelAreas.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
                .marginbot{
            padding-bottom: 170px;
            position: relative;
            width: 100%;
        }
        .img2{
            background-size:  cover;
            background-repeat: no-repeat;
            background-image: url("HotelArea.png");
            background-attachment: fixed;
            min-height: 500px;

        }
        .header2{
            background-color: 	#EEEEEE ;
        }

        .Facily{
            font-size: 2em;
            letter-spacing: 1px;
            font-weight: normal;
            line-height: 0;
            position: relative;
            text-align: center;
            font-family: 'Microsoft Sans Serif';
        }
        .amenities{
            font-size: 3em;
            letter-spacing: 1px;
            font-weight: normal;
            line-height: 0;
            position: relative;
            text-align: center;
            font-family: 'Sans Serif Collection';
        }
        .container {
          display: grid;
          grid-template-columns: 50px 1px;
          grid-gap: 0px;
          align-items: center;
          padding-right: 35%;
          justify-content: center;
        }

        img {
          max-width: 700%;
          max-height:300%;
        }

        div{
            display:block;
        }

        p.aboutuspara{
          position: sticky;
          width: 300px;
          padding: 10px;

        }

        .elementor-heading-title {
            color: #b59753;
            font-size: 1.2em;
            font-weight: 600;
            letter-spacing: 1px;
            font-family: sans-serif;
        }
        
        .auto-style2 {
            text-align: center;
            width: 100%;
        }
        .auto-style6 {
        
        text-align: center;
        color: #ffffff;
        font-size: 5.2em;
        font-weight: 900;
        text-transform: uppercase;
        line-height: 1em;
        letter-spacing: 6px;
        text-shadow: 0px 0px 30px #000000;

    }
        .auto-style8 {
            width: 100%;
            height: 100%
        }
        .auto-style9 {
            text-align: center;
            height: 610px;
        }
        .auto-style15 {
            font-size: 36pt;
            letter-spacing: 1px;
            line-height: 1;
            font-weight: normal;
            position: relative;
            text-align: center;
            font-family: 'Sans Serif Collection';
        }
        .auto-style18 {
            padding-bottom: 170px;
            position: relative;
            width: 100%;
            left: 0px;
            top: 0px;
            height: 1px;
        }
        .img4{
            width: 400px;
            height: 600px;
            float: right;
        }
        .img3 {
            max-width: 250px;
            max-height: 290px;
            width: 250px;
            height: 290px;
            display: block;
            filter: brightness(80%);
        }

        #MainDiv {
            height: 295px;
            width: 100%;
            display: flex;
            /* here is a concept */
            flex-direction: row;
            /* you can either change it to row/columns */
            padding: 5px;
            place-content: center;
        }
        #MainDiv2 {
            height: 300px;
            width: 100%;
            display: flex;
            /* here is a concept */
            flex-direction: row;
            /* you can either change it to row/columns */
            padding: 5px;
            place-content: center;
        }

        .overlay {
          position: absolute;
          top: 0;
          bottom: 0;
          left: 0;
          right: 0;
          height: 290px;
          width: 250px;
          opacity: 0;
          transition: .5s ease;
          background-color: rgb(255 203 112);
        }

        .text {
            color: white;
            font-size: 20px;
            font-family: sans-serif;
            position: absolute;
            top: 50%;
            left: 50%;
            font: bold;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            text-align: center;
        }
        #firstDiv {
            width: 250px;
            margin: 5px;
            position: relative;
        }

        #secondDiv {
          width: 250px;
          margin: 5px;
          position: relative;
        }

        #thirdDiv {
          width: 250px;
          margin: 5px;
          position: relative;
        }
        
        #fourthDiv{
          width: 250px;
          margin: 5px;
          position: relative;
        }

        #firstDiv:hover .overlay{
          opacity: 0.5;

        }
        #secondDiv:hover .overlay{
          opacity: 0.5;
        }

        #thirdDiv:hover .overlay{
          opacity: 0.5;
        }

        #fourthDiv:hover .overlay{
          opacity: 0.5;
        }

        #firstDiv2 {
          width: 250px;
          margin: 5px;
          position: relative;
        }

        #secondDiv2 {
          width: 250px;
          margin: 5px;
          position: relative;
        }

        #thirdDiv2 {
          width: 250px;
          margin: 5px;
          position: relative;
        }
        
        #fourthDiv2 {
          width: 250px;
          margin: 5px;
          position: relative;
        }

        #firstDiv2:hover .overlay{
          opacity: 0.5;
        }
        #secondDiv2:hover .overlay{
          opacity: 0.5;
        }

        #thirdDiv2:hover .overlay{
          opacity: 0.5;
        }

        #fourthDiv2:hover .overlay{
          opacity: 0.5;
        }
        .auto-style19 {
            font-family: sans-serif;
            font-size: 16pt;
            color: #d6ba49;
            letter-spacing: 1px;
            font-weight: 600;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="header2">
            <div class="img2">
               <div class="auto-style6">
                   <div class="auto-style18"></div>
                <strong>Hotel Areas</strong></div> 
                <div><center class="auto-style20">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style19" Text="Providing anything anywhere you go"></asp:Label>
                    </center></div>
            </div>

            <div class="auto-style2">
                        
                    <table class="auto-style8">
                    <tr>
                        <td class="auto-style9">
                            <div class="auto-style2">
                </div>

            <div id="MainDiv">
              <div id="firstDiv">
                  <img src="~/Images/grocerystore.jpg" runat="server" class="img3" />
                  <div class="overlay"></div>
                  <div class="text">Grocery Store</div>
              </div>
              <div id="secondDiv">
                  <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/CanteenRoom.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Canteen Room</div>
              </div>
              <div id="thirdDiv">
                  <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/LobbyArea.jpg"  class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Lobby Area</div>
                  
              </div>
              <div id="fourthDiv">
                  <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/Entrance.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Entrance Area</div>
              </div>
            </div>
            <div id="MainDiv2">
              <div id="firstDiv2">
                  <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/PoolSide.jpg"  class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Pool Side</div>
              </div>
              <div id="secondDiv2">
                  <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/gymarea.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Gym Area</div>
              </div>
              <div id="thirdDiv2">
                  <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Restroom.jpg"  class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Restroom</div>
              </div>
              <div id="fourthDiv2">
                  <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/parkingarea.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Parking Area</div>
              </div>
            </div>
            <div>
                &nbsp
            </div>
           </td>
          </tr>
         </table>
        </div>
       </div>
                <h2 class="auto-style19">
                    <center><asp:Label ID="Label3" runat="server" Text="Ready to reserve a room now?" CssClass="auto-style15"></asp:Label></center>
                </h2>
            <br />
            <div>
                <center>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style19" PostBackUrl="~/Registration.aspx">Register</asp:LinkButton>
                &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style19" PostBackUrl="~/SignIn.aspx">Login</asp:LinkButton>
                </center>
            </div>
            <div>
                &nbsp
            </div>


</asp:Content>
