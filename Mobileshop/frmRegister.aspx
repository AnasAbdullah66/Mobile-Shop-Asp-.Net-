<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRegister.aspx.cs" Inherits="Mobileshop.frmRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row">
        <div class="col">

            <div class="form-group">

                <div class="container mt-4">
                    <h3 class="bg-info text-center p-2">Please Register Here</h3>
                </div>
                <div class="container mt-4">
                    <div class="m-auto pb-3 fw-bold text-danger text-center">
                        <asp:ValidationSummary ID="ValidationSummary1" CssClass="rounded-3 p-3" runat="server" HeaderText="All Validation Summery" ShowMessageBox="True" BackColor="#CC3300" BorderStyle="Solid" Font-Bold="True" ForeColor="White" DisplayMode="List" BorderColor="#6600FF" />
                    </div>
                </div>
                <div class="container pt-2">
                    <asp:Panel ID="Panel1" CssClass="alert alert-warning" Visible="false" runat="server">
                        <h4>Registration Failed</h4>
                        <p>Failed to register user!!</p>
                    </asp:Panel>
                    <div class="offset-2 mt-3">
                        <div class="form-group row">
                            <label class="col-form-label col-2 text-right">Username</label>
                            <asp:TextBox ID="userName" runat="server" CssClass="form-control col-6 border-dark"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" SetFocusOnError="true" runat="server" ControlToValidate="userName" ErrorMessage="Insert a username" ForeColor="Red">Username is required</asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-2 text-right">Password</label>
                            <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="form-control col-6 border-dark"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" SetFocusOnError="true" runat="server" ControlToValidate="password" ErrorMessage="Insert a password" ForeColor="Red">Password is required</asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-2 text-right">Confirm Password</label>
                            <asp:TextBox ID="confirmPassword" TextMode="Password" runat="server" CssClass="form-control col-6 border-dark"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" SetFocusOnError="true" runat="server" ControlToValidate="confirmPassword" ErrorMessage="Reinter the password" ForeColor="Red">Required</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not same" ControlToCompare="password" ControlToValidate="confirmPassword" ForeColor="Red">Password not mached</asp:CompareValidator>
                        </div>
                        <div class="form-group row offset-2 ">
                            <div class="offset-3 pt-2">
                                <asp:Button ID="register" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="register_Click" />

                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="mr-3" NavigateUrl="~/Login.aspx">Already Have An Account</asp:HyperLink>
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
