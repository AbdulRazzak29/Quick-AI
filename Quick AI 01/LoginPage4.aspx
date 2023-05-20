<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="LoginPage4.aspx.cs" Inherits="Quick_AI_01.LoginPage4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding-block-end: 62px;margin-top: 12%;" >
        <div class="row">
            <div class="col-xl-5 offset-xl-3">
                <div class="login-register-page">
                    <!-- Welcome Text -->
                    <div class="welcome-text">
                        <h3>Let's create your account!</h3>
                        <p>&nbsp;</p>
                        <span>Already have an account? <a href="https://localhost:44308/Login.aspx">Log In!</a>

                        </span>
                        &nbsp;
                    </div>
                    <form method="post" id="register-account-form" action="#" accept-charset="UTF-8" onsubmit="document.getElementById('submit-btn').disabled = true;">
                        <div class="form-group">
                            <div >
                                <i class="la la-user"></i>
                                 <span class="input-group-addon" ><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox  ID="TextBox1" class="form-control" name="Full Name" placeholder="Full Name"   runat="server" >
                  </asp:TextBox>
                            </div>
                            <span id="name-availability-status"></span>
                        </div>
                        <div class="form-group">
                            <div>
                                <i class="la la-user"></i>
                               <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="TextBox2" class="form-control" name="Full Name" placeholder="Username" runat="server">
                    </asp:TextBox>
                            </div>
                           
                        </div>
                        <div class="form-group">
                            <div>
                                <i class="la la-envelope"></i>
                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="TextBox3" class="form-control" name="email" placeholder="Email"  runat="server" >
                 </asp:TextBox>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <div >
                                <i class="la la-unlock"></i>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="TextBox4" class="form-control" name="password" placeholder="Password"  runat="server">
                 </asp:TextBox>
                            </div>
                            
                        </div>
                        <div class="form-group margin-bottom-15">
                            <div class="text-center">
                            </div>
                            
                        </div>
                        <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">By clicking on Register button you are agree to our Terms & Condition</label>
              </div>
                        
                        <asp:Button Class="btn btn-primary"   ID="Button1"  runat="server" Text="Registration" OnClick="Button1_Click"  />
                    </form>
                </div>
            </div>
        </div>
</div>
    
</asp:Content>
