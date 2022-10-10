<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Project.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            font-weight: bold;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style2 {
            font-size: large;
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
            margin: 0px;
            padding: 0px;
            background: lightgrey;
        }
        .style{
            text-align: center;
            margin-top: 14%;
                position: absolute;
    top: 16%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 409px;
    background-color: blanchedalmond;
    border-radius: 10px;
    border: 2px solid black;
    padding: 15px 0px;
        }
        .btnsubmit{
            border: 1px solid black;
            border-radius: 10px;
            background-color: limegreen;
            margin-left: 60px;
            margin-top: 7px;
        }
        .btnreset{
            border: 1px solid black;
            border-radius: 10px;
            background-color: orangered;
            margin-top: 7px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="style">
        
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <span class="auto-style1">Issue &amp; Risk Tracker<br />
                <br />
                Login Screen</span><br /> <br />
                UserName:<asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                <br />
                <br />
                Password:<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                
                <asp:Button ID="btnlogin" class="btnsubmit" runat="server" OnClick="btnlogin_Click" Text="Login" />
               
                <input id="Reset1"  class="btnreset" type="reset" value="Reset" />
                <br />
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Registration.aspx">New Registration Form</asp:HyperLink>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <span class="auto-style2">Welcome!</span><asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <br />
                <asp:LinkButton ID="btnlogout" runat="server" OnClick="btnlogout_Click">Logout</asp:LinkButton>
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink>
            </asp:View>
        </asp:MultiView>
          </div>
    </form>
</body>
</html>
