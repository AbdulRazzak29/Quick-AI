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
                    <a href="https://localhost:44308/First%20Blog.aspx" class="blog-post">
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
                       <div class="carouselpg">
                                <div id="demo" class="carousel slide" data-bs-ride="carousel">
                                    <!-- Indicators/dots -->
                                    <div class="carousel-indicators">
                                        <button id="courbtn" type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                                        <button id="courbtn1" type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                                        <button id="courbtn2" type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                                    </div>

                                    <!-- The slideshow/carousel -->
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="single-testimonial-blog">
                                                <div class="single-inner">
                                                    <div class="testimonial-content-blog">
                                                        <i class="fa-solid fa-quote-left quoteupblg"></i>
                                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                                                        <i class="fa-solid fa-quote-right quotedwnblg"></i>
                                                    </div>
                                                    <div class="testi-author-info">
                                                        <div class="image-blog">
                                                            <img src="img/default_user%20(1).png" style="height: 80px; width: 80px; border-radius: 100px;" />

                                                        </div>
                                                        <div class="imgtext">
                                                            <h5 class="name">Natasha</h5>
                                                            <span class="designation">Social Marketing</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="single-testimonial-blog">
                                                <div class="single-inner">
                                                    <div class="testimonial-content-blog">
                                                        <i class="fa-solid fa-quote-left quoteupblg"></i>
                                                        <p>Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e</p>
                                                        <i class="fa-solid fa-quote-right quotedwnblg"></i>
                                                    </div>
                                                    <div class="testi-author-info">
                                                        <div class="image-blog">
                                                            <img src="img/default_user%20(1).png" style="height: 80px; width: 80px; border-radius: 100px;" />

                                                        </div>
                                                        <div class="imgtext">
                                                            <h5 class="name">Steve Rogers</h5>
                                                            <span class="designation">Social Marketing</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="single-testimonial-blog">
                                                <div class="single-inner">
                                                    <div class="testimonial-content-blog">
                                                        <i class="fa-solid fa-quote-left quoteupblg"></i>
                                                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua  </p>
                                                        <i class="fa-solid fa-quote-right quotedwnblg"></i>
                                                    </div>
                                                    <div class="testi-author-info">
                                                        <div class="image-blog">
                                                            <img src="img/default_user%20(1).png" style="height: 80px; width: 80px; border-radius: 100px;" />

                                                        </div>
                                                        <div class="imgtext">
                                                            <h5 class="name">Tony stark</h5>
                                                            <span class="designation">Designer</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- Testimonials Widget / End-->

                        <!-- Tags Widget -->
                        <div class="sidebar-widget">
                            <h3>Tags</h3>
                            <div class="task-tags">
                                <a href="3"><span>travel fun</span></a>  <a href="3"><span>love</span></a>
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
  <style>
       
.blogmain {
    padding: 0px;
    margin: 0;
    width: auto;
    background-color: #f5f5f5;
}

.goodlook3-blog {
    padding-bottom: 50px;
}

.img-blog-flex {
    margin-top: 50px;
}
.Istblog {
    background-color: #fff;
    width: 100%;
    box-shadow: 0 3px 12px rgba(0, 0, 0, .1);
    border-radius: 4px;
    overflow: hidden;
    transition: .5s;
}
    .Istblog:hover {
        transform: translate(0,-10px);
    }
.blogclm {
    padding: 0px;
}
.size-img {
    width: 100%;
    height:220px;
    padding:0px;
}

.acls {
    text-decoration: none;
    color: black;
    padding:0px;
}

    .acls h5 {
        background-color: #f0f0f0;
        width: 130px;
        padding: 10px;
        margin: 10px;
        border-radius: 10px;
    }

    .acls h3 {
        margin: 10px;
    }

    .acls p {
        margin: 30px 10px;
    }

.searchbar {
    margin: 30px;
    width: 100%;
    text-align: center;
}

.search {
    width: auto;
    height: 30px;
}
/*--------testimonals blog page---------*/
.bloghm {
    padding-top: 150px;
    margin-left: 50px;
    margin-right: 50px;
}

.blogrow {
    margin-left: 50px;
    margin-right: 50px;
}

.carouselpg {
    padding-bottom: 0px;
}

.single-inner {
    background-color: #cccccc1a;
    margin-top: 50px;
    padding: 20px;
}

.single-testimonial-blog {
    text-align: center;
    padding-bottom: 40px;
    margin-top: 0px;
}

.quoteupblg {
    font-size: 40px;
    float: left;
}

.quotedwnblg {
    font-size: 40px;
    float: right;
}

.testimonial-content-blog p {
    padding-top: 40px;
}

.image-blog {
    text-align: center;
    padding: 10px 30px;
}

.image {
    height: 80px;
    width: 80px;
    border-radius: 100px;
}

#courbtn {
    height: 10px;
    width: 10px;
    border-radius: 50%;
    background-color: grey;
}

#courbtn1 {
    height: 10px;
    width: 10px;
    border-radius: 50%;
    background-color: grey;
}

#courbtn2 {
    height: 10px;
    width: 10px;
    border-radius: 50%;
    background-color: grey;
}

.tag {
    text-align: left;
    padding-top: 20px;
    padding-left: 20px;
    padding-bottom: 50px;
}

    .tag h3 {
        padding:20px 0px;
    }

.travelbtn {
    border-style: none;
    background-color: #18469812;
    color: blue;
    border-radius: 5px;
    text-decoration: none;
    padding: 5px;
}

.lovebtn {
    border-style:none;
    background-color: #18469812;
    color: blue;
    border-radius: 5px;
    text-decoration: none;
    padding: 5px;
}

.social-profile {
    text-align: left;
    padding-left: 20px;
}
    .social-profile h3 {
        padding: 20px 0px;
    }
.blogicons {
    font-size: 20px;
}

    .blogicons a {
        padding-right: 15px;
    }

        .blogicons a i {
            color: grey;
        }

            .blogicons a i:hover {
                color: black;
            }

/*---------------footer----------------*/
h6 {
    padding: 0;
    padding-right: 0;
    color: azure;
    padding-left: 37PX;
}

.footer-col1 {
    padding-top: 50px;
}

ul li {
    padding: 5px;
    list-style: none;
}

    ul li a {
        text-decoration: none;
        color: whitesmoke
    }

.footer-col2 {
    padding-top: 50px;
}

ul li {
    padding: 5px;
    list-style: none;
}

    ul li a {
        text-decoration: none;
        color: whitesmoke
    }

.footer-col3 {
    padding-top: 50px;
}

ul li {
    padding: 5px;
    list-style: none;
    text-align: left;
}

    ul li a {
        text-decoration: none;
        color: grey;
    }

        ul li a:hover {
            color: white;
        }

.logofoot {
    padding-left: 15px;
    padding-top: 50px;
    padding-right: 0px;
}
.footcopy{
    padding-top:10px;
    margin:10px 0px;
}
#border-right-line {
    border-right: 1px solid #484848;
}
.icons {
    font-size: 20px;
}

    .icons a {
        padding-left: 15px;
    }

        .icons a i {
            color: grey;
        }

a i:hover {
    color: white;
}





/*-------------media-------------*/
@media(max-width:1100px){
    .tag {
        text-align: center;
       
    }
    .social-profile {
        text-align: center;
    }
    .bloghm{
        margin:0px;
    }
    .blogrow {
         margin-left: 0px; 
         margin-right: 0px; 
         height:auto;
    }
    .footcopy {
        text-align: center;
        padding:0;
        margin:0px;
    }
    #border-right-line {
        padding-top: 20px;
    }
    .icons {
        padding-bottom: 20px;
    }
}
   </style>
</asp:Content>
