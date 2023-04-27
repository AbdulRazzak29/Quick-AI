<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userregister.aspx.cs" Inherits="_1.Quick_AI.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="signup.css" rel="stylesheet" />
    <div class="container" style="padding-block-end: 62px;" >
        <div class="row">
            <div class="col-xl-5 offset-xl-3">
                <div class="login-register-page">
    <div class="login" style="text-align: center;">
        <div class="login1">
           <h3 style="padding-left: 30px;"> <b>Lets Create Your account</b></h3>

                <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><asp:TextBox ID="TextBox1" class="form-control" name="Full Name" placeholder="Full Name"  runat="server">
                  </asp:TextBox>
                </div><br>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><asp:TextBox ID="TextBox2" class="form-control" name="Full Name" placeholder="Username" runat="server">
                    </asp:TextBox>
                  </div><br>
     
              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><asp:TextBox ID="TextBox3" class="form-control" name="email" placeholder="Email"  runat="server" >
                 </asp:TextBox>
              </div>
               
                <br>
              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span><asp:TextBox ID="TextBox4" class="form-control" name="password" placeholder="Password"  runat="server">
                 </asp:TextBox>
              </div><br>
               
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">By clicking on Register button you are agree to our Terms & Condition</label>
              </div>
              <div >
         <asp:Button ID="Button1" runat="server" Text="reg" OnClick="Button1_Click" />
        
                    

      
              </div>
        </div>
    </div>  
             </div>
        </div>
    </div> 

         </div> 


</asp:Content>
