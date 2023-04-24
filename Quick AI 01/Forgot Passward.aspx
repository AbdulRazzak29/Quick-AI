<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Forgot Passward.aspx.cs" Inherits="Quick_AI_01.Forgot_Passward" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Forgot Password?</h2>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs" class="dark">
                    <ul>
                        <li><a href="https://localhost:44308/WebForm2.aspx">Home</a></li>
                        <li>Forgot Password?</li>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
</div>
    <div class="col-xl-5 offset-xl-3">
            <div class="login-register-page">
                <!-- Welcome Text -->
                <div class="welcome-text">
                    <h3>Forgot Password?</h3>
                </div>
                                <form method="post">
                    <div class="input-with-icon-left">
                        <i class="la la-envelope"></i>
                        <input type="email" class="input-text with-border" name="email" id="email" placeholder="Email Address" required="">
                    </div>
                    <div style="    padding-left: 20px; padding-right: 10px;" class="text-center hero-icon">
                      <a href="https://localhost:44308/Forgotpasswardsucess.aspx" class="btn btn-primary active" aria-current="page">Resquest Password</a>
                        <br />
                        <br />
                        <br />

                  </div>
                    </form>
                </div>
       
            </div>

</asp:Content>
