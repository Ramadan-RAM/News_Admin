<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="ShowNews.aspx.cs" Inherits="News_AdminProject.Admin.ShowNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Show News</a>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card strpied-tabled-with-hover">
                            <div class="card-header ">
                                <h1 class="card-title" style="color: cornflowerblue; text-align: center;">News</h1>

                            </div>

                            <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <label>Show News</label>
                                    <div>
                            <asp:DropDownList ID="DlCategory" runat="server" class="form-control"
                                placeholder="News of type" aria-label="News of type" aria-describedby="Newsoftype-addon" DataTextField="CategoryName" DataValueField="CategoryID" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DlCategory_SelectedIndexChanged" Width="227px"></asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_News %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Category]"></asp:SqlDataSource>
                                    </div>
                                    <hr />
                                    <asp:GridView ID="GrdNews" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="166px" Width="96%" OnRowDeleting="GrdNews_RowDeleting">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID" Visible="False">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("NewsID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="News of Type">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Title News">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "NewsDetails.aspx?NewsID="+Eval("NewsID") %>' Text='<%# Eval("NewsTitle") %>'></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:CommandField ShowDeleteButton="True" />
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
