<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="QuickAI0._1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="signup.css" rel="stylesheet" />
    <div class="login">
        <div class="login1">
           <h3 style="padding-left: 30px;"> <b>Lets Create Your account</b></h3>
            <form>
                <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><asp:TextBox ID="TextBox1" class="form-control" name="Full Name" placeholder="Full Name" required runat="server">
                  </asp:TextBox>
                </div><br>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><asp:TextBox ID="TextBox2" class="form-control" name="Full Name" placeholder="Username" required runat="server">
                    </asp:TextBox>
                  </div><br>
        </form> 
              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><asp:TextBox ID="TextBox3" class="form-control" name="email" placeholder="Email" required runat="server">
                 </asp:TextBox>
              </div>
               
                <br>
              <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span><asp:TextBox ID="TextBox4" class="form-control" name="password" placeholder="Password" required runat="server">
                 </asp:TextBox>
              </div><br>
               
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">By clicking on Register button you are agree to our Terms & Condition</label>
              </div>
              <div >
              <asp:Button ID="Button1" style="width: 100%;" class="btn btn-primary" runat="server" Text="Register" Onclick="display" />       

              </div>
        </div>
    </div>  

<script>
    function display(){
        alert('successfully registered')
    }
</script>
</asp:Content>
