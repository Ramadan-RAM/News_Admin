<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="ShowUsers.aspx.cs" Inherits="News_AdminProject.Admin.ShowUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Show Users</a>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card strpied-tabled-with-hover" style="left: 0px; top: 0px">
                            <div class="card-header ">
                                <h1 class="card-title" style="color: cornflowerblue; text-align: center;">Show Users</h1>

                            </div>
                            <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <label>Show Users</label>
                                    <asp:GridView ID="GrdUsers" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCancelingEdit="GrdUsers_RowCancelingEdit" OnRowDeleting="GrdUsers_RowDeleting" OnRowEditing="GrdUsers_RowEditing" OnRowUpdating="GrdUsers_RowUpdating" Width="95%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="UserID" Visible="False">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblUserId" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="User Name">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Password">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtPassword" runat="server" Text='<%# Bind("Passowrd") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Passowrd") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:CommandField HeaderText="operations" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav>
                    <ul class="footer-menu">
                        <li>
                            <a href="#">Home
                            </a>
                        </li>
                        <li>
                            <a href="#">Company
                            </a>
                        </li>
                        <li>
                            <a href="#">Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">Blog
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-center">
                        CopyWrite ©
                            <script>
                                document.write(new Date().getFullYear())
                            </script>
                        Ram-RuN. Development
                           
                    </p>
                </nav>
            </div>
        </footer>
    </div>
</asp:Content>
