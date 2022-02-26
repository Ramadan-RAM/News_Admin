<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="NewsDetails.aspx.cs" Inherits="News_AdminProject.Admin.NewsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Details News</a>
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
                                    <label>Details News</label>
                                   <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <p>
                                        <asp:Label ID="lblNewsId" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </p>
                                    <hr />
                                    <div>
                                          <asp:Image ID="Image1" runat="server" class="form-control" Height="306px" Width="534px"/>
                                    </div>
                                    <hr />
                                    <table style="height: 112px; width: 560px;">
                                        <tr>
                                          <td>News Title:</td>
                                                    <td>
                                                        <div class="mb-3">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Pleas add news title !!" ControlToValidate="txtTitle" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtTitle" runat="server" class="form-control" Width="336px"></asp:TextBox>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Summury:</td>
                                                    <td>
                                                        <div class="mb-3">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Pleas add a Summury news !!" ControlToValidate="txtSummury" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:TextBox ID="txtSummury" runat="server" class="form-control" TextMode="MultiLine" Rows="6" Width="341px"></asp:TextBox>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>Details:</td>
                                                    <td>
                                                        <div class="mb-3">
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Pleas add Details for a news  !!" ControlToValidate="txtDetails" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                            <asp:TextBox ID="txtDetails" runat="server" class="form-control" TextMode="MultiLine" Rows="6" Width="344px" Height="146px"></asp:TextBox>
                                                        </div>
                                                    </td>
                                                </tr>
                                         <tr>
                                            <td>Image Name:</td>
                                            <td>
                                                <div class="mb-3">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Pleas write Extension name Image true !!" ControlToValidate="txtImageName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:Label ID="lblImageState" runat="server" Text="*Extension image name not true!!" ForeColor="Red" Visible="False"></asp:Label>
                                               
                                                      <asp:TextBox ID="txtImageName" runat="server" class="form-control" Rows="6" Width="344px"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                                <tr>
                                                    <td>
                                                        <div class="text-center">
                                                            <asp:Button ID="Btn_Update" runat="server" Text="Update" class="btn bg-gradient-info w-100 mt-mb-0" OnClick="Btn_Update_Click" />
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
