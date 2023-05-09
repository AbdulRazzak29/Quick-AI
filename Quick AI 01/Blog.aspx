<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Quick_AI_01.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="dashboard-headline" style="    padding: 75px;">
                <h3>Blog</h3>
            <h4>Recent Blog</h4>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs" class="dark" style="margin-right: 38px;">
                    <ul>
                        <li><a href="https://localhost:44308/Home.aspx">Home</a></li>
                        <li>Dashboard</li>
                    </ul>
                </nav>
            </div>
    <div class="section gray">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-8">

                    <!-- Section Headline -->
                    <div class="section-headline margin-top-60 margin-bottom-35">
                        <h4>Recent Blog</h4>
                    </div>
                    <!-- Blog Post -->
                    <a href="#" class="blog-post">
                        <!-- Blog Post Thumbnail -->
                        <div class="blog-post-thumbnail">
                            <div class="blog-post-thumbnail-inner">
                                <span class="blog-item-tag">Admin</span>
                                <img src="img/default.png" alt="First Blog" />
                            </div>
                        </div>
                        <!-- Blog Post Content -->
                        <div class="blog-post-content">
                            <span class="blog-post-date">3 years ago</span>
                            <h3 class="margin-bottom-0">First Blog</h3>
                            <div class="margin-bottom-15"></div>
                            <p>Consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut eni...</p>
                        </div>
                        <!-- Icon -->
                        <div class="entry-icon"></div>
                    </a>
                    <!-- Pagination -->
                    <div class="clearfix"></div>
                </div>


                <div class="col-xl-4 col-lg-4 content-left-offset">
                    <div class="sidebar-container margin-top-65">

                        <form action="#">
                            <div class="sidebar-widget margin-bottom-40">
                                <div class="input-with-icon">
                                    <input class="with-border" type="text" placeholder="Search..." name="s" id="search-widget" value="">
                                    <i class="icon-material-outline-search"></i>
                                </div>
                            </div>
                        </form>

                        <!-- Category Widget -->
                        <div class="margin-bottom-40">
                            <h3 class="widget-title">Categories</h3>
                            <div class="widget-content">
                                <ul>
                                </ul>
                            </div>
                        </div>
                        <!-- Category Widget / End-->

                        <!-- Testimonials Widget -->
                        <div class="sidebar-widget">
                            <h3>Testimonials</h3>
                            <div class="single-carousel slick-initialized slick-slider slick-dotted">
                                <div class="slick-list draggable" style="padding: 0px; height: 266.479px; overflow: hidden;">
                                    <div class="slick-track" style="opacity: 1; width: 2872px; transform: translate3d(-1077px, 0px, 0px); transition: transform 500ms ease 0s;">
                                        <div class="single-testimonial slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" style="width: 359px;" tabindex="-1">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="img/default_user%20(1).png" alt="Steve Roger"/>
                                                    </div>
                                                    <h5 class="name">Steve Roger</h5>
                                                    <span class="designation">Content Writer</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-testimonial slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 359px;" tabindex="-1">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="img/default_user%20(1).png" alt="Tony Stark"/></div>
                                                    <h5 class="name">Tony Stark</h5>
                                                    <span class="designation">Social Marketing</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-testimonial slick-slide" data-slick-index="0" aria-hidden="true" style="width: 359px;" tabindex="0" role="tabpanel" id="slick-slide00" aria-describedby="slick-slide-control00">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="http://hype.sociusus.com/storage/testimonials/default_user.png" alt="Natasha"></div>
                                                    <h5 class="name">Natasha</h5>
                                                    <span class="designation">Designer</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-testimonial slick-slide slick-current slick-active slick-center" data-slick-index="1" aria-hidden="false" style="width: 359px;" tabindex="-1" role="tabpanel" id="slick-slide01" aria-describedby="slick-slide-control01">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="http://hype.sociusus.com/storage/testimonials/default_user.png" alt="Steve Roger"></div>
                                                    <h5 class="name">Steve Roger</h5>
                                                    <span class="designation">Content Writer</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-testimonial slick-slide" data-slick-index="2" aria-hidden="true" style="width: 359px;" tabindex="-1" role="tabpanel" id="slick-slide02" aria-describedby="slick-slide-control02">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="http://hype.sociusus.com/storage/testimonials/default_user.png" alt="Tony Stark"></div>
                                                    <h5 class="name">Tony Stark</h5>
                                                    <span class="designation">Social Marketing</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-testimonial slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" style="width: 359px;" tabindex="-1">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="http://hype.sociusus.com/storage/testimonials/default_user.png" alt="Natasha"></div>
                                                    <h5 class="name">Natasha</h5>
                                                    <span class="designation">Designer</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-testimonial slick-slide slick-cloned" data-slick-index="4" aria-hidden="true" style="width: 359px;" tabindex="-1">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="http://hype.sociusus.com/storage/testimonials/default_user.png" alt="Steve Roger"></div>
                                                    <h5 class="name">Steve Roger</h5>
                                                    <span class="designation">Content Writer</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-testimonial slick-slide slick-cloned" data-slick-index="5" aria-hidden="true" style="width: 359px;" tabindex="-1">
                                            <div class="single-inner">
                                                <div class="testimonial-content">
                                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                </div>
                                                <div class="testi-author-info">
                                                    <div class="image">
                                                        <img src="http://hype.sociusus.com/storage/testimonials/default_user.png" alt="Tony Stark"></div>
                                                    <h5 class="name">Tony Stark</h5>
                                                    <span class="designation">Social Marketing</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <ul class="slick-dots" style="" role="tablist">
                                    <li class="" role="presentation">
                                        <button type="button" role="tab" id="slick-slide-control00" aria-controls="slick-slide00" aria-label="1 of 3" tabindex="0" aria-selected="true">1</button></li>
                                    <li role="presentation" class="slick-active">
                                        <button type="button" role="tab" id="slick-slide-control01" aria-controls="slick-slide01" aria-label="2 of 3" tabindex="-1">2</button></li>
                                    <li role="presentation" class="">
                                        <button type="button" role="tab" id="slick-slide-control02" aria-controls="slick-slide02" aria-label="3 of 3" tabindex="-1">3</button></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Testimonials Widget / End-->

                        <!-- Tags Widget -->
                        <div class="sidebar-widget">
                            <h3>Tags</h3>
                            <div class="task-tags">
                                <a href="http://hype.sociusus.com/blog?s=travel-fun"><span>travel fun</span></a>  <a href="http://hype.sociusus.com/blog?s=love"><span>love</span></a>
                            </div>
                        </div>

                        <!-- Social Widget -->
                        <div class="sidebar-widget">
                            <h3>Social Profiles</h3>
                            <div class="freelancer-socials margin-top-25">
                                <ul>
                                    <li><a href="https://www.facebook.com/" target="_blank" rel="nofollow"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="https://www.twitter.com/" target="_blank" rel="nofollow"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="https://instagram.com" target="_blank" rel="nofollow"><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="https://pinterest.com/" target="_blank" rel="nofollow"><i class="fa fa-pinterest"></i></a></li>
                                    <li><a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa fa-youtube"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- Spacer -->
        <div class="padding-top-40"></div>
        <!-- Spacer -->

    </div>
   
</asp:Content>
