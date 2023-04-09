<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recepient.aspx.cs" Inherits="BloodBankProject.recepient" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Blood Bank Recepient Login</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
    
    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Register</h3>
                <form id="form1" runat="server">

                  <div class="form-group">
                    <label>Email</label>
                    <asp:TextBox ID="email" runat="server" class="form-control p_input"></asp:TextBox>
                  </div>
                   
                  <div class="form-group">
                    <label>Password</label>
                    <asp:TextBox ID="number" runat="server" class="form-control p_input" TextMode="Password"></asp:TextBox>
                  </div>

                  <div class="text-center">
                      <asp:Button ID="login" runat="server" class="btn btn-primary btn-block enter-btn" Text="Login" />
                  </div>
                  <p class="sign-up text-center">Register
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Register.aspx">Log In</asp:HyperLink>
                  </p>
                  <p class="sign-up text-center">Recepient
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="recepient.aspx">Log In</asp:HyperLink>
                  </p>
                </form>
              </div>
            </div>
          </div>
        </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../assets/js/off-canvas.js"></script>
    <script src="../assets/js/hoverable-collapse.js"></script>
    <script src="../assets/js/misc.js"></script>
    <script src="../assets/js/settings.js"></script>
    <script src="../assets/js/todolist.js"></script>
    <!-- endinject -->
  </body>
</html>