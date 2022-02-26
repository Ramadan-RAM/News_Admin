<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="ShowCategory.aspx.cs" Inherits="News_AdminProject.Admin.ShowCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Show Category</a>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card strpied-tabled-with-hover">
                            <div class="card-header ">
                                <h1 class="card-title" style="color: cornflowerblue; text-align: center;">Show Categories</h1>

                            </div>

                            <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <label>Show Categories</label>

                                    <asp:GridView runat="server" ID="GrdCategory" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="95%" OnRowCancelingEdit="GrdCategory_RowCancelingEdit" OnRowDeleting="GrdCategory_RowDeleting" OnRowEditing="GrdCategory_RowEditing" OnRowUpdating="GrdCategory_RowUpdating">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblCatID" runat="server" Text='<%# Eval("CategoryID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Category Name">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtCategoryName" runat="server" Height="22px" Text='<%# Bind("CategoryName") %>' Width="302px"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="lblItemCategoryName" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="50%" />
                                            </asp:TemplateField>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
