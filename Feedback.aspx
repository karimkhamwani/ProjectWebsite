<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedbackform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
     
    <link href="Feedback.css" rel="stylesheet" />
         
    <link href="Homepage.css" rel="stylesheet" type="text/css" />
         
</head>
<body>
     <header class="mainHeader">



        <div id="nav">
            <ul class="menu">
                <li><a>MENU</a>
                    <ul class="menu2">
                        <ul><a>Chata-Pata</a></ul>
                        <ul><a>Milk Shakes</a></ul>
                        <ul><a>Juices</a></ul>
                        <ul><a>Shawarma</a></ul>
                        <ul><a>Rolls</a></ul>
                        <ul><a>Bar B.Q</a></ul>
                        <ul><a>Broast</a></ul>
                        <ul><a>Soup</a></ul>
                        <ul><a>Rice</a></ul>
                        <ul><a>Noodles</a></ul>
                        <ul><a>Handi</a></ul>
                        <ul><a>Burgers</a></ul>
                        <ul><a>Fries</a></ul>
                    </ul>
                </li>
                <li><a>DEALS</a>
                    <ul class="menu2">
                    <ul><a>Deal 1</a></ul>
                    <ul><a>Deal 2</a></ul>
                    <ul><a>Deal 3</a></ul>
                    <ul><a>Deal 4</a></ul>
                    <ul><a>Deal 5</a></ul>
                    <ul><a>Deal 6</a></ul>
                    <ul><a>Deal 7</a></ul>
                    <ul><a>Deal 8</a></ul>
                    <ul><a>Deal 9</a></ul>
                    <ul><a>Deal 10</a></ul>
                    <ul><a>Deal 11</a></ul>
                    <ul><a>Deal 12</a></ul>
                    <ul><a>Deal 13</a></ul>
                    <ul><a>Deal 14</a></ul>
                </ul>

                </li>
            </ul>
            <ul class="menu" style="float:right;">
                <li><a>ABOUT</a>
                       <ul class="menu2">
                <ul><a>Our Story</a></ul>
                    <ul><a>Gallery</a></ul>
                    <ul><a style="color:white;" href="https://www.google.com/maps/dir/''/flamingo+clifton/@24.8271883,66.9958503,13z/data=!3m1!4b1!4m8!4m7!1m0!1m5!1m1!1s0x3eb33dbf78bff189:0x5106c7420441e3ef!2m2!1d67.03087!2d24.8271145">Site map</a></ul>    

                </ul>
                </li>
                <li><a>CONTACT</a></li>
            </ul>

            <div class="flamingoBtn">
                <div style="padding-top:16px;">ORDER NOW!</div>
            </div>

        </div>

    </header>
    <section class="container">
    
    <form id="form1" class="basic-grey" runat="server">
    
    <div class="radio">
        <asp:Label ID="nameofuser" runat="server" Text="Name" Font-Bold="True"></asp:Label>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:TextBox ID="name" runat="server" OnTextChanged="name_TextChanged" Width="200px"></asp:TextBox>
    
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
        <asp:DropDownList ID="Gender" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="210px">
         <asp:ListItem Text ="Male" Value="Male"></asp:ListItem>
         <asp:ListItem Text ="Female" Value="Female"></asp:ListItem>
        </asp:DropDownList>
        <br />

        
        &nbsp;<asp:Label ID="Qualityfoodofres" runat="server" Text="Quality of food" Font-Bold="True"></asp:Label>
&nbsp;<asp:RadioButtonList class="radiobtn" ID="Food" runat="server">
     <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
  <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
  <asp:ListItem Text="Average" Value="Average"></asp:ListItem>
     <asp:ListItem Text="Dissatisfied" Value="Dissatisfied"></asp:ListItem>
        </asp:RadioButtonList>

        <br />

        <asp:Label ID="cleanlinessofres" runat="server" Text="Cleanliness" Font-Bold="True"></asp:Label>
        <asp:RadioButtonList class="radiobtn" ID="Clean" runat="server">
        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
  <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
  <asp:ListItem Text="Average" Value="Average"></asp:ListItem>
              <asp:ListItem Text="Dissatisfied" Value="Dissatisfied"></asp:ListItem>
        </asp:RadioButtonList>

            <br />

        <asp:Label ID="Overallqualityofres" runat="server" Text="Over all quality" Font-Bold="True"></asp:Label>
        <br />
        <asp:RadioButtonList class="radiobtn" ID="Quality"  runat="server">
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
            <asp:Button ID="Submit" runat="server" class="button" OnClick="Submit_Click" Text="Submit" />
        </p>
      
    </form>
        </section>
     <footer class="footer">
        <div class="navFooter">
            <div class="navColumn" style="width:140px">
                <h5>Order</h5>
                <ul>
                    <li>
                        <a href="">Deals</a>
                    </li>
                    <li>
                        <a href="">Menu</a>
                    </li>
                </ul>
            </div>
            <div class="navColumn">
                <h5>About us</h5>
                <ul>
                    <li>
                        <a href="">Our Story</a>
                    </li>
                    <li>
                        <a href="">Gallery</a>
                    </li>
                    <li>
                        <a href="">Site Map</a>
                    </li>
                </ul>
            </div>
            <div class="navColumn">
                <h5>customer service</h5>
                <ul>
                    <li>
                        <a href="">Complains</a>
                    </li>
                    <li>
                        <a href="">FAQs</a>
                    </li>
                    <li>
                        <a href="">Contact Us</a>
                    </li>
                </ul>
            </div>
            <div class="navColumn">
                <h5>my account</h5>
                <ul>
                    <li>
                        <a href="">Create and account</a>
                    </li>
                    <li>
                        <a href="">sign in</a>
                    </li>
                </ul>
            </div>
            <div class="navColumn" style="width:270px; padding:0;">
                <h5>connect with flamingo</h5>
                <ul>
                    <li>
                        <a href="https://www.facebook.com/flamingojuiceandchat">facebook</a>
                    </li>
                    <li>
                        <a href="">twitter</a>
                    </li>
                    <li>
                        <a href="">Mobile Site</a>
                    </li>
                </ul>
            </div>

        </div>
    </footer>
        
</body>
</html>
