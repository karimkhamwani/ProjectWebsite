<%@ Page MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ContentPlaceHolderid="head" runat="server">
<title>Feedback</title>     
    <link href="Feedback.css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
  <form id="form1" class="basic-grey" runat="server">
    
    <div class="radio">
        <asp:Label ID="nameofuser" runat="server" Text="Name" Font-Bold="True"></asp:Label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="name" runat="server"  Width="200px"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#000099">Your name is required</asp:RequiredFieldValidator>
    <br />
    
        <asp:Label ID="emailofuser" runat="server" Text="Email" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Email" runat="server" Width="200px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="#000099" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid email address</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#000099">Your email is required</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="phonenumberofuser" runat="server" Text="Phonenumber" Font-Bold="True"></asp:Label>
        &nbsp;
        <asp:TextBox ID="Phonenumber" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Phonenumber" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#000099">Your phonenumber is required</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Phonenumber" Display="Dynamic" ErrorMessage="Invalid Phone number" ForeColor="#000099" ValidationExpression="[0-9]{8,11}"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="genderofuser" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="Gender" runat="server" Width="210px">
         <asp:ListItem Text ="Male" Value="Male"></asp:ListItem>
         <asp:ListItem Text ="Female" Value="Female"></asp:ListItem>
        </asp:DropDownList>
        <br />

        
        &nbsp;<asp:Label ID="Qualityfoodofres" runat="server" Text="Quality of food" Font-Bold="True"></asp:Label>
&nbsp;<asp:RadioButtonList class="button" ID="Food" runat="server">
     <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
  <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
  <asp:ListItem Text="Average" Value="Average"></asp:ListItem>
     <asp:ListItem Text="Dissatisfied" Value="Dissatisfied"></asp:ListItem>
        </asp:RadioButtonList>

        <br />

        <asp:Label ID="cleanlinessofres" runat="server" Text="Cleanliness" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList class="button" ID="Clean" runat="server">
        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
  <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
  <asp:ListItem Text="Average" Value="Average"></asp:ListItem>
              <asp:ListItem Text="Dissatisfied" Value="Dissatisfied"></asp:ListItem>
        </asp:RadioButtonList>

            <br />

        <asp:Label ID="Overallqualityofres" runat="server" Text="Over all quality" Font-Bold="True"></asp:Label>
        <br />
        <asp:RadioButtonList class="button" ID="Quality"  runat="server">
                   <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
  <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
  <asp:ListItem Text="Average" Value="Average"></asp:ListItem>
              <asp:ListItem Text="Dissatisfied" Value="Dissatisfied"></asp:ListItem>
        </asp:RadioButtonList>
   
        <br />

            </div>

        <asp:Label ID="commentsofuser" runat="server" Text="Comments" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="Comments" runat="server" Height="123px" Width="285px" BorderWidth="2px" TextMode="MultiLine"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Submit" runat="server"   class="button"  Text="Submit" />
        </p>
      
    </form>
  
</asp:Content>