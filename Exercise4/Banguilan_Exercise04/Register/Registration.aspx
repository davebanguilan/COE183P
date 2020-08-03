<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Banguilan_Exercise04.Register.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <title>Sign Up</title>
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
                                    <h1>SIGN UP PAGE</h1>
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
                                <div class="col-md-6">
                                    <label>First Name</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox_FN" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Last Name</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox_LN" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <label>Email</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox_Email" runat="server" TextMode="Email"></asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <label>Username</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox_Username" runat="server" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label>Password</label>
                                    <div class="form-group">
                                       <asp:TextBox CssClass="form-control" ID="TextBox_Password" runat="server"  TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>

                                 <div class="row">
                                     <div class="col-8 mx-auto">
                                           <div class="form-group">
                                              <asp:Button CssClass="btn btn-primary" ID="Button_SignUp" runat="server" Text="Sign Up" OnClick="Button_SignUp_Click" />
                                           </div>
                                     </div>
                                  </div>
                                
                            </div>
                            <a href="../LoginPage.aspx">LOGIN PAGE</a>
                        </div>
                    </div>
                </div>
            </div>
             
        </div>

        <script src="../js/jquery-3.5.1.slim.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
    </form>
</body>
</html>
