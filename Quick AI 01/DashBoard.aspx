<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="Quick_AI_01.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="col-lg-9">
            <div class="main-content">
                <main style="margin-left: -21px;">
                    <div class="simplebar-content">
                        <div class="dashboard-content-inner">
                            <!-- Dashboard Headline -->
                            <div class="headline">
                                <h3>Dashboard</h3>
                                <!-- Breadcrumbs -->
                                <nav id="breadcrumbs" class="dark">
                                    <ul>
                                        <li><a href="https://localhost:44308/Home.aspx">Home</a></li>
                                        <li>Dashboard</li>
                                    </ul>
                                </nav>
                            </div>

                            <!-- Fun Facts Container -->
                            <div class="facts-container">
                                <div class="fact" data-fun-fact-color="#b81b7f">
                                    <div class="fun-fact-text">
                                        <span>Words Used</span>
                                        <h4>0 <small>/ 10,000</small>
                                        </h4>
                                    </div>
                                    <div class="fun-fact-icon" style="background-color: rgba(184, 27, 127, 0.07);"><i class='fa-solid fa-arrow-trend-up' style='color: #ed12db'></i></div>
                                </div>
                                <div class="fact" data-fun-fact-color="#36bd78">
                                    <div class="fun-fact-text">
                                        <span>Images Used</span>
                                        <h4>0  <small>/ 100</small>
                                        </h4>
                                    </div>
                                    <div class="fun-fact-icon" style="background-color: rgba(54, 189, 120, 0.07);"><i class="fa-solid fa-chart-simple" style="color: #8fc45a;"></i></div>
                                </div>
                                <div class="fact" data-fun-fact-color="#efa80f">
                                    <div class="fun-fact-text">
                                        <span>Speech to Text</span>
                                        <h4>0<small>/ 0</small>
                                        </h4>
                                    </div>
                                    <div class="fun-fact-icon" style="background-color: rgba(239, 168, 15, 0.07);"><i class="fas fa-headphones" style="color: #dde010;"></i></div>
                                </div>
                            </div>

                            <!-- Dashboard Box -->
                            <div class="dashboard-box main-box-in-row">
                                <div class="headline">
                                    <h3><i class="icon-feather-bar-chart-2"></i>Word used this month</h3>
                                </div>
                                <div class="content">
                                    <!-- Chart -->
                                    <div class="content">
                                        <!-- Chart -->
                                        <div class="chart">
                                            <div class="chartjs-size-monitor">
                                                <div class="chartjs-size-monitor-expand" style="">
                                                    <div style=""></div>
                                                </div>
                                                <div class="chartjs-size-monitor-shrink">
                                                    <div></div>
                                                </div>
                                            </div>
                                            <div>
                                                <canvas id="myChart"></canvas>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
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
