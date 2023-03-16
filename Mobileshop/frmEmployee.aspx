<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmEmployee.aspx.cs" Inherits="Mobileshop.frmEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <div class="row">
        <div class="col">
            <div class="container mt-4">
                <h3 class="bg-info text-center p-2">Insert Employee Information</h3>
            </div>
            <%--<div class="container mt-4">
                <asp:Button ID="Button1" CssClass="btn btn-info" OnClick="Button1_Click" runat="server" Text="Employee List" />
            </div>--%>
            <div class="container mt-4">
                <div class="col-6 m-auto pb-3 fw-bold text-danger text-center">
                    <asp:ValidationSummary ID="ValidationSummary1" CssClass="rounded-3 p-3" runat="server" HeaderText="All Validation Summery" ShowMessageBox="True" BackColor="#CC3300" BorderStyle="Solid" Font-Bold="True" ForeColor="White" DisplayMode="List" BorderColor="#6600FF" />
                </div>
            </div>


            <div class="container mt-4">
                <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Employee_ID" DataSourceID="EmployeeSqlDataSource" DefaultMode="Insert" ForeColor="#333333" GridLines="None" OnItemInserting="DetailsView1_ItemInserting1" OnItemUpdating="DetailsView1_ItemUpdating1">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Employee_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Employee_ID" />
                        <asp:TemplateField HeaderText="Name :" SortExpression="Employee_Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Employee_Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1name" CssClass="form-control" runat="server" Text='<%# Bind("Employee_Name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1name" ErrorMessage="Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Employee_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Post" SortExpression="Employee_Post">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Employee_Post") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("Employee_Post") %>' CssClass="form-control" runat="server" DataSourceID="EmployeePostSqlDataSource" DataTextField="Post_Name" DataValueField="Post_Id"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Select a post" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:SqlDataSource ID="EmployeePostSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopDB_Ev07ConnectionString %>" SelectCommand="SELECT * FROM [Post]"></asp:SqlDataSource>
                                <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Employee_Post") %>'></asp:TextBox>--%>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Employee_Post") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Employee_Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Employee_Email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("Employee_Email") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Insert an email" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Not an email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Employee_Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Join Date" SortExpression="Join_Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Join_Date") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" TextMode="Date" CssClass="form-control" runat="server" Text='<%# Bind("Join_Date") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Select a date" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Join_Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Salary" SortExpression="Basic_Salary">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Basic_Salary") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Text='<%# Bind("Basic_Salary") %>'></asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Salary must be numaric value and rage up to 10000" ForeColor="Red" MaximumValue="500000" MinimumValue="10000" Type="Integer"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Add salary" ForeColor="Red"></asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Basic_Salary") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Picture" SortExpression="Employee_Picture">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Employee_Picture") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="fuPicture" CssClass="form-control" runat="server" />
                                <asp:HiddenField ID="HiddenField1" Value='<%# Bind("Employee_Picture") %>' runat="server" />
                                <%--<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Employee_Picture") %>'></asp:TextBox>--%>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Employee_Picture") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="isActive" HeaderText="isActive" SortExpression="isActive" />
                        <asp:TemplateField ShowHeader="False">
                            <InsertItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert"><i class="fa fa-save"></i></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-secondary" CausesValidation="False" CommandName="Cancel" Text="Cancel"><i class="fa fa-refresh"></i></asp:LinkButton>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="EmployeeSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopDB_Ev07ConnectionString %>" DeleteCommand="DELETE FROM [EmployeeInfo] WHERE [Employee_ID] = @Employee_ID" InsertCommand="INSERT INTO [EmployeeInfo] ([Employee_Name], [Employee_Post], [Employee_Email], [Join_Date], [Basic_Salary], [Employee_Picture], [isActive]) VALUES (@Employee_Name, @Employee_Post, @Employee_Email, @Join_Date, @Basic_Salary, @Employee_Picture, @isActive)" SelectCommand="SELECT * FROM [EmployeeInfo]" UpdateCommand="UPDATE [EmployeeInfo] SET [Employee_Name] = @Employee_Name, [Employee_Post] = @Employee_Post, [Employee_Email] = @Employee_Email, [Join_Date] = @Join_Date, [Basic_Salary] = @Basic_Salary, [Employee_Picture] = @Employee_Picture, [isActive] = @isActive WHERE [Employee_ID] = @Employee_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Employee_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Employee_Name" Type="String" />
                        <asp:Parameter Name="Employee_Post" Type="Int32" />
                        <asp:Parameter Name="Employee_Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="Join_Date" />
                        <asp:Parameter Name="Basic_Salary" Type="Decimal" />
                        <asp:Parameter Name="Employee_Picture" Type="String" />
                        <asp:Parameter Name="isActive" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Employee_Name" Type="String" />
                        <asp:Parameter Name="Employee_Post" Type="Int32" />
                        <asp:Parameter Name="Employee_Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="Join_Date" />
                        <asp:Parameter Name="Basic_Salary" Type="Decimal" />
                        <asp:Parameter Name="Employee_Picture" Type="String" />
                        <asp:Parameter Name="isActive" Type="Boolean" />
                        <asp:Parameter Name="Employee_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>


            
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
