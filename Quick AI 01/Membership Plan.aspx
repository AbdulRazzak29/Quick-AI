
<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Membership Plan.aspx.cs" Inherits="Quick_AI_01.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main">
        <div class="section">
            <div class="section1">
                <h1>Membership Plan</h1>
                <div class="radio">
                    <input type="radio" name="radio-buttons" value="monthly" onchange="enableInputField(5)" style="opacity: 1; margin-left: -331px; top: -2px;" />
                    Monthly&nbsp; &nbsp; &nbsp;
               <input type="radio" name="radio-buttons" value="yearly" onchange="enableInputField(50)" style="opacity: 1; margin-top: -15px; margin-left: -257px; top: 18px;" />
                    Yearly&nbsp; &nbsp; &nbsp;
               <input type="radio" name="radio-buttons" value="Lifetime" onchange="enableInputField(550)" style="opacity: 1; margin-top: -16px; margin-left: -195px; top: 18px;" />
                    Life Time&nbsp; &nbsp; &nbsp;
                </div>
            </div>
        </div>
        <div class="section2">
            <div class="innersection">
                <ul>
                    <li><strong>Free Plan</strong></li>
                    <li>
                        <div class="pricing-plan-label"><strong>Free </strong></div>
                    </li>
                    <li>Features of Free Plan</li>
                    <li><b>32</b> AI Document Templates</li>
                    <li><b>10,000</b> Words per month</li>
                    <li><b>100</b> Images per month</li>
                    <li><b>0</b> Speech to Text per month </li>
                    <li><b>0</b> MB Audio file size limit</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Chat <i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Code<i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Hide Ads</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Setup</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Support</li>
                    <li>
                        <button class="btn btn-primary" style="width: 200px;">Current Plan</button></li>
                </ul>
            </div>
            <div class="innersection">
                <ul>
                    <li><strong>Trail Plan</strong></li>
                    <li>
                        <div class="pricing-plan-label"><strong>Trail</strong></div>
                    </li>
                    <li>Features of Free Plan</li>
                    <li><b>32</b> AI Document Templates</li>
                    <li><b>10,000</b> Words per month</li>
                    <li><b>100</b> Images per month</li>
                    <li><b>0</b> Speech to Text per month </li>
                    <li><b>0</b> MB Audio file size limit</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Chat <i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Code<i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Hide Ads</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Setup</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Support</li>
                    <li>
                        <button class="btn btn-primary" style="width: 200px;">Upgrade</button></li>
                </ul>
            </div>
            <div class="innersection">
                <ul>
                    <li><strong>Extended Plan</strong></li>
                    <li>
                        <div class="pricing-plan-label" style="height: 60px;">
                            <input type="text" id="input-field" disabled style="height: 30px;background-color: #f0f0f0;"></div>
                    </li>
                    <li>Features of Free Plan</li>
                    <li><b>32</b> AI Document Templates</li>
                    <li><b>10,000</b> Words per month</li>
                    <li><b>100</b> Images per month</li>
                    <li><b>0</b> Speech to Text per month </li>
                    <li><b>0</b> MB Audio file size limit</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Chat <i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Code<i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>AI Code</li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Free Setup</li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Free Support</li>
                    <li>
                        <button class="btn btn-primary" style="width: 200px;"><a href="#">Upgrade</a></button></li>
                </ul>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <style>
.main{
            margin-left: 160px;
            margin-right: 160px;
            margin-top:100px;
            
        }
        .section{
           display: flex;
           
        }
        .radio{
            margin-left: 400px;
            
            
        }
        .section2{
            margin-top: 118px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            width: 100%;
            height: 500px;
            display: flex;
            justify-content: space-between;
        }
        .innersection{
            display: flex;
        }
        .innersection a{
            color:whitesmoke;
        }
        .innersection li{
            text-decoration: none;
            list-style-type: none;
            margin-top: 8px;
           
        }
        .innersection li button:hover{
            background-color: rgb(33, 148, 224);
        }
    </style>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <script src="fontawesome/js/all.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    <script>
    function enableInputField(value) {
  const radioButtons = document.getElementsByName('radio-buttons');
  const inputField = document.getElementById('input-field');
  for (let i = 0; i < radioButtons.length; i++) {
    if (radioButtons[i].checked) {
      inputField.disabled = false;
      switch (value) {
        case 5:
          inputField.value = "₹" + value + " per month";
          break;
        case 50:
          inputField.value = "₹" + value + " per year";
          break;
        case 550:
          inputField.value = "₹" + value + " lifetime";
          break;
        default:
          inputField.value = "";
          break;
      }
      return;
    }
  }
  inputField.disabled = true;
  inputField.value = "";
}

    </script>
</asp:Content>
