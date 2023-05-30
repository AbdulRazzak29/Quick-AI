<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Thanks!.aspx.cs" Inherits="Quick_AI_01.Thanks_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container margin-top-100 margin-bottom-100">
<div class="row">
    <div class="col-md-12">
    	<div class="margin-0-auto">
            <h1 class="margin-bottom-20">Thanks!</h1>
            <p>Thank you for your feedback.</p>
            
 <input type="button" value="No, really, go back!" onclick="myFunction()"/>

        </div>
    </div>
</div>
</div>
    <script>
        
        function myFunction() {
            window.history.back();
        }
    </script>
   
</asp:Content>
