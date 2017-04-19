<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="contactformx" ContentPlaceHolderID="ContentBody" runat="server">
   
    <div id="contactform">
        <fieldset>
            <legend>Contact us</legend>
            <table >
                <tr>
                    <td>
                        <b>Name:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" Width="200px" runat="server"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <b>Email:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" Width="200px" runat="server"  TextMode="Email"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <b>Subject:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" Width="200px" runat="server"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="vertical-align: top">
                        <b>Comments:</b>
                    </td>
                    <td style="vertical-align: top">
                        <br />
                        <asp:TextBox ID="txtComments" Width="269px" runat="server" Rows="4" TextMode="MultiLine" Height="79px"></asp:TextBox>
                    </td>
                    <td style="vertical-align: top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="submit" />
                    </td>
                </tr>

            </table>
        </fieldset>
        <h3 id="viewmap" class="viewmap">View Address and Map</h3>
        <div id="ouraddress">
             <p id="close" style="text-align:right; cursor:pointer">Close window</p>
            <div class="minimap" id="minimap"></div>
            <div class="address">
                <ul>
                    <li>
                        
                        Address:   <span class="add">Sutton Building Thornton Science Park Pool Lane, <br />Chester Cheshire, CH2 4NU</span></li>
                    <li>Phone:<span class="add">2356457</span></li>
                    <li>Fax:<span class="add">2356457</span></li>
                    <li>Email:<span class="add">dokeperuan@gmail.com</span></li>
                </ul>

            </div>

        </div>
        </div>
</asp:Content>