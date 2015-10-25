<%@ Page MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ContentPlaceHolderid="head" runat="server">
    <title>Home Page</title>  
    <link href="HomePage.css" rel="stylesheet" />
<style type="text/css">
    .slider {
        margin-left: 0px;
        margin-top: 50px;
        overflow: hidden;
    }

        .slider img {
            width: 1024px;
            height: 402px;
            display: none;
        }
</style>
<script type="text/javascript"
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-

ui.min.js"></script>
<script type="text/javascript">
    function Slider() {
        $(".slider #1").show("fade", 500);
        $(".slider #1").delay(5500).hide("slide", { direction: 'left' }, 500);
        var sc = $(".slider img").size();
        var count = 2;
        setInterval(function () {
            $(".slider #" + count).show("slide", { direction: 'right' }, 500);
            $(".slider #" + count).delay(5500).hide("slide", { direction: 'left' }, 500);

            if (count == sc) {
                count = 1;

            } else count = count + 1;


        }, 6500);



    }
</script>
</asp:Content>

<asp:Content ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
  <section class="container">

        
            <div class="slider">
                
                <img id="1" src="./images/deal4.jpg" width="800" height="400" />
                <img id="2" src="./images/deal5.jpg" width="800" height="400" />
                <img id="3" src="./images/deal6.jpg" width="800" height="400" />

            </div>

        
    </section>
  
</asp:Content>