<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Forgotpasswardsucess.aspx.cs" Inherits="Quick_AI_01.Forgotpasswardsucess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-xl-5 offset-xl-3">
            <div class="login-register-page">
                <!-- Welcome Text -->
                <div class="welcome-text">
                    <h3>Forgot Password?</h3>
                </div>
                <span class="status-available">Confirmation mail sent.<br>
                        Please check your email account for the forgot password details
                    </span>                <form method="post">
                    <div class="input-with-icon-left">
                        <i class="la la-envelope"></i>
                        <input type="email" class="input-text with-border" name="email" id="email" placeholder="Email Address" required="">
                    </div>
                    <button class="button full-width button-sliding-icon ripple-effect margin-top-10" name="submit" type="submit" >Request Password <i class="icon-feather-arrow-right"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
