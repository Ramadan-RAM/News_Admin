<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="News_AdminProject.Admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Home</a>
                <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-toggle="dropdown">
                                <i class="nc-icon nc-palette"></i>
                                <span class="d-lg-none">Dashboard</span>
                            </a>
                        </li>
                        

                        <li class="dropdown nav-item">
                            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                <i class="nc-icon nc-planet"></i>
                                <span class="notification">5</span>
                                <span class="d-lg-none">Notification</span>
                            </a>
                            <%--<ul class="dropdown-menu">
                                <a class="dropdown-item" href="#">Notification 1</a>
                                <a class="dropdown-item" href="#">Notification 2</a>
                                <a class="dropdown-item" href="#">Notification 3</a>
                                <a class="dropdown-item" href="#">Notification 4</a>
                                <a class="dropdown-item" href="#">Another notification</a>
                            </ul>--%>
                        </li>

                        <li class="nav-item">
                        <form class="navbar-form">
                            <span class="bmd-form-group">
                                <div class="input-group no-border">
                                    <input type="text" value="" class="form-control" placeholder="Search...">
                                    <button type="submit" class="btn btn-default btn-round btn-just-icon">
                                        <i class="material-icons">search</i>
                                        <div class="ripple-container"></div>
                                    </button>
                                </div>
                            </span>
                        </form>
                       </li>

                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <span class="no-icon">Account</span>
                                </a>
                            </li>
                        </ul>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="no-icon">Dropdown</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#pablo">
                                <span class="no-icon">Log out</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card strpied-tabled-with-hover" style="left: 0px; top: 0px">
                            <div class="card-header ">
                                <h1 class="card-title" style="color: cornflowerblue; text-align: center;">News</h1>

                            </div>
                            <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <label>News</label>
                                   <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" 
        Width="598px" CellPadding="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Vertical" CssClass="card-image" ForeColor="Black">
                                   <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                   <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" CssClass=" " />
                                       <ItemStyle Font-Bold="False" Font-Underline="False" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "/Images/"+Eval("ImagePath") %>' />
            <br />
            CategoryName:
            <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
            <br />
            NewsTitle:
            <asp:Label ID="NewsTitleLabel" runat="server" Text='<%# Eval("NewsTitle") %>' />
            <br />
            Details:
            <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
            <br />
            <br />
        </ItemTemplate>
                                   <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_News %>" SelectCommand="SELECT [ImagePath], [CategoryName], [NewsTitle], [Details] FROM [View_NewsData]"></asp:SqlDataSource>
                            </div>
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
