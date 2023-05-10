﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Quick_AI_01.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="dashboard-headline" style="    margin-top: 40px;padding: 50px;">
                <h3>Membership Plan</h3>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs" class="dark">
                    <ul>
                        <li><a href="https://localhost:44308/Home.aspx">Home</a></li>
                        <li>Dashboard</li>
                    </ul>
                </nav>
            </div>
   <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <form name="form1" method="post">
                    <div class="billing-cycle-radios margin-bottom-70">
                        <div class="radio billed-monthly-radio">
                            <input id="radio-monthly" name="billed-type" type="radio" value="monthly" checked="" top="0">
                            <label for="radio-monthly"><span class="radio-label"></span>Monthly  </label>
                        </div>
                        <div class="radio billed-yearly-radio">
                            <input id="radio-yearly" name="billed-type" type="radio" value="yearly" top="0">
                            <label for="radio-yearly"><span class="radio-label"></span>Yearly  </label>
                        </div>
                        <div class="radio billed-lifetime-radio">
                            <input id="radio-lifetime" name="billed-type" type="radio" value="lifetime" top="0">
                            <label for="radio-lifetime"><span class="radio-label"></span>Lifetime </label>
                        </div>
                    </div>
                    <!-- Pricing Plans Container -->
                    <div class="pricing-plans-container">
                        <!-- Plan -->
                        <div class="pricing-plan " data-monthly-price="1" data-annual-price="1" data-lifetime-price="1">
                            <h3>Free Plan</h3>
                            <div class="pricing-plan-label"><strong>Free   </strong></div>


                            <div class="pricing-plan-features">
                                <strong>Features of&nbsp;Free Plan</strong>
                                <ul>
                                    <li>
                                        <strong>32</strong> AI Document Templates </li>
                                    <li>
                                        <strong>10,000</strong> Words per month </li>
                                    <li>
                                        <strong>100</strong> Images per month</li>
                                    <li>
                                        <strong>0</strong> Speech to Text per month
                                               <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Create audio transcription"></i></li>
                                    <li>
                                        <strong>0 MB</strong> Audio file size limit</li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>
                                        AI Chat <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Chat with the AI bot"></i>
                                    </li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>
                                        AI Code
                                                 <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Generate code of any programming language with the AI"></i>
                                    </li>
                                    <li>
                                        <span class="icon-text yes"><i class="icon-feather-check-circle margin-right-2"></i></span>
                                        Hide Ads  </li>
                                    <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Setup</li>
                                    <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Support</li>
                                </ul>
                            </div>
                            <a href="javascript:void(0);" class="button full-width margin-top-20 ripple-effect">Current Plan</a>
                        </div>
                        <!-- Plan -->
                        <div class="pricing-plan " data-monthly-price="1" data-annual-price="1" data-lifetime-price="1">
                            <h3>Trial Plan</h3>
                            <div class="pricing-plan-label">
                                <strong>Trial                                        </strong>
                            </div>


                            <div class="pricing-plan-features">
                                <strong>Features of&nbsp;Trial Plan</strong>
                                <ul>
                                    <li>
                                        <strong>61</strong> AI Document Templates</li>
                                    <li>
                                        <strong>50,000</strong> Words per month  </li>
                                    <li>
                                        <strong>500</strong> Images per month </li>
                                    <li>
                                        <strong>0</strong> Speech to Text per month
                                              <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Create audio transcription"></i></li>
                                    <li>
                                        <strong>0 MB</strong> Audio file size limit
                                    </li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>
                                        AI Chat <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Chat with the AI bot"></i>
                                    </li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>
                                        AI Code  <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Generate code of any programming language with the AI"></i>
                                    </li>
                                    <li>
                                        <span class="icon-text yes"><i class="icon-feather-check-circle margin-right-2"></i></span>
                                        Hide Ads </li>
                                    <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Setup</li>
                                    <li><span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>Free Support</li>
                                </ul>
                            </div>
                            <button type="submit" class="button full-width margin-top-20 ripple-effect" name="upgrade" value="trial">Upgrade</button>
                        </div>
                        <!-- Plan -->
                        <div class="pricing-plan recommended" data-monthly-price="5" data-annual-price="50" data-lifetime-price="550">
                            <div class="recommended-badge">Recommended</div>
                            <h3>Extended Plan</h3>
                            <div class=""  id="input-field"  >
                                <div class="pricing-plan-label billed-monthly-label"><strong>5 ₹</strong>/ Monthly</div>
                                <div class="pricing-plan-label billed-yearly-label"><strong>50 ₹</strong>/ Yearly</div>
                                <div class="pricing-plan-label billed-lifetime-label"><strong>550 ₹</strong>/ Lifetime</div>
                            </div>

                            <div class="pricing-plan-features">
                                <strong>Features of&nbsp;Extended Plan</strong>
                                <ul>
                                    <li>
                                        <strong>61</strong> AI Document Templates   

                                    </li>
                                    <li>
                                        <strong>100,000</strong> Words per month                                        

                                    </li>
                                    <li>
                                        <strong>1,000</strong> Images per month                                            

                                    </li>
                                    <li>
                                        <strong>0</strong> Speech to Text per month                                              
               <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Create audio transcription"></i>

                                    </li>
                                    <li>
                                        <strong>0 MB</strong> Audio file size limit                                            

                                    </li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>
                                        AI Chat                                               
               <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Chat with the AI bot"></i>
                                    </li>
                                    <li>
                                        <span class="icon-text no"><i class="icon-feather-x-circle margin-right-2"></i></span>
                                        AI Code                                               
               <i class="icon-feather-help-circle margin-left-2" data-tippy-placement="top" title="Generate code of any programming language with the AI"></i>
                                    </li>
                                    <li>
                                        <span class="icon-text yes"><i class="icon-feather-check-circle margin-right-2"></i></span>
                                        Hide Ads                                        </li>
                                    <li><span class="icon-text yes"><i class="icon-feather-check-circle margin-right-2"></i></span>Free Setup</li>
                                    <li><span class="icon-text yes"><i class="icon-feather-check-circle margin-right-2"></i></span>Free Support</li>
                                </ul>
                            </div>
                            <button type="submit" class="button full-width margin-top-20 ripple-effect" name="upgrade" value="1">Upgrade</button>

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
 <script>
        function enableInputField(value) {
            const radioButtons = document.getElementsByName('billed-type');
            const inputField = document.getElementById('input-field');
            for (let i = 0; i < radioButtons.length; i++) {
                if (radioButtons[i].checked) {
                    inputField.disabled = false;
                    switch (value) {
                        case 5:
                            inputField.value = "₹" + value + " per month" ;
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
