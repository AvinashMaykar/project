<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Project.ForgotPassword" %>

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
            border: 2px solid black;
            padding: 15px 0px;
        }
        .btnsubmit{
            border: 1px solid black;
            border-radius: 10px;
            background-color: limegreen;
            margin-left: 24px;
            margin-top: 7px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="style">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <span class="auto-style1">Forgot Password Screen<br /> </span><br />
                    <br />
                    UserName:<asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnsubmit" class="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
                    <asp:Label ID="lblmsg1" runat="server" ForeColor="Red"></asp:Label>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    UserName:<asp:Label ID="lbluser" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                    <br />
                    <asp:Label ID="lblque" style="margin-left:7%" runat="server"></asp:Label>
                    <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnget"  class="btnsubmit" runat="server" OnClick="btnget_Click" Text="Get" />
                    <asp:Label ID="lblmsg2" runat="server" ForeColor="Red"></asp:Label>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    Your Password:<asp:Label ID="lblpwd" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                    <br />
                    <asp:Button ID="btnconti" class="btnsubmit" runat="server" OnClick="btnconti_Click" Text="Continue" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
