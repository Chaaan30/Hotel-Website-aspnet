<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="IT114L_B54_Group_5.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
          background-image: url('hotel101.jpg');
          background-repeat: no-repeat;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            width: 100%;
            border: 2px solid #8C52FF;
        }
        .auto-style4 {
            height: 27px;
            text-align: center;
            background-color: #8C52FF;
        }
        .auto-style6 {
            width: 39%;
        }
        .auto-style7 {
            height: 27px;
            width: 35%;
        }
        .auto-style8 {
            width: 377px;
        }
        .auto-style9 {
            height: 27px;
            width: 377px;
        }
        .auto-style12 {
            color: #7B3CFF;
        }
        .auto-style14 {
            height: 29px;
            background-color: #8C52FF;
            width: 302px;
            font-size: x-large;
        }
        .auto-style21 {
            background-color: #FFDE59;
            text-align: left;
        }
        .auto-style23 {
            background-color: #FFDE59;
            text-align: center;
        }
        .auto-style24 {
            height: 56px;
            background-color: #FFDE59;
            width: 302px;
            color: #CC33FF;
        }
    </style>
        <script type="text/javascript">
            function ConfirmClear() {
                if (confirm("Are you sure you want to clear the fields?")) {
                    document.getElementById('<%= Reg_LastName.ClientID %>').value = "";
                    document.getElementById('<%= Reg_FirstName.ClientID %>').value = "";
                    document.getElementById('<%= Reg_Username.ClientID %>').value = "";
                    document.getElementById('<%= Rev_EmailAddress.ClientID %>').value = "";
                    document.getElementById('<%= Reg_Password.ClientID %>').value = "";
                    document.getElementById('<%= Reg_CPassword.ClientID %>').value = "";
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
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style8">
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style4"><strong>
                                        <asp:Label ID="Registration_Label" runat="server" CssClass="auto-style14" style="color: #FFFFFF" Text="Registration"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style21">
                                        <br />
&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="Reg_Label_LastName" runat="server" Text="Last Name:" CssClass="auto-style12"></asp:Label>
                                        </strong>&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="Reg_LastName" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Reg_LastName" CssClass="auto-style24" ErrorMessage="*Last Name cannot be blank."></asp:RequiredFieldValidator>
                                        </strong>
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="Reg_Label_FirstName" runat="server" Text="First Name:" CssClass="auto-style12"></asp:Label>
                                        </strong>&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="Reg_FirstName" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Reg_FirstName" CssClass="auto-style24" ErrorMessage="*First Name cannot be blank."></asp:RequiredFieldValidator>
                                        </strong>
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="Label1" runat="server" Text="Username:" CssClass="auto-style12"></asp:Label>
                                        </strong>&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="Reg_Username" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Reg_Username" CssClass="auto-style24" ErrorMessage="*Username cannot be blank."></asp:RequiredFieldValidator>
                                        </strong>
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="Rev_Label_Email" runat="server" Text="Email Address:" CssClass="auto-style12"></asp:Label>
                                        </strong>&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="Rev_EmailAddress" runat="server" TextMode="Email" AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Rev_EmailAddress" CssClass="auto-style24" ErrorMessage="*Email cannot be blank." Display="Dynamic"></asp:RequiredFieldValidator>
                                        </strong>
                                        <br />
&nbsp;&nbsp;
                                        <strong>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Rev_EmailAddress" CssClass="auto-style24" ErrorMessage="*Enter a valid Email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </strong>
                                        <br />
&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="Reg_Label_Password" runat="server" Text="Password:" CssClass="auto-style12"></asp:Label>
                                        </strong>&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="Reg_Password" runat="server" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Reg_Password" CssClass="auto-style24" ErrorMessage="*Password cannot be blank."></asp:RequiredFieldValidator>
                                        </strong>
                                        <br />
                                        <br />
&nbsp;&nbsp;&nbsp; <strong>
                                        <asp:Label ID="Reg_Label_CPassword" runat="server" Text="Confirm Password:" CssClass="auto-style12"></asp:Label>
                                        </strong>
                                        <asp:TextBox ID="Reg_CPassword" runat="server" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                                        <br />
                                        &nbsp;&nbsp;
                                        <strong>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Reg_CPassword" CssClass="auto-style24" Display="Dynamic" ErrorMessage="*Confirmation cannot be blank."></asp:RequiredFieldValidator>
                                        </strong>
                                        <br />
                                        &nbsp;&nbsp;
                                        <strong>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Reg_Password" ControlToValidate="Reg_CPassword" CssClass="auto-style24" Display="Dynamic" ErrorMessage="*Password is not the same."></asp:CompareValidator>
                                        </strong>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">
                                        <br />
                                        <asp:Button ID="Reg_Button_Register" runat="server" OnClick="Reg_Button_Register_Click" Text="Register" />
&nbsp;<asp:Button ID="ClearRegis" runat="server" Text="Clear" OnClientClick="return ConfirmClear();" CausesValidation="False" ValidationGroup="val_clear" />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style9"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>