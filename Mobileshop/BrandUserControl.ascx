<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BrandUserControl.ascx.cs" Inherits="Mobileshop.BrandUserControl" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="row">
            <div class="col">
                <div class="container mt-4">
                    <h3 class="bg-info text-center p-2">Insert Brand Name</h3>
                </div>

                <div class="container mt-4">
                    <asp:ValidationSummary ID="ValidationSummary1" CssClass="rounded-3 p-3" runat="server" HeaderText="All Validation Summery" ShowMessageBox="True" BackColor="#CC3300" BorderStyle="Solid" Font-Bold="True" ForeColor="White" DisplayMode="List" BorderColor="#6600FF" />
                </div>

                <div class="container mt-4">
                    <asp:FormView ID="FormView1" CssClass="table table-bordered" runat="server" DataSourceID="BrandObjectDataSource" CellPadding="4" DefaultMode="Insert" ForeColor="#333333">
                        <EditItemTemplate>
                            Id:
                        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            BrandName:
                        <asp:TextBox ID="BrandNameTextBox" runat="server" Text='<%# Bind("BrandName") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>

                            <br />
                            BrandName:
                        <asp:TextBox ID="BrandNameTextBox" runat="server" CssClass="form-control p-2 mb-3" Text='<%# Bind("BrandName") %>' />
                            <br />
                            <asp:RequiredFieldValidator ControlToValidate="BrandNameTextBox" ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Insert a brand name"></asp:RequiredFieldValidator>
                            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-secondary" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>' />
                            <br />
                            BrandName:
                        <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Bind("BrandName") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    </asp:FormView>
                    <asp:ObjectDataSource ID="BrandObjectDataSource" runat="server" DataObjectTypeName="Mobileshop.Models.Brand" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Get" TypeName="Mobileshop.DAL.BrandGetWay" UpdateMethod="Update"></asp:ObjectDataSource>
                </div>

                <div class="container mt-4">
                    <h3 class="bg-info text-center p-2">Brand List</h3>
                </div>
                <div class="container mt-4">
                    <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="brandId" DataSourceID="BrandListSqlDataSource">
                        <Columns>
                            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="brandId">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("brandId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("brandId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Brand Name" SortExpression="BrandName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BrandName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("BrandName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" CausesValidation="True" CommandName="Update" Text="Update"><i class="fa fa-save"></i></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"><i class="fa fa-refresh"></i></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="Edit" Text="Edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="BrandListSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopDB_Ev07ConnectionString %>" DeleteCommand="DELETE FROM [brand] WHERE [brandId] = @brandId" InsertCommand="INSERT INTO [brand] ([BrandName]) VALUES (@BrandName)" SelectCommand="SELECT * FROM [brand]" UpdateCommand="UPDATE [brand] SET [BrandName] = @BrandName WHERE [brandId] = @brandId">
                        <DeleteParameters>
                            <asp:Parameter Name="brandId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BrandName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BrandName" Type="String" />
                            <asp:Parameter Name="brandId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
