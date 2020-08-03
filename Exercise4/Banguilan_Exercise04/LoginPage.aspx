<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Banguilan_Exercise04.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col text-center">
                                    <h1>LOGIN PAGE</h1>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <br />
                            <br />
                            
                            <div class="row">
                                <div class="col">
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox_LoginUser" runat="server" ></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox_LoginPass" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block" ID="Button_Login" runat="server" Text="Login" OnClick="Button_Login_Click"/>
                                </div>
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-info btn-block" ID="Button_SignUp" runat="server" Text="Sign Up" OnClick="Button_SignUp_Click" />
                                </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
             
        </div>


        <script src="js/jquery-3.5.1.slim.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
