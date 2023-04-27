<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="_1.Quick_AI.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
            <div id="sign-in-dialog" class="zoom-anim-dialog dialog-with-tabs popup-dialog">
                <ul class="popup-tabs-nav" style="pointer-events: none;">
                    <li class="active"><a href="https://localhost:44308/LoginPage4.aspx">Login</a></li>
                </ul>
                <div class="popup-tabs-container">
                    <div class="popup-tab-content" id="login" style="">
                        <div class="welcome-text">
                            <h3>Welcome Back!</h3>
                            <span>Don't have an account? <a href="https://localhost:44308/LoginPage4.aspx">Sign Up Now!</a></span>
                        </div>


                        <form id="login-form" method="post">
                            <div id="login-status" class="notification error" style="display: none"></div>
                            <div class="input-with-icon-left">
                                <i></i>
                                <asp:TextBox ID="TextBox1" class="form-control" name="Username / Email Address" placeholder="Username / Email Address" runat="server"></asp:TextBox>
                                
                            </div>

                            <div class="input-with-icon-left">
                                <i class="la la-unlock"></i>
                                <asp:TextBox  ID="TextBox2" class="form-control" name="Password" placeholder="Password" runat="server"></asp:TextBox>
                            </div>
                            <a href="https://localhost:44308/Forgot%20Passward.aspx" class="forgot-password">Forgot Password?</a>
                            <div>
                                <center>
                              
                                </center>
                            </div>
                        </form>
                    </div>
                </div>
                <button title="Close (Esc)" type="button" class="mfp-close"></button>
            </div>

        </div>
  
</asp:Content>
