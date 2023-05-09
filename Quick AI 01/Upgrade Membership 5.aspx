<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Upgrade Membership 5.aspx.cs" Inherits="Quick_AI_01.Upgrade_Membership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Upgrade Membership</h2>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li>Upgrade</li>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
</div>
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 content-right-offset">
                <form id="subscribeForm" method="POST" novalidate="novalidate">
                    <h3>Payment Method</h3>
                    <div class="payment margin-top-30">
                        <!--WALLET PAYMENT-->
                        <div class="payment-tab payment-tab-active">
                            <div class="payment-tab-trigger">
                                <input name="payment_method_id" class="payment_method_id" id="wire_transfer" type="radio" value="3" data-name="wire_transfer">
                                <label for="wire_transfer">Bank Deposit (Offline Payment)</label>
                                <img src="img/logo.png" style="    height: 50px; width: 106px;margin-left: 709px;margin-top: -85px;" />
                            </div>
                            <div class="payment-tab-content">
                                <p>You will be redirected to the payment page for complete payment.</p>



                                <div class="quickad-template">
                                    <table class="default-table table-alt-row PaymentMethod-infoTable">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <h4 class="PaymentMethod-heading">
                                                        <strong>Bank Account details</strong></h4>
                                                    <span class="PaymentMethod-info"></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h4 class="PaymentMethod-heading"><strong>Reference</strong></h4>
                                                    <span class="PaymentMethod-info">Membership Plan : Extended Plan<br>
                                                        Username:<br>
                                                        <em><small>Include a note with Reference so that we know which account to credit.</small></em>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h4 class="PaymentMethod-heading"><strong>Amount to send</strong>
                                                    </h4>
                                                    <span class="PaymentMethod-info">5 ₹</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>

                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="token" value="">
                    <input type="hidden" name="upgrade" value="1">
                    <input type="hidden" name="billed-type" value="monthly">
                    <button type="submit" name="Submit" class="button big ripple-effect margin-top-40 margin-bottom-65 subscribeNow" id="subscribeNow">Submit</button>
                </form>
            </div>
            <div class="col-xl-4 col-lg-4 margin-top-0 margin-bottom-60">
                <div class="boxed-widget summary margin-top-0" style="    position: inherit;">
                    <div class="boxed-widget-headline">
                        <h3>Package Summary</h3>
                    </div>
                    <div class="boxed-widget-inner" >
                        <ul>
                            <li>Membership <span>Extended Plan</span></li>
                            <li>Start Date <span>05-2023</span></li>
                            <li>Expiry Date <span>06-2023</span></li>
                            <li class="total-costs">Total Cost <span>5 ₹</span></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
