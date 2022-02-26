<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="News_AdminProject.Admin.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Add Category</a>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card strpied-tabled-with-hover" style="left: 0px; top: 0px">
                            <div class="card-header ">
                                <h1 class="card-title" style="color: cornflowerblue; text-align: center;">Category</h1>

                            </div>
                            <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <label>Add Category</label>
                                    <div class="mb-3">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategoryName" ErrorMessage="*RequiredFieldValidator!!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtCategoryName" runat="server" class="form-control" placeholder="Category" aria-label="Category" aria-describedby="category-addon"></asp:TextBox>
                                    </div>
                                    <div class="text-center">
                                        <asp:Button ID="Btn_Save" runat="server" Text="Save" class="btn bg-gradient-info w-100 mt-mb-0" OnClick="Btn_Save_Click" />
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
