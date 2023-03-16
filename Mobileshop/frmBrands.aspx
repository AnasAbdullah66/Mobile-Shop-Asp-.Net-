<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmBrands.aspx.cs" Inherits="Mobileshop.frmBrands" %>

<%@ Register Src="~/BrandUserControl.ascx" TagPrefix="uc1" TagName="BrandUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <uc1:BrandUserControl runat="server" id="BrandUserControl" />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
