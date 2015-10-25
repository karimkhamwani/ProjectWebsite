<%@ Page MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ContentPlaceHolderid="head" runat="server">
    <title>Deals, Online Deals</title>     
    <link href="Deals.css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceHolderId="ContentPlaceHolder1" runat="server">  
  <section class="container">
    <div class="tile">
        <table>
            <tbody>
                <tr>
                    <td class="col1">
                        <img src="./images/Brownie.png" />
                    </td>
                    <td class="col2">
                        <h1>DEAL 1</h1>                        
                        <div class="discription">This the the discription of the deal</div>
                        <form runat="server" class="tile_form"><asp:button ID="OrderNow" runat="server" class="natTileBtn" Text="OrderNow" Height="38px" Width="179px" BorderStyle="None" /></form>
                    </td>
                </tr>

            </tbody>

        </table>
        
    </div>

    <div class="tile">
        <h1>Deal2</h1>

    </div>

    <div class="tile">
        
        <h1>Deal3</h1>
    </div>

    <div class="tile">
        <h1>Deal4</h1>

    </div>

    <div class="tile">
        <h1>Deal5</h1>

    </div>

    <div class="tile">
        <h1>Deal6</h1>

    </div>

    <div class="tile">
        
        <h1>Deal7</h1>
    </div>

    <div class="tile">
        
        <h1>Deal8</h1>
    </div>

      <div class="tile">
        
          <h1>Deal9</h1>
    </div>

    <div class="tile">
        <h1>Deal10</h1>

    </div>

      <div class="tile">
        
          <h1>Deal11</h1>
    </div>

    <div class="tile">
        <h1>Deal12</h1>

    </div>

      <div class="tile">
        
          <h1>Deal13</h1>
    </div>

    <div class="tile">
        <h1>Deal14</h1>

    </div>
      

</section>
</asp:Content>