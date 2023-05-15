<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Quick_AI_01.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Frequently Asked Questions</h2>
                <span>Got Questions? We've Got Answers!</span>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs" class="dark">
                    <ul>
                        <li><a href="">Home</a></li>
                        <li>FAQ</li>
                    </ul>
                </nav>

            </div>
        </div>
    </div>
</div>
    <div class="container">
        <div class="margin-bottom-50">

            <!-- Accordion -->
            <div class="accordion js-accordion">

                                    <!-- Accordion Item -->
                    <div class="accordion__ite js-accordion-item">
                        <div class="accordion-header js-accordion-header">Lorem ipsum dolor sit amet</div>

                        <!-- Accordtion Body -->
                        <div class="accordion-body js-accordion-body" style="display: none;">

                            <!-- Accordion Content -->
                            <div class="accordion-body__contents">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vestibulum rhoncus libero ut condimentum. Etiam pretium diam odio, vitae varius dolor tristique quis. Fusce sodales dolor commodo iaculis vehicula. Maecenas laoreet leo massa, ut sagittis nulla pellentesque vel. In hac habitasse platea dictumst. In rhoncus vehicula tristique. Fusce auctor iaculis ornare. Duis condimentum est non massa lobortis, quis pellentesque nisi pulvinar.&nbsp;</p>                            </div>

                        </div>
                        <!-- Accordion Body / End -->
                    </div>
                    <!-- Accordion Item / End -->
                
            </div>
            <!-- Accordion / End -->
        </div>
        <!-- faq-page -->
    </div>

</asp:Content>
