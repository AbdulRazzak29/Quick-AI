<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="WebForm24.aspx.cs" Inherits="Quick_AI_01.WebForm24" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-9">
        <div class="main-content">
            <main style="margin-top: 130px;">
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
                <div class="simplebar-content">
                    <div class="dashboard-content-inner">


                        <!-- Dashboard Headline -->
                        <div class="dashboard-headline">
                            <h3 class="d-flex align-items-center">AI Code 
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                            <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0 / 10,000 </i>
                            <strong>Words Used</strong>
                        </div>
                            </h3>
                            <!-- Breadcrumbs -->
                            <nav id="breadcrumbs" class="dark">
                                <ul>
                                    <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                                    <li>AI Code </li>
                                </ul>
                            </nav>
                        </div>

                        <%-- 
           <div class="dashboard-box">
                        <!-- Headline -->
                        <div class="headline">
                            <h3><i class="fa-light fa-file"></i> All Images</h3>
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
                    </div>--%>
                        <div class="row">
                            <!-- Dashboard Box -->
                            <div class="col-md-4">
                                <form id="speech_to_text" name="speech_to_text" method="post" action="#">
                                    <div class="dashboard-box margin-top-0 margin-bottom-30">
                                        <!-- Headline -->
                                        <div class="headline">
                                            <h3><> AI Code  </h3>
                                        </div>
                                        <div class="content with-padding">
                                            <div class="notification small-notification notice">Use this code generator to create code in any programming language.</div>
                                            <div>
                                                <div class="submit-field margin-bottom-20">
                                                    <h6>Title</h6>
                                                    <input name="title" type="text" class="with-border small-input quick-text-counter" data-maxlength="100" />
                                                </div>

                                                <div class="submit-field margin-bottom-20">
                                                    <h6>Description<span class="form-required">*</span></h6>
                                                    <textarea rows="4" name="description" class="with-border small-input" placeholder="Write a javascript function to generate a random string" required=""></textarea>
                                                </div>
                                                <div id="snackbar" style="margin-top: -114px;">Unexpected error, please try again.</div>
                                                <button type="submit" name="submit"
                                                    class="button ripple-effect full-width" onclick="myFunction3()">
                                                    Generate  <i class="fa-solid fa-arrow-right"></i>
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-8">
                                <div class="dashboard-box margin-top-0 margin-bottom-30">
                                    <!-- Headline -->
                                    <div class="headline">
                                        <h3><i class="fa fa-align-left"></i>Generated Result</h3>

                                    </div>
                                    <div class="container">
                                        <div class="content with-padding">
                                            <div class="ai-generated-text" id="content-focus">
                                                <div class="notification notice">Generated code will appear here.</div>
                                            </div>
                                        </div>

                                        <%-- <div class="content with-padding">
                                <div id="content-focus"></div>
                                <textarea  name="content" class="tiny-editor"></textarea>
                            </div>--%>
                                    </div>
                                </div>
                            </div>


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
