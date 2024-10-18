<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true"  CodeBehind="AfterSignIn_Homepage.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm6" %>
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
            background-image: url("hotel101.jpg");
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
            width: 50%;
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
        .auto-style16 {
            text-align: justify;
        }
        .auto-style17 {
            color: #d6ba49;
            font-size: 16pt;
            font-weight: 600;
            letter-spacing: 1px;
            font-family: sans-serif;
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
            font-size: 15pt;
        }
        .auto-style20 {
            color: #FFFFFF;
        }
        .auto-style22 {
            color: #D6BA49;
            font-size: 1.2em;
            font-weight: 600;
            letter-spacing: 1px;
            font-family: sans-serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    
    <div class="header2">
            <div class="img2">
               <div class="auto-style6">
                   <div class="auto-style18"></div>
                <strong>Ready to reserve now?</strong></div> 
                <div><center class="auto-style20">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style17" PostBackUrl="~/RoomSingle.aspx">Click Here!</asp:LinkButton>
                    </center></div>
            </div>

            <div class="auto-style2">
			    <h2>
                    <asp:Label ID="Label2" runat="server" Text="About Us" CssClass="auto-style15"></asp:Label>
                </h2>
                <p>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style17" Text="Born to be the best"></asp:Label>
                </p>
                        
                    <table class="auto-style8">
                    <tr>
                        <td class="auto-style9">
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/DeLuna.jpeg" class="img4" />
                        </td>
                        <td class="auto-style16">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Hotel De Luna is located in the middle of Cabuyao City, nearby Jollibee, Pulo. We are an Exclusive Hotel designed only for registered clients. Our hotel theme is inspired by the moon. 10 rooms which included 6 Single room, 3 Double room, 1 Suite room. Each room have private toilet full with 3 star amenities, a best quality of bed for your comfortable sleep, the only hotel using SMART TV in all room provided high speed internet speed of 800mbps, streaming online movie is faster than you can imagine. 24 hour front desk service come with stylish reception counter, full ventilation in each room make you feel relax & fresh inside the room. We are facing main road, is easy access by taxi or grab car services, walking distant to market, 7/11 convenience store, Lazada Warehouse, shuttle of MMCL, Tricycle Terminal, and etc. Give yourself a chance to try a night here, you will love it……. we will see you soon." height="80%" Width="65%" class="auto-style10" CssClass="auto-style19"></asp:Label>
                        </td>
                    </tr>
                    </table>
            </div>
         </div>         


            <div class="auto-style2">
                <h2 class="amenities">The Amenities</h2>
                <p class="auto-style22">Providing hospitality the best way</p>	
                </div>

            <div id="MainDiv">
              <div id="firstDiv">
                  <img src="~/Images/tower.jpg" runat="server" class="img3" />
                  <div class="overlay"></div>
                  <div class="text">Linens</div>
              </div>
              <div id="secondDiv">
                  <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/bathroom.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Bath Room</div>
              </div>
              <div id="thirdDiv">
                  <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/centralizeWaterHeater.jpg"  class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Centralize Hot & Cool Water</div>
                  
              </div>
              <div id="fourthDiv">
                  <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/showerItems.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Shampoo, Shower Gel, Soap and Sanatary bag</div>
              </div>
            </div>
            <div id="MainDiv2">
              <div id="firstDiv2">
                  <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/coffeeTime.jpg"  class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Sidedesk</div>
              </div>
              <div id="secondDiv2">
                  <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/waterDispenser.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Hot & Cool Water Dispenser</div>
              </div>
              <div id="thirdDiv2">
                  <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/smartTV.jpg"  class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">Smart TV</div>
              </div>
              <div id="fourthDiv2">
                  <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/frontdeskService.jpg" class="img3" width="250px" Height="290px" />
                  <div class="overlay"></div>
                  <div class="text">24Hour Front Desk Services</div>
              </div>
            </div>
            <div>
                &nbsp
            </div>

</asp:Content>