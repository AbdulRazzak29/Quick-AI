<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Quick_AI_01.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div>
        <div id="sign-in-dialog" class="zoom-anim-dialog dialog-with-tabs popup-dialog">
        <ul class="popup-tabs-nav" style="pointer-events: none;">
            <li class="active"><a href="#login">Login</a></li>
        </ul>
        <div class="popup-tabs-container">
            <div class="popup-tab-content" id="login" style="">
                <div class="welcome-text">
                    <h3>Welcome Back!</h3>
                    <span>Don't have an account? <a href="https://localhost:44308/LoginPage4.aspx">Sign Up Now!</a></span>
                </div>
                

                <form id="login-form" method="post" action="https://localhost:44308/Homepage.aspx">
                    <div id="login-status" class="notification error" style="display:none"></div>
                    <div class="input-with-icon-left">
                        <i class="la la-user"></i>
                        <input type="text" class="input-text with-border" name="username" id="username" placeholder="Username / Email Address" required="">
                    </div>

                    <div class="input-with-icon-left">
                        <i class="la la-unlock"></i>
                        <input type="password" class="input-text with-border" name="password" id="password" placeholder="Password" required="">
                    </div>
                    <a href="https://localhost:44308/Forgot%20Passward.aspx" class="forgot-password">Forgot Password?</a>
                     <a  class="btn btn-primary active" aria-current="page" style="width: 100%;">Login</a>
            </div>
    </div>
<button title="Close (Esc)" type="button" class="mfp-close"></button></div>
       
        </div>
</asp:Content>
