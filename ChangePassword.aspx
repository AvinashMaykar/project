<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Project.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 250px;
        }
        .auto-style3 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style4 {
            color: green;
            font-style: italic;
            font-weight: bold;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
         body{
            margin:0px;
            padding:0px;
            background-color:lightgrey;
        }
        .style{
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 404px;
            background-color: blanchedalmond;
            border-radius: 10px;
            border: 5px solid black;
            padding: 15px 0px;
        }
         .btnsubmit{
            border: 1px solid black;
            border-radius: 10px;
            background-color: limegreen;
            margin-left: -14px;
            margin-top: 7px;
        }
         .btnreset{
            border: 1px solid black;
            border-radius: 10px;
            background-color: orangered;
            margin-top: 7px;
        }
       /* .style1 {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 404px;
            background-color: blanchedalmond;
            border-radius: 10px;
            border: 5px solid black;
            padding: 15px 0px;
        }*/


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="style">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3" colspan="2">Change Password</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Old Password:</td>
                            <td>
                                <asp:TextBox ID="txtopwd" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtopwd" Display="Dynamic" ErrorMessage="Password Should be Alpha-Numeric" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z0-9]*$">Password Should be Alpha-Numeric</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">New password:</td>
                            <td>
                                <asp:TextBox ID="txtnpwd" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtopwd" ControlToValidate="txtnpwd" Display="Dynamic" ErrorMessage="Old And New Password Should Not Same" ForeColor="Red" Operator="NotEqual" SetFocusOnError="True">Old And New Password Should Not Same</asp:CompareValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtnpwd" Display="Dynamic" ErrorMessage="Password must be 8-16 character " ForeColor="Red" SetFocusOnError="True" ValidationExpression="^.{8,16}$">Password must be 8-16 character</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Re-enter Password:</td>
                            <td>
                                <asp:TextBox ID="txtrepwd" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnpwd" ControlToValidate="txtrepwd" Display="Dynamic" ErrorMessage="Password Must Be Same" ForeColor="Red" SetFocusOnError="True">Password and Confirm Password Should Same</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Button ID="btnsubmit"  class="btnsubmit"   runat="server" OnClick="btnsubmit_Click" Text="Submit" />
                                <input id="Reset1" class="btnreset" type="reset" value="Reset" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="style1">
                    <span class="auto-style4">Password Changed Successfully!</span><br />
                    <asp:Button ID="btncontinue" class="btnsubmit" runat="server" OnClick="btncontinue_Click" Text="Continue" />
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
