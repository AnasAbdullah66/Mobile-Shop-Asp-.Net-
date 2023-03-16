<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mobileshop.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row">
        <div class="col">

            <div class="form-group">

                <div class="container mt-4">
                    <h3 class="bg-info text-center p-2">Login Here</h3>
                </div>

                <div class="container mt-4">
                    <div class="m-auto pb-3 fw-bold text-danger text-center">
                        <asp:ValidationSummary ID="ValidationSummary1" CssClass="rounded-3 p-3" runat="server" HeaderText="All Validation Summery" ShowMessageBox="True" BackColor="#CC3300" BorderStyle="Solid" Font-Bold="True" ForeColor="White" DisplayMode="List" BorderColor="#6600FF" />
                    </div>
                </div>

                <div class="container pt-2">

                    <asp:Panel ID="Panel1" CssClass="alert alert-warning" Visible="false" runat="server">
                        <h4>Login Failed</h4>
                    </asp:Panel>

                    <div class="offset-2 mt-3">

                        <div class="form-group row">
                            <label class="col-form-label col-2 text-right">Username :</label>
                            <asp:TextBox ID="userName" runat="server" CssClass="form-control col-6 border-dark"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Insert user name" ControlToValidate="userName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-2 text-right">Password :</label>
                            <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="form-control col-6 border-dark"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Inter a currect password" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group row offset-2 ">
                            <div class="offset-3 pt-2">
                                <asp:Button ID="login" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="login_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
