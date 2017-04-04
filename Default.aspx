<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="defaultpage" ContentPlaceHolderID="titile" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
               
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
     <script>
    $(document).ready(function(){
        $('.bxslider').bxSlider();
  
    });
         </script>
<div id="default">
   
    <div id="slider">
        <h1>Latest</h1>
        <asp:Literal ID="products" runat="server"></asp:Literal>
    </div>
    <div id="message">
        <h1>Bouncer Rentals</h1>

        <p>At Bounce Party Rentals, we offer high quality inflatables at discount rental prices. With our selection of moonwalks, bounce houses, water slides, slip n slide, obstacle courses, inflatable playlands, games and even carnival concessions, we can provide all the necessary equipment needed for any birthday party or event. Please take a few minutes to see what kind of inflatables we offer and click on the online reservation button to setup an appointment today..</p>
    <hr />
        <h2>Bouncer Quality</h2>
        <p>Our inflatables are very durable, kid safe and 100% cleaned and sanitized in-between every rental. We are fully licensed and insured. All of our employees undergo very strict background checks so you can feel safe when working with Bounce Party Rentals. </p>
    <hr />
        <h3 id="viewproducts" style="cursor:pointer;color:red;">View our products</h3>

     
    </div>
   

</div>

        <div id="ourproducts">
            <p id="close" style="text-align:right; cursor:pointer">Close window</p>

            <div class="pop">
                <ul>
                <li>
                    <ul>
                        <li><img src="images/products/asd.jpg" /></li>
                        <li>Product Name:<em></em></li>
                        <li>Brand:<em></em></li>
                        <li>Price:<em> </em></li>
                        <li>Seller:<em> </em></li>
                    </ul>

                </li>

                     <li>
                    <ul>
                        <li><img src="images/products/bouncehouse.jpg" /></li>
                        <li>Product Name:<em></em></li>
                        <li>Brand:<em></em></li>
                        <li>Price:<em> </em></li>
                        <li>Seller:<em> </em></li>
                    </ul>

                </li>

                     <li>
                    <ul>
                        <li><img src="images/products/Green.jpg" /></li>
                        <li>Product Name:<em></em></li>
                        <li>Brand:<em></em></li>
                        <li>Price:<em> </em></li>
                        <li>Seller:<em> </em></li>
                    </ul>

                </li>

                     <li>
                    <ul>
                        <li><img src="images/products/Small indoor.jpg" /></li>
                        <li>Product Name:<em></em></li>
                        <li>Brand:<em></em></li>
                        <li>Price:<em> </em></li>
                        <li>Seller:<em> </em></li>
                    </ul>

                </li>

                     <li>
                    <ul>
                        <li><img src="images/products/withslide.jpg" /></li>
                        <li>Product Name:<em></em></li>
                        <li>Brand:<em></em></li>
                        <li>Price:<em> </em></li>
                        <li>Seller:<em> </em></li>
                    </ul>

                </li>

                     <li>
                    <ul>
                        <li><img src="images/products/Slidee bouncers.jpg" /></li>
                        <li>Product Name:<em></em></li>
                        <li>Brand:<em></em></li>
                        <li>Price:<em> </em></li>
                        <li>Seller:<em> </em></li>
                    </ul>

                </li>
</ul>
            </div>

    </div>
</asp:Content>

