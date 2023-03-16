<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmProduct.aspx.cs" Inherits="Mobileshop.frmProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h2>Product</h2>
    <div class="row">
        <div class="col">
            <div class="container mt-4">
                <h3 class="bg-info text-center p-2">Product</h3>
            </div>
            <div class="container-fluid p-2">
                <asp:ListView ID="ListView1" SelectMethod="ListView1_GetData" InsertMethod="ListView1_InsertItem" UpdateMethod="ListView1_UpdateItem" DeleteMethod="ListView1_DeleteItem" InsertItemPosition="LastItem" ItemType="" ItemPlaceholderID="itemHolder" DataKeyNames="mobile_ID"  runat="server" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("mobile_ID") %></td>
                            <td><%# Eval("brand.BrandName") %></td>
                            <td><%# Eval("model_Name") %></td>
                            <td><%# Eval("mobileType.typeName") %></td>
                            <td><%# Eval("mobile_Price") %></td>
                            <td>
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("mobile_Picture","~/Images/{0}") %>' Width="90" runat="server" />
                            </td>
                            <td><%# Eval("camera") %></td>
                            <td><%# Eval("ram") %></td>
                            <td><%# Eval("rom") %></td>
                            <td>
                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CssClass="btn btn-outline-success" CausesValidation="false" />

                                <%--<asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CssClass="btn btn-outline-danger" CausesValidation="false" />--%>

                            </td>
                        </tr>
                    </ItemTemplate>

                    <EditItemTemplate>
                        <tr>
                            <td></td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" SelectedValue='<%# Bind("brand_ID") %>' runat="server" SelectMethod="ddlGetBrand" AppendDataBoundItems="true" DataTextField="BrandName" DataValueField="brandId">
                                    
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="txtModelName" CssClass="form-control" Text='<%# Bind("model_Name") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" CssClass="form-control" SelectedValue='<%# Bind("mobileTypeId") %>' runat="server" SelectMethod="ddlGetType" AppendDataBoundItems="true" DataTextField="typeName" DataValueField="typeId"></asp:DropDownList>

                            </td>
                            <td>
                                <asp:TextBox ID="txtPrice" CssClass="form-control" Text='<%# Bind("mobile_Price") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:FileUpload ID="fuPicture" CssClass="form-control" runat="server" />
                                <asp:HiddenField ID="HiddenField1" Value='<%# Bind("mobile_Picture") %>' runat="server" />
                            </td>
                            <td>
                                <asp:TextBox ID="txtCamera" CssClass="form-control" Text='<%# Bind("camera") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRam" CssClass="form-control" Text='<%# Bind("ram") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRom" CssClass="form-control" Text='<%# Bind("rom") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-outline-success" CausesValidation="false" />

                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-outline-warning" CausesValidation="false" />
                            </td>
                        </tr>
                    </EditItemTemplate>


                    <InsertItemTemplate>
                        <tr>
                            <td>Not Require</td>
                            <td>
                                <%--<asp:DropDownList ID="DropDownList3" CssClass="form-control" SelectedValue='<%# Bind("brand_ID") %>'SelectMethod="ddl_getData" AppendDataBoundItems="true" runat="server"></asp:DropDownList>--%>
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" SelectedValue='<%# Bind("brand_ID") %>' runat="server" SelectMethod="ddlGetBrand" AppendDataBoundItems="true" DataTextField="BrandName" DataValueField="brandId">
                                    
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="txtModelName" CssClass="form-control" Text='<%# Bind("model_Name") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" CssClass="form-control" SelectedValue='<%# Bind("mobileTypeId") %>' runat="server" SelectMethod="ddlGetType" AppendDataBoundItems="true" DataTextField="typeName" DataValueField="typeId"></asp:DropDownList>

                            </td>
                            <td>
                                <asp:TextBox ID="txtPrice" CssClass="form-control" Text='<%# Bind("mobile_Price") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:FileUpload ID="fuPicture" CssClass="form-control" runat="server" />
                                <asp:HiddenField ID="HiddenField1" Value='<%# Bind("mobile_Picture") %>' runat="server" />
                            </td>
                            <td>
                                <asp:TextBox ID="txtCamera" CssClass="form-control" Text='<%# Bind("camera") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRam" CssClass="form-control" Text='<%# Bind("ram") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRom" CssClass="form-control" Text='<%# Bind("rom") %>' runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="btnInsert" runat="server" Text="Insert" CommandName="Insert" CssClass="btn btn-outline-success" CausesValidation="false" />

                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-outline-warning" CausesValidation="false" />
                            </td>
                        </tr>
                    </InsertItemTemplate>

                    <LayoutTemplate>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Brand</th>
                                    <th>Model Name</th>
                                    <th>Mobile Type</th>
                                    <th>Price</th>
                                    <th>Picture</th>
                                    <th>Camera</th>
                                    <th>Ram</th>
                                    <th>Rom</th>
                                </tr>
                            </thead>

                            <tbody id="itemHolder" runat="server">
                            </tbody>
                        </table>
                    </LayoutTemplate>

                </asp:ListView>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script>
        $(document).ready(() => {
            $("input[name$='btnDelete']").click((evt) => {
                if (!confirm("Are you sure to delete?")) {
                    evt.preventDefault();
                }
            })
        });
        function confirmDelete() {
            if (!confirm("Are you sure to delete?")) {
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
