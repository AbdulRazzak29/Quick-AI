<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="AllDocument.aspx.cs" Inherits="Quick_AI_01.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-9">
                <div class="main-content">

                    <main style="margin-left: -270px; margin-top: 130px;">
                        <!-- <div class="cards">
                        <div class="card-single">
                          <div class="fun-fact" data-fun-fact-color="#b81b7f">
                    <div class="fun-fact-text">
                                  <span>Words Used</span>
                                  <h4>0<small>/ 10,000</small>
                                  </h4>
                              </div>
                    <div class="fun-fact-icon" style="background-color: rgba(184, 27, 127, 0.07);"><i class="icon-feather-trending-up" style="color: rgb(184, 27, 127);"></i></div>
                </div>
                            <div>
                                <span class="las la-user"></span>
                            </div>
                        </div>
                        <div class="card-single">
                            <div>
                                <span>Images Used</span>
                                <h1>0/100</h1>
                            </div>
                            <div>
                                <span class="las la-user"></span>
                            </div>
                        </div>
                        <div class="card-single">
                            <div>
                                <span>Speech to Text</span>
                                <h1>0/0</h1>
                            </div>
                            <div>
                                <span class="las la-user"></span>
                            </div>
                        </div>
                    </div> -->
                        <div class="simplebar-content" style="margin-left: 261px;">
                            <div class="dashboard-content-inner">


                                <!-- Dashboard Headline -->
                                <div class="dashboard-headline">
                                    <h3 class="d-flex align-items-center">All Documents                        
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                            <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0</i> / 10,000 
                            <strong>Words Used</strong>
                        </div>
                                    </h3>
                                    <!-- Breadcrumbs -->
                                    <nav id="breadcrumbs" class="dark">
                                        <ul>
                                            <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                                            <li>All Documents</li>
                                        </ul>
                                    </nav>
                                </div>

                                <!-- Fun Facts Container -->
                                <%--<div class="fun-facts-container">
                <div class="fun-fact" data-fun-fact-color="#b81b7f">
                    <div class="fun-fact-text">
                        <span>Words Used</span>
                        <h4>
                            0 <small>/ 10,000</small>
                        </h4>
                    </div>
                    <div class="fun-fact-icon" style="background-color: rgba(184, 27, 127, 0.07);"><i class='fa-solid fa-arrow-trend-up' style='color:#ed12db'></i></div>
                </div>
                                <div class="fun-fact" data-fun-fact-color="#36bd78">
                    <div class="fun-fact-text">
                        <span>Images Used</span>
                        <h4>
                            0  <small>/ 100</small>
                        </h4>
                    </div>
                    <div class="fun-fact-icon" style="background-color: rgba(54, 189, 120, 0.07);"><i class="fa-solid fa-chart-simple" style="color: #8fc45a;"></i></div>
                </div>
                                <div class="fun-fact" data-fun-fact-color="#efa80f">
                    <div class="fun-fact-text">
                        <span>Speech to Text</span>
                        <h4>
                            0<small>/ 0</small>
                        </h4>
                    </div>
                    <div class="fun-fact-icon" style="background-color: rgba(239, 168, 15, 0.07);"><i class="fas fa-headphones" style="color: #dde010;"></i></div>
                </div>
                            </div>--%>
                                <div class="dashboard-box">
                                    <!-- Headline -->
                                    <div class="headline">
                                        <h3><i class="fa-solid fa-file-lines"></i>All Documents</h3>
                                    </div>
                                    <div class="content with-padding">
                                        <div class="table-responsive">
                                            <table id="js-table-list" class="basic-table dashboard-box-list">
                                                <tbody>
                                                    <tr>
                                                        <th>Document</th>
                                                        <th>Content</th>
                                                        <th>Date</th>
                                                        <th>Action</th>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4" class="text-center">No documents found.</td>

                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <!-- Dashboard Box -->
                                <%--<div class="dashboard-box main-box-in-row">
                <div class="headline">
                    <h3><i class="icon-feather-bar-chart-2"></i> Word used this month</h3>
                </div>
                <div class="content">
                    <!-- Chart -->
                   <div class="content">
                    <!-- Chart -->
                    <div class="chart">
                        <div class="chartjs-size-monitor" style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                            <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                    <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                        <div>
                            <canvas id="myChart"></canvas>
                        </div>

                    </div>
                </div>

                </div>
            </div>--%>

                                <!-- Dashboard Box / End -->
                                <!-- Footer -->
                                <div class="dashboard-footer-spacer" style="padding-top: 151.705px;"></div>
                                <div class="small-footer margin-top-15">
                                    <div class="footer-copyright">
                                        2023 Socius IGB Pvt Ltd, All right reserved               
                                    </div>
                                    <ul class="footer-social-links">
                                        <li><a href="https://www.facebook.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-facebook-f"></i></a></li>
                                        <li><a href="https://www.twitter.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter"></i></a></li>
                                        <li><a href="https://instagram.com" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram"></i></a></li>
                                        <li><a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin"></i></a></li>
                                        <li><a href="https://pinterest.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-pinterest"></i></a></li>
                                        <li><a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-youtube"></i></a></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>

                            </div>
                        </div>
                    </main>
                </div>

            </div>
</asp:Content>
