<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
          background-image: url('hotelsigninbg.jpg');
          background-repeat: no-repeat;
          background-size: cover;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
            border: 2px solid #8C52FF;
        }
        .auto-style3 {
            height: 27px;
            text-align: center;
            background-color: #8C52FF;
        }
        .auto-style7 {
            width: 39%;
        }
        .auto-style8 {
            width: 361px;
        }
        .auto-style9 {
            color: #7B3CFF;
        }
        .auto-style10 {
            background-color: #FFDE59;
            text-align: center;
        }
        .auto-style11 {
            background-color: #FFDE59;
            text-align: left;
        }
        </style>
        <script type="text/javascript">
            function ConfirmClear() {
                if (confirm("Are you sure you want to clear the fields?")) {
                    document.getElementById('<%= Sign_Username.ClientID %>').value = "";
                    document.getElementById('<%= Sign_Password.ClientID %>').value = "";
                    return true;
                } else {
                    return false;
                }
            }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style3"><strong>
                                        <asp:Label ID="SignIN_Label" runat="server" CssClass="auto-style14" style="color: #FFFFFF; font-size: x-large" Text="Sign-In"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="rev_Label_SEmail" runat="server" Text="Username:" CssClass="auto-style9"></asp:Label>
                                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="Sign_Username" runat="server" TextMode="SingleLine " AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;&nbsp; <strong>
                                        <asp:RequiredFieldValidator ID="Sign_RFV_Username" runat="server" ControlToValidate="Sign_Username" CssClass="auto-style15" ErrorMessage="*Username cannot be blank." style="color: #CC33FF" ForeColor="#8C52FF"></asp:RequiredFieldValidator>
                                        <br />
                                        </strong>
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="Sign_Label_Password" runat="server" Text="Password:" CssClass="auto-style9"></asp:Label>
                                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="Sign_Password" runat="server" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;&nbsp; <strong>
                                        <asp:RequiredFieldValidator ID="Sign_RFV_Password" runat="server" ControlToValidate="Sign_Password" CssClass="auto-style15" ErrorMessage="*Password cannot be blank." style="color: #CC33FF"></asp:RequiredFieldValidator>
                                        <br />
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <br />
                                        <asp:Button ID="SignButton" runat="server" OnClick="SignButton_Click" Text="Login" />
&nbsp;
                                        <asp:Button ID="ClearSignIn" runat="server" Text="Clear" OnClientClick="return ConfirmClear();" CausesValidation="False"/>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
