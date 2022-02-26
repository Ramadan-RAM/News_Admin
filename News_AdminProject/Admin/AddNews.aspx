<%@ page title="" language="C#" masterpagefile="~/Admin/Site.Master" autoeventwireup="true" codebehind="AddNews.aspx.cs" inherits="News_AdminProject.Admin.AddNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Add News</a>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card strpied-tabled-with-hover">
                            <div class="card-header ">
                                <h1 class="card-title" style="color: cornflowerblue; text-align: center;">Add News</h1>
                            </div>

                            <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <table style="height: 112px">
                                        <tr>
                                            <td>News of type:</td>
                                            <td>
                                                <asp:CustomValidator ID="CustomValidCat" runat="server" ErrorMessage="Sould to select type of news" ControlToValidate="DlCategory" Text="*" OnServerValidate="CustomValidCat_ServerValidate"></asp:CustomValidator>
                                                <div class="mb-3">
                                                    <asp:DropDownList ID="DlCategory" runat="server" class="form-control" placeholder="News of type" aria-label="News of type" aria-describedby="Newsoftype-addon" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID" AppendDataBoundItems="True">
                                                        <asp:ListItem Value="0">Select type of news</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_News %>" SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Category]"></asp:SqlDataSource>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>News Title:</td>
                                            <td>
                                                <div class="mb-3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Pleas add news title !!" ControlToValidate="txtTitle" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txtTitle" runat="server" class="form-control" placeholder="News Title" aria-label="News Title" aria-describedby="News Title-addon" TextMode="SingleLine" Rows="6"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Summury:</td>
                                            <td>
                                                <div class="mb-3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Pleas add a Summury news !!" ControlToValidate="txtSummury" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:TextBox ID="txtSummury" runat="server" class="form-control" placeholder="Summury" aria-label="Summury" aria-describedby="Summury-addon" TextMode="MultiLine" Rows="6"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Image Path:</td>
                                            <td>
                                                <div class="mb-3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Pleas select Image for a news !!" ControlToValidate="FileUpload1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:Label ID="lblImageState" runat="server" Text="*Extension image path not true!!" ForeColor="Red" Visible="False"></asp:Label>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" placeholder="ImagePath" aria-label="ImagePath" aria-describedby="ImagePath-addon" />

                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Details:</td>
                                            <td>
                                                <div class="mb-3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Pleas add Details for a news  !!" ControlToValidate="txtDetails" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                    <asp:TextBox ID="txtDetails" runat="server" class="form-control" placeholder="Details" aria-label="Details" aria-describedby="Editor News-addon" TextMode="MultiLine" Rows="6">
                                                    </asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="text-center">
                                                    <asp:Button ID="Btn_Save" runat="server" Text="Save" class="btn bg-gradient-info w-100 mt-mb-0" OnClick="Btn_Save_Click" />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
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
</asp:Content>
