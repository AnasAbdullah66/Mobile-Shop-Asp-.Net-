<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmContact.aspx.cs" Inherits="Mobileshop.frmContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row">
        <div class="col">
            <div class="container-fluid">
                <h3 class="bg-info text-center mt-4 p-2">Contact Us    </h3>
            </div>
            <div class="container offset-4">
                <table border="0">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="txtName" CssClass="form-control pt-2" runat="server" /></td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="txtName" /></td>--%>
                    </tr>
                    <tr>
                        <td>Subject:</td>
                        <td>
                            <asp:TextBox ID="txtSubject" CssClass="form-control pt-2" runat="server"></asp:TextBox></td>
                        <td>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="required"
                        ControlToValidate="txtSubject" /></td>--%>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:TextBox ID="txtEmail" CssClass="form-control pt-2" runat="server"></asp:TextBox></td>
                        <td>
                            <%--<asp:RegularExpressionValidatorID="valRegEx" runat="server" ControlToValidate="txtEmail"
                ValidationExpression=".*@.*\..*" ErrorMessage="*Invalid Email address." Display="dynamic"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="required"
                ControlToValidate="txtEmail"/>--%>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">Body:</td>
                        <td>
                            <asp:TextBox ID="txtBody" CssClass="form-control pt-2" runat="server" TextMode="MultiLine" /></td>
                        <td valign="top">
                            
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" CssClass="btn btn-outline-dark pt-2" runat="server" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-success pt-2" OnClick="btnSend_Click" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
