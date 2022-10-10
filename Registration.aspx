<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 400px;
            background-color: blanchedalmond;
            border-radius: 10px;
            border: 2px solid black;
            padding: 15px 0px;
        }
        .auto-style3 {
            width: 233px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            font-size: large;
            font-weight: bold;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
            margin-left: 30%;
        }
        .auto-style7 {
            width: 233px;
        }
        .auto-style8 {
            color: green;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
            font-style: italic;
            font-weight: bold;
            font-size: medium;

           
        }
        
        
        .auto-style9 {
            width: 233px;
            height: 39px;
        }
        .auto-style10 {
            height: 39px;
        }
        body{
            margin:0px;
            padding:0px;
            background-color:lightgray;
        }
        .btnsubmit{
            border: 1px solid black;
            border-radius: 10px;
            background-color: limegreen;
            margin-left: -25px;
            margin-top: 0px;
        }
        .btnreset{
            border: 1px solid black;
            border-radius: 10px;
            background-color: orangered;
            margin-top: 7px;
        }
        .style1{
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="style">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td colspan="2"> <span class="auto-style5">Registration Form</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">User Name:</td>
                            <td>
                                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="Please Enter User Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="UserName must be 8-16 character " ForeColor="Red" SetFocusOnError="True" ValidationExpression="^.{8,16}$">UserName must be 8-16 character</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Password:</td>
                            <td>
                                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>

                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtuname" ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Username And Password Should Not Same" ForeColor="Red" Operator="NotEqual" SetFocusOnError="True">Username And Password Should Not Same</asp:CompareValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Password Should be Alpha-Numeric" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[a-zA-Z0-9]*$">Password Should be Alpha-Numeric</asp:RegularExpressionValidator>

                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Password must be 8-16 character " ForeColor="Red" SetFocusOnError="True" ValidationExpression="^.{8,16}$">Password must be 8-16 character</asp:RegularExpressionValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Re-enter Password:</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtrepwd" runat="server" Height="20px" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtrepwd" Display="Dynamic" ErrorMessage="Password Must Be Same" ForeColor="Red" SetFocusOnError="True">Password and Confirm Password Should Same</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">First Name:</td>
                            <td>
                                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Middle Name:</td>
                            <td>
                                <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Last Name:</td>
                            <td>
                                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Hint Question:</td>
                            <td>
                                <%--<asp:TextBox ID="txtque" runat="server" TextMode="MultiLine"></asp:TextBox>--%>
                                
                                <%--<asp:DropDownList ID="txtque" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="None" text="None"></asp:ListItem>
                                    <asp:ListItem Value="1" text="What is your GrandMother name? "></asp:ListItem>
                                    <asp:ListItem Value="2" text="What is your favorite color?"></asp:ListItem>
                                    <asp:ListItem Value="3" text="What is your School Name?"></asp:ListItem>
                                </asp:DropDownList>--%>

                                <asp:DropDownList ID="txtque" runat="server">
                                <asp:ListItem Value="None" text="None"></asp:ListItem>
                                <asp:ListItem   Value="What is your grand mother name?" text="What is your grand mother name?"></asp:ListItem>
                                <asp:ListItem   Value="What is favariote color?" text="What is favariote color?"></asp:ListItem>
                                <asp:ListItem   Value="what is your school name?" text="what is your school name?"></asp:ListItem>
                                </asp:DropDownList>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">Hint Answer:</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtans" Display="Dynamic" ErrorMessage="Must Enter Answer" ForeColor="Red" SetFocusOnError="True">Please Enter Proper Answer</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>
                                <asp:Button ID="btncreate" class="btnsubmit" runat="server" OnClick="btncreate_Click" Text="Submit" />
                                <input id="Reset1"class="btnreset" type="reset" value="Reset" />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="style1">
                    <span class="auto-style8">User Registered Successfully !!</span><br /><br>
                    <asp:Button ID="btnconti" class="btnsubmit" runat="server" OnClick="btnconti_Click" Text="Continue" />
                     </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
