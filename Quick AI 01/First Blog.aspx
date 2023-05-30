<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="First Blog.aspx.cs" Inherits="Quick_AI_01.First_Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12" style="margin-top:10%;">
            <h2>First Blog</h2>
            <span>by Admin</span>

            <!-- Breadcrumbs -->
            <nav id="breadcrumbs" class="dark" style="margin-top: -10%;">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Blog</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="row">

            <!-- Inner Content -->
            <div class="col-xl-8 col-lg-8">
                <!-- Blog Post -->
                <div class="blog-post single-post">

                    <!-- Blog Post Thumbnail -->
                    <div class="blog-post-thumbnail">
                        <div class="blog-post-thumbnail-inner">
                            <img src="img/default.png" alt="First Blog" />`
                        </div>
                    </div>
                    <!-- Blog Post Content -->
                    <div class="blog-post-content">
                        <h3 class="margin-bottom-10">First Blog</h3>
                        <div class="blog-post-info-list margin-bottom-20">
                            <span class="blog-post-info"><i class="la la-clock-o"></i>15, Jan 2020</span>
                            <span class="blog-post-info"><i class="fa fa-folder-o"></i><a href="#"></a></span>
                        </div>
                        <div class="user-html">
                            <p>Consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                            <blockquote>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</blockquote>
                            <p>Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                        </div>
                        <div class="task-tags margin-bottom-20">
                            Tags: <a href="#">travel fun</a>  <a href="https://localhost:44308/love%20blog.aspx">love</a>
                        </div>
                        <!-- Share Buttons -->
                        <div class="share-buttons margin-top-25">
                            <div class="share-buttons-trigger"><i class="fa-solid fa-share-nodes"></i></div>
                            <div class="share-buttons-content">
                                <span>Interesting? <strong>Share It!</strong></span>
                                <ul class="share-buttons-icons">

                                    <li><a href="mailto:?subject=First Blog&amp;body=#" data-button-color="#dd4b39" title="Share on Email" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(221, 75, 57);"><i class="fa fa-envelope"></i></a></li>
                                    <li><a href="https://www.facebook.com/" data-button-color="#3b5998" data-tippy-placement="top" rel="nofollow" target="_blank" data-tippy="" data-original-title="Share on Facebook" style="background-color: rgb(59, 89, 152);"><i class="fa-brands fa-facebook"></i></a></li>
                                    <li><a href="https://twitter.com/" data-button-color="#1da1f2" title="Share on Twitter" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(29, 161, 242);"><i class="fa-brands fa-twitter"></i></a></li>
                                    <li><a href="https://www.linkedin.com/" data-button-color="#0077b5" data-tippy-placement="top" rel="nofollow" target="_blank" data-tippy="" data-original-title="Share on LinkedIn" style="background-color: rgb(0, 119, 181);"><i class="fa-brands fa-linkedin"></i></a></li>
                                    <li><a href="https://www.pinterest.com/" data-button-color="#bd081c" title="Share on Pinterest" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(189, 8, 28);"><i class="fa-brands fa-pinterest"></i></a></li>
                                    <li><a href="https://www.whatsapp.com/" data-button-color="#25d366" data-tippy-placement="top" rel="nofollow" target="_blank" data-tippy="" data-original-title="Share on WhatsApp" style="background-color: rgb(37, 211, 102);"><i class="fa-brands fa-whatsapp"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- Blog Post Content / End -->
                <div id="comments">
                    <div class="blog-widget">
                        <h3 class="widget-title margin-bottom-25">Comments </h3>

                        <div class="latest-comments">
                        </div>
                    </div>

                    <!-- Leave a Comment -->
                    <div class="blog-widget" id="respond">
                        <h3 class="widget-title">Post a Comment  
                               
                            <small>
                                <a rel="nofollow" id="cancel-comment-reply-link" href="javascript:void(0)" style="display: none;">Cancel reply</a></small>
                        </h3>

                        <div>

                            <form action="#respond" method="post" id="commentform" class="blog-comment-form">
                                <div class="row">

                                    <div class="col-md-12">
                                        <p>You are commenting as:   </p>
                                    </div>
                                    <div class="col-md-12">
                                        <textarea class="with-border" rows="5" id="comment-field" name="comment" placeholder="Your comment..." required=""></textarea>
                                        <button type="submit" name="comment-submit" class="button ripple-effect">Submit</button>
                                        <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                                        <input type="hidden" name="comment_post_ID" value="1" id="comment_post_ID">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Leave a Comment / End -->



                </div>

            </div>
            <!-- Inner Content / End -->


            <div class="col-xl-4 col-lg-4 content-left-offset">
                <div class="sidebar-container">
                    <div class="margin-bottom-40">
                        <form action="#">
                            <div class="input-with-icon">
                                <input class="with-border" type="text" placeholder="Search..." name="s" id="search-widget">
                                <i class="icon-material-outline-search"></i>
                            </div>
                        </form>
                    </div>
                    <div class="margin-bottom-40">
                        <h3 class="widget-title">Recent Blog</h3>
                        <div class="recent-post-widget">
                            <div>
                                <a href="#">
                                    <img src="img/default.png" alt="First Blog" class="post-thumb" style="" />

                                </a>
                                <div class="recent-post-widget-content">
                                    <h2><a href="#">First Blog</a></h2>
                                    <div class="post-date">
                                        <i class="fa-regular fa-clock"></i>3 years ago                               
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

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
                        <div id="demo" class="carousel slide" data-bs-ride="carousel">
                            <!-- Indicators/dots -->
                            <div class="carousel-indicators">
                                <button id="courbtn" type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active" aria-current="true"></button>
                                <button id="courbtn1" type="button" data-bs-target="#demo" data-bs-slide-to="1" class=""></button>
                                <button id="courbtn2" type="button" data-bs-target="#demo" data-bs-slide-to="2" class=""></button>
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
                                                    <img src="img/default_user%20(1).png" style="height: 80px; width: 80px; border-radius: 100px;">

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
                                                    <img src="img/default_user%20(1).png" style="height: 80px; width: 80px; border-radius: 100px;">

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
                                                    <img src="img/default_user%20(1).png" style="height: 80px; width: 80px; border-radius: 100px;">

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
                            <a href="#"><span>travel fun</span></a>  <a href="#"><span>love</span></a>
                        </div>
                    </div>

                    <!-- Social Widget -->
                    <div class="sidebar-widget">
                        <h3>Social Profiles</h3>
                        <div class="freelancer-socials margin-top-25">
                            <ul>
                                <li><a href="https://www.facebook.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-facebook"></i></a></li>
                                <li><a href="https://www.twitter.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter"></i></a></li>
                                <li><a href="https://instagram.com" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram"></i></a></li>
                                <li><a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin"></i></a></li>
                                <li><a href="https://pinterest.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-pinterest"></i></a></li>
                                <li><a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-youtube"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script>
        $('.blog-comment-form').on('submit', function (e) {
            e.preventDefault();

            var action = 'submitBlogComment';
            var data = $(this).serialize();
            var $parent_cmnt = $(this).find('#comment_parent').val();
            var $cmnt_field = $(this).find('#comment-field');
            var $btn = $(this).find('.button');
            $btn.addClass('button-progress').prop('disabled', true);

            $.ajax({
                type: "POST",
                url: ajaxurl + '?action=' + action,
                data: data,
                dataType: 'json',
                success: function (response) {
                    $btn.removeClass('button-progress').prop('disabled', false);
                    if (response.success) {
                        if ($parent_cmnt == 0) {
                            $('.latest-comments > ul').prepend(response.html);
                        } else {
                            $('#li-comment-' + $parent_cmnt).after(response.html);
                        }
                        $('html, body').animate({
                            scrollTop: $("#li-comment-" + response.id).offset().top
                        }, 2000);
                        $cmnt_field.val('');
                    } else {
                        $('#respond > .widget-content').prepend('<div class="notification error"><p>' + response.error + '</p></div>');
                    }
                }
            });
        });
    </script>
     

</asp:Content>
