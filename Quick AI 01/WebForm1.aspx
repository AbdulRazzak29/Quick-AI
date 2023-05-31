<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Quick_AI_01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       <h2>JavaScript Validation</h2>

<p>Enter a number and click OK:</p>

<input id="id1" type="number" min="100" max="300" required="" />
<button onclick="myFunction()">OK</button>

<p>If the number is less than 100 or greater than 300, an error message will be displayed.</p>

<p id="demo"></p>

<script>
    function myFunction() {
        const inpObj = document.getElementById("id1");
        if (!inpObj.checkValidity()) {
            document.getElementById("demo").innerHTML = inpObj.validationMessage;
        } else {
            document.getElementById("demo").innerHTML = "Input OK";
        }
    }
</script>
        </div>
    </form>
</body>
</html>
