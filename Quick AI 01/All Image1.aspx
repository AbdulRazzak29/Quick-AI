<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="All Image1.aspx.cs" Inherits="Quick_AI_01.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-9">
                   <div class="main-content">

                <main  style="margin-left: -270px;    margin-top: 130px;">
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
        <div class="dashboard-content-inner" >

            
            <!-- Dashboard Headline -->
           <div class="dashboard-headline">
                    <h3 class="d-flex align-items-center">
                        All Images                       
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                           <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0 / 100 Images Used
                            <strong> Images Used</strong>
                        </div>
                    </h3>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs" class="dark">
                        <ul>
                            <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                            <li>All Images</li>
                        </ul>
                    </nav>
                </div>

           
           <div class="dashboard-box">
                        <!-- Headline -->
                        <div class="headline">
                            <h3><i class="fa-solid fa-file-lines"></i> All Images</h3>
                        </div>
                        <div class="content with-padding">
                            <div class="table-responsive">
                                <table id="js-table-list" class="basic-table dashboard-box-list">
                                    <tbody><tr>
                                        <th>Image</th>
                                        <th>Resolution</th>
                                        <th> Date</th>
                                        <th> Action</th>
                                                                            </tr>
                                    <tr>
                                        <td colspan="4" class="text-center">No images found.</td>
                                        
                                                                            </tr>
                                   
                                </tbody></table>
                            </div>
                        </div>
                    </div>

           
                        <!-- Footer -->
            <div class="dashboard-footer-spacer" style="padding-top: 151.705px;"></div>
            <div class="small-footer margin-top-15">
                <div class="footer-copyright">
                    2023 Socius IGB Pvt Ltd, All right reserved                </div>
                  <ul class="footer-social-links">
                                <li><a href="https://www.facebook.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-facebook-f"></i></a></li>
                                <li><a href="https://www.twitter.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter" ></i></a></li>
                                <li><a href="https://instagram.com" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram" ></i></a></li>
                                <li><a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin" ></i></a></li>
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
