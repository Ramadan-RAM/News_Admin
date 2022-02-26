<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site.Master" AutoEventWireup="true" CodeBehind="AddUsers.aspx.cs" Inherits="News_AdminProject.Admin.AddUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo">Add Users</a>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card strpied-tabled-with-hover" style="left: 0px; top: 0px">
                            <div class="card-header ">
                                <h1 class="card-title" style="color: cornflowerblue; text-align: center;">Users</h1>

                            </div>
                            <div class="card-body table-full-width table-responsive">
                                <div class="card-body">
                                    <label>Add Users</label>
                                    <table style="width: 397px">
                                        <tr>
                                            <td colspan="2">
                              <asp:ValidationSummary ID="ValidationSummary1"  runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 145px">User name:</td>
                                            <td>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Pleas Add user name !!" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                 <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="User name" aria-label="User name" aria-describedby="User name-addon" TextMode="SingleLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 145px">Email:</td>
                                            <td>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Pleas Add @email !!" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Pleas Add @Emil !!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                                
                                                 <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email" aria-label="Email" aria-describedby="Email-addon" TextMode="SingleLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td style="width: 145px">Role:</td>
                                            <td>

                                                <asp:DropDownList ID="DlRoles" runat="server" class="form-control" placeholder="DlRoles" aria-label="DlRoles" aria-describedby="DlRoles-addon">
                                                    <asp:ListItem Value="1">Admin</asp:ListItem>
                                                    <asp:ListItem Value="1">User</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td style="width: 145px">Passwored:</td>
                                            <td>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Pleas Add Password !!" ForeColor="Red" ControlToValidate="txtPasswored">*</asp:RequiredFieldValidator>

                                                 <asp:TextBox ID="txtPasswored" runat="server" class="form-control" placeholder="Passwored" aria-label="Passwored" aria-describedby="Passwored-addon" TextMode="Password" Rows="6"></asp:TextBox>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td style="width: 145px">Confirm Passwored:</td>
                                            <td>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password confirm not Compare Validator!!" ForeColor="#FF3300" Text="*" ControlToCompare="txtConfirmPass" ControlToValidate="txtPasswored"></asp:CompareValidator>
                                                 <asp:TextBox ID="txtConfirmPass" runat="server" class="form-control" placeholder="Confirm Passwored" aria-label="Confirm Passwored" aria-describedby="ConfirmPasswored-addon" TextMode="Password"></asp:TextBox>
                                            </td>
                                        </tr>
                                         <tr>
                                              <td></td>
                                            <td style="width: 145px">
                                                <div class="text-center">
                                        <asp:Button ID="Btn_Save" runat="server" Text="Save" class="btn bg-gradient-info w-100 mt-mb-0" OnClick="Btn_Save_Click" Width="187px" />
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
