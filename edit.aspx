<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="My_Portfolio.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Define CSS styles for elements */
        .container {
            margin: 20px auto;
            width: 80%;
        }
        .input-group {
            margin-bottom: 20px;
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .message-box {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
           <h2 align="center">Edit Page</h2>
            <div class="input-group">
                <h3>About :</h3>
                <asp:TextBox ID="aboutTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="6" Columns="50"></asp:TextBox><br />
            </div>
            <asp:Button ID="updateButton" runat="server" OnClick="updateButton_Click" Text="Update" CssClass="btn" />
            <div class="input-group">
                <label for="EmailTextBox">Email</label><br />
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="OccupationDropDownList">Occupation</label><br />
                <asp:DropDownList ID="OccupationDropDownList" runat="server" CssClass="form-control">
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Engineer</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="input-group">
                <label>Gender</label><br />
                <asp:RadioButtonList ID="SexRadioButtonList" runat="server" CssClass="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" CssClass="btn" />
            <div class="input-group">
                <h3>Hobbies :</h3>
                <asp:TextBox ID="hobbyTextBox" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox><br />
            </div>
            <asp:Button ID="msg_button" runat="server" OnClick="hobbyButton_Click" Text="Insert" CssClass="btn" />
             <p>
     <asp:Button ID="Button1" runat="server" OnClick="delButton_Click" Text="Delete" CssClass="btn" />
             </p>
        </div>
        <h3 align="left">Messages</h3>
        <div class="message-box">
           
            <p>
                <asp:Label ID="id_label" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                <asp:TextBox ID="show_msg" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="6" Columns="50"></asp:TextBox>
            </p>
            <p>
                <asp:TextBox ID="idbox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="show" runat="server" OnClick="show_Click" Text="Show Message" CssClass="btn" />

            </p>
              <p align="center">
                <asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="Log Out" CssClass="btn" />
            </p>
        </div>
    </form>
</body>
</html>
