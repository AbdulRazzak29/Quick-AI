<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="LoginPage4.aspx.cs" Inherits="Quick_AI_01.LoginPage4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding-block-end: 62px;" >
    <div class="row" >
        <div class="col-xl-5 offset-xl-3">
            <div class="login-register-page">
                <!-- Welcome Text -->
                <div class="welcome-text">
                    <h3>Let's create your account!</h3>
                    <span>Already have an account? <a href="https://localhost:44308/Homepage.aspx">Log In!</a></span>
                </div>
                                <form method="post" id="register-account-form" action="#" accept-charset="UTF-8" onsubmit="document.getElementById('submit-btn').disabled = true;">
                    <div class="form-group">
                        <div class="input-with-icon-left">
                            <i class="la la-user"></i>
                            <input type="text" class="input-text with-border" placeholder="Full Name" value="" id="name" name="name" onblur="checkAvailabilityName()" required="">
                        </div>
                        <span id="name-availability-status"></span>
                    </div>
                    <div class="form-group">
                        <div class="input-with-icon-left">
                            <i class="la la-user"></i>
                            <input type="text" class="input-text with-border" placeholder="Username" value="" id="Rusername" name="username" onblur="checkAvailabilityUsername()" required="">
                        </div>
                        <span id="user-availability-status"></span>
                    </div>
                    <div class="form-group">
                        <div class="input-with-icon-left">
                            <i class="la la-envelope"></i>
                            <input type="text" class="input-text with-border" placeholder="Email Address" value="" name="email" id="email" onblur="checkAvailabilityEmail()" required="">
                        </div>
                        <span id="email-availability-status"></span>
                    </div>
                    <div class="form-group">
                        <div class="input-with-icon-left">
                            <i class="la la-unlock"></i>
                            <input type="password" class="input-text with-border" placeholder="Password" id="Rpassword" name="password" onblur="checkAvailabilityPassword()" required="">
                        </div>
                        <span id="password-availability-status"></span>
                    </div>
                    <div class="form-group margin-bottom-15">
                        <div class="text-center">
                                                    </div>
                        <span></span>
                    </div>
                    <div class="checkbox">
                        <input type="checkbox" id="agree_for_term" name="agree_for_term" value="1" required="">
                        <label for="agree_for_term"><span class="checkbox-icon"></span> By clicking on Register button you are agree to our Terms &amp; Condition</label>
                    </div>
                    <input type="hidden" name="submit" value="submit">
                    <a  class="btn btn-primary active" aria-current="page" style="width: 100%;">Register</a>
                </form>
            </div>
        </div>
    </div>
</div>
</asp:Content>
