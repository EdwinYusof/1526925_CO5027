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
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                    
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your email" ForeColor="Red"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please enter a subject" ForeColor="Red"></asp:RequiredFieldValidator>
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
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtComments" ErrorMessage="Please enter your comments" ForeColor="Red"></asp:RequiredFieldValidator>
                         </td>
                    <td style="vertical-align: top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" style="height: 29px" />
                    </td>
                </tr>

            </table>
        </fieldset>
        <h3 id="viewmap" class="viewmap">View Address and Map</h3>
      
        </div>
</asp:Content>