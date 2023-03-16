<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmEmployeeList.aspx.cs" Inherits="Mobileshop.frmEmployeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <div class="row">
        <div class="col">

             <div class="container mt-4">
                <h3 class="bg-info text-center p-2">Employee List</h3>
            </div>

            <div class="container-fluid mt-4">
                <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Employee_ID" DataSourceID="EmployeeListSqlDataSource" ForeColor="#333333" GridLines="None" OnRowUpdating="GridView1_RowUpdating">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Employee_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Employee_ID" />
                        <asp:BoundField DataField="Employee_Name" HeaderText="Name" SortExpression="Employee_Name" />


                        <asp:TemplateField HeaderText="Post" SortExpression="Employee_Post">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server" DataSourceID="EmployeePostSqlDataSource" SelectedValue='<%# Bind("Employee_Post") %>' DataTextField="Post_Name" DataValueField="Post_Id"></asp:DropDownList>
                                <asp:SqlDataSource ID="EmployeePostSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopDB_Ev07ConnectionString %>" SelectCommand="SELECT * FROM [Post]"></asp:SqlDataSource>
                                <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Employee_Post") %>'></asp:TextBox>--%>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Post_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:BoundField DataField="Employee_Email" HeaderText="Email" SortExpression="Employee_Email" />


                        <asp:TemplateField HeaderText="Join Date" SortExpression="Join_Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Join_Date","{0:yyyy-MM-dd}") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Join_Date","{0:yyyy-MM-dd}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:BoundField DataField="Basic_Salary" HeaderText="Salary" SortExpression="Basic_Salary" />


                        <asp:TemplateField HeaderText="Picture" SortExpression="Employee_Picture">
                            <EditItemTemplate>
                                 <asp:FileUpload ID="fuPicture" CssClass="form-control" runat="server" />
                                <asp:HiddenField ID="HiddenField1" Value='<%# Bind("Employee_Picture") %>' runat="server" />
                                <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Employee_Picture") %>'></asp:TextBox>--%>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Employee_Picture","~/Images/{0}") %>' Width="60" runat="server" />
                                <%--<asp:Label ID="Label3" runat="server" Text='<%# Bind("Employee_Picture") %>'></asp:Label>--%>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:CheckBoxField DataField="isActive" HeaderText="isActive" SortExpression="isActive" />
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" CausesValidation="True" CommandName="Update" Text="Update"><i class="fa fa-save"></i></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-warning" CausesValidation="False" CommandName="Cancel" Text="Cancel"><i class="fa fa-refresh"></i></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="Edit" Text="Edit"><i class="fa fa-pencil"></i></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="EmployeeListSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:MobileShopDB_Ev07ConnectionString %>" DeleteCommand="DELETE FROM [EmployeeInfo] WHERE [Employee_ID] = @Employee_ID" InsertCommand="INSERT INTO [EmployeeInfo] ([Employee_Name], [Employee_Post], [Employee_Email], [Join_Date], [Basic_Salary], [Employee_Picture], [isActive]) VALUES (@Employee_Name, @Employee_Post, @Employee_Email, @Join_Date, @Basic_Salary, @Employee_Picture, @isActive)" SelectCommand="SELECT e.Employee_ID,e.Employee_Name,e.Employee_Post,e.Employee_Email,p.Post_Name,e.Join_Date,e.Basic_Salary,e.Employee_Picture,e.isActive FROM EmployeeInfo e INNER JOIN Post p ON p.Post_Id=e.Employee_Post" UpdateCommand="UPDATE [EmployeeInfo] SET [Employee_Name] = @Employee_Name, [Employee_Post] = @Employee_Post, [Employee_Email] = @Employee_Email, [Join_Date] = @Join_Date, [Basic_Salary] = @Basic_Salary, [Employee_Picture] = @Employee_Picture, [isActive] = @isActive WHERE [Employee_ID] = @Employee_ID">
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
