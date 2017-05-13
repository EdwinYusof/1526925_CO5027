<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
     <script>
    $(document).ready(function(){
        $('.bxslider').bxSlider();
  
    });
         </script>
    <div id="loginpane">
         <table>
                     <tr>
                         <td>Enter your email: </td>
                         <td>Enter your password: </td>
                         <td ></td>
                         
                     </tr>
                      <tr>
                         <td>
                             <asp:TextBox ID="txtemail" runat="server" Width="150" TextMode="Email"></asp:TextBox></td>
                         <td>
                             <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="150"></asp:TextBox></td>
                               <td ><asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
                     </tr>
                      
                 </table>
    </div>
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
            <h1>Recently Added</h1>
            <a href="product.aspx">View all products</a>
            <p id="close" style="text-align:right; cursor:pointer">Close window</p>

            <div class="pop">
                
              

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <ul>
                                
                        </HeaderTemplate>
                         <ItemTemplate>
                              <li>
                    <ul>
                        <li><img src='<%# Eval("imagepath") %>' alt='<%# Eval("bouncername") %>' /> </li>
                        <li>Product Name:<em><%# Eval("bouncername") %></em></li>
                        <li>Category:<em><%# Eval("bouncercategory") %></em></li>
                        <li>Price:<em><%# Eval("price") %></em></li>
                        <li>Stock:<em><%# Eval("quantity") %></em></li>
                        <li><span class="buy"><a href="buyproduct.aspx">Buy</a></span></li>
                    </ul>
                                      </li>
                        </ItemTemplate>
                

                        <FooterTemplate>
                        
                            </ul>
                        </FooterTemplate>

                    </asp:Repeater>

             
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dokeperuan %>" SelectCommand="SELECT TOP 5 [bouncername], [bouncercategory], [quantity], [price], [imagepath] FROM [products] "></asp:SqlDataSource>

             

            </div>

             

    </div>
</asp:Content>

