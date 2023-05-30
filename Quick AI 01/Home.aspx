<%@ Page Title="hype" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Quick_AI_01.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .text {
            font-size: 30px;
            animation: change 5s linear 0s infinite;
        }

        @keyframes change {
            0% {
                background: linear-gradient(to left, yellow, red);
                -webkit-background-clip: text;
                background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
            }

            25% {
                background: linear-gradient(to left, rgb(76, 62, 158), #4c00ff);
                -webkit-background-clip: text;
                background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
            }

            50% {
                background: linear-gradient(to right, yellow, red);
                -webkit-background-clip: text;
                background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
            }

            75% {
                background: linear-gradient(to left, rgb(76, 62, 158), #4c00ff);
                -webkit-background-clip: text;
                background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
            }

            100% {
                background: linear-gradient(to right, yellow, red);
                -webkit-background-clip: text;
                background-clip: text;
                -moz-background-clip: text;
                -webkit-text-fill-color: transparent;
            }
        }

        @keyframes change-shape {
            0% {
                border-radius: 0px;
            }

            25% {
                border-radius: 50%;
            }

            50% {
                border-radius: 0px;
            }

            75% {
                border-radius: 50%;
            }

            100% {
                border-radius: 0px;
            }
        }
    </style>



    <div style="margin-top: 10%">
        <img src="img/home-hero-icon.png" style="display: block; margin-left: auto; margin-right: auto; width: 270px; height: 10%;" />
        <section>

            <div class="margin-bottom-10 text_gradient_animation" style="text-align: center">
                <h1 class="text" style="font-size: 60px">
                    <strong>Best AI Content Writer</strong>
                </h1>
                <p>Create SEO-optimized and unique content for your blogs, ads, emails,<br />
                    and website 10X faster &amp; save hours of work.</p>
            </div>
        </section>
        <br />
        <div class="text-center hero-icon">
            <a class="btn btn-primary ripple-effect button-sliding-icon" style="font-size: 30px; position: static" href="loginpage4.aspx">Get started For free &nbsp
                        <i class="fa-solid fa-arrow-right" style="color: #e9eaed;"></i></a>

        </div>

        <p style="text-align: center">No credit card required.</p>
        <br />
        <div class="section gray padding-top-65 padding-bottom-65">
            <div class="container">
                <div class="row">

                    <div class="col-xl-12">
                        <!-- Section Headline -->
                        <div class="section-headline centered margin-top-0 margin-bottom-5">
                            <h3>How It Works?</h3>
                        </div>
                    </div>

                    <div class="col-xl-4 col-md-4">
                        <!-- Icon Box -->
                        <div class="icon-box with-line">
                            <!-- Icon -->
                            <div class="icon-box-circle">
                                <div class="icon-box-circle-inner">
                                    <i class="fa-solid fa-layer-group" style="color: #6d6d6f;"></i>
                                    <div class="icon-box-check" style="background-color: #0d55fd; background-color: #0d55fd; top: 59px;">
                                        <i class="fa-solid fa-check" style="color: #fff;"></i>
                                    </div>
                                </div>
                            </div>
                            <h3>Select a template</h3>
                            <p>Choose a content creation template. Multiple templates are available for your all needs.</p>
                        </div>
                    </div>

                    <div class="col-xl-4 col-md-4">
                        <!-- Icon Box -->
                        <div class="icon-box with-line">
                            <!-- Icon -->
                            <div class="icon-box-circle">
                                <div class="icon-box-circle-inner">
                                    <i class="fa-regular fa-folder" style="color: #636363;"></i>
                                    <div class="icon-box-check" style="background-color: #0d55fd; top: 59px;"><i class="fa-solid fa-check" style="color: #fff;"></i></div>
                                </div>
                            </div>
                            <h3>Fill the form</h3>
                            <p>Enter a detailed description of your content. Tell the AI what do you want.</p>
                        </div>
                    </div>

                    <div class="col-xl-4 col-md-4">
                        <!-- Icon Box -->
                        <div class="icon-box">
                            <!-- Icon -->
                            <div class="icon-box-circle">
                                <div class="icon-box-circle-inner">
                                    <i class="fa-regular fa-file-lines" style="color: #6e7072;"></i>
                                    <div class="icon-box-check" style="background-color: #0d55fd; top: 59px;"><i class="fa-solid fa-check" style="color: #fff;"></i></div>
                                </div>
                            </div>
                            <h3>Get your content</h3>
                            <p>Get a unique high quality content. The content is plagiarism free and you can use it anywhere.</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="section padding-top-65 padding-bottom-65">
            <div class="container margin-bottom-20">
                <div class="section-headline centered margin-top-0 margin-bottom-30">
                    <h3 class="margin-bottom-5">Templates</h3>
                    <p>Generate your required content with over 60+ content creation templates</p>
                </div>
                <div class="template-categories home-templates">
                    <ul>
                        <li class="active"><a href="javascript:void();" class="ai-templates-category" data-category="all" style="color: #777;">All templates</a></li>
                        <li><a href="javascript:void();" class="ai-templates-category" data-category="1">Article And Blogs</a></li>
                        <li><a href="javascript:void();" class="ai-templates-category" data-category="2">Ads And Marketing Tools</a></li>
                        <li><a href="javascript:void();" class="ai-templates-category" data-category="3">General Writing</a></li>
                        <li><a href="javascript:void();" class="ai-templates-category" data-category="4">Ecommerce</a></li>
                        <li><a href="javascript:void();" class="ai-templates-category" data-category="5">Social Media</a></li>
                        <li><a href="javascript:void();" class="ai-templates-category" data-category="6">Website</a></li>
                        <li><a href="javascript:void();" class="ai-templates-category" data-category="7">Other</a></li>
                    </ul>
                </div>
                <div class="row ai-template-blocks">
                    <div class="col-md-12 ai-templates-category-title">
                        <h4>Article And Blogs</h4>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="https://localhost:44308/Blog%20Ideas.aspx">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-comment"></i>
                                    </div>
                                    <h4 style="color: #333;">Blog Ideas</h4>
                                    <p class="margin-bottom-0">Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="https://localhost:44308/Blog%20Ideas.aspx">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-align-left"></i>
                                    </div>
                                    <h4 style="color: #333;">Blog Intros </h4>
                                    <p class="margin-bottom-0">Enticing article/blog introductions that capture the attention of the audience.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="https://localhost:44308/Blog%20Titles.aspx">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </div>
                                    <h4 style="color: #333;">Blog Titles </h4>
                                    <p class="margin-bottom-0">Nobody wants to read boring blog titles, generate catchy blog titles with this tool.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-book"></i>
                                    </div>
                                    <h4 style="color: #333;">Blog Section   <span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                    <p class="margin-bottom-0">Write a few paragraphs about a subheading of your article.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-check-square"></i>
                                    </div>
                                    <h4 style="color: #333;">Blog Conclusion</h4>
                                    <p class="margin-bottom-0">Create powerful conclusion that will make a reader take action.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-pencil-square"></i>
                                    </div>
                                    <h4 style="color: #333;">Article Writer</h4>
                                    <p class="margin-bottom-0">Create a fully complete high quality article from a title and outline text.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-light fa-pen-to-square"></i>
                                    </div>
                                    <h4 style="color: #333;">Article Rewriter</h4>
                                    <p class="margin-bottom-0">Copy an article, paste it in to the program, and with just one click you'll have an entirely different article to read.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-list-ul"></i>
                                    </div>
                                    <h4 style="color: #333;">Article Outlines</h4>
                                    <p class="margin-bottom-0">Detailed article outlines that help you write better content on a consistent basis.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-list-ol"></i>
                                    </div>
                                    <h4 style="color: #333;">Talking Points</h4>
                                    <p class="margin-bottom-0">Write short, simple and informative points for the subheadings of your article</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-align-justify"></i>
                                    </div>
                                    <h4 style="color: #333;">Paragraph Writer</h4>
                                    <p class="margin-bottom-0">Perfectly structured paragraphs that are easy to read and packed with persuasive words.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-1">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-refresh"></i>
                                    </div>
                                    <h4 style="color: #333;">Content Rephrase</h4>
                                    <p class="margin-bottom-0">Rephrase your content in a different voice and style to appeal to different readers.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-12 ai-templates-category-title">
                        <h4>Ads And Marketing Tools</h4>
                    </div>
                    <div class="col-md-4 col-sm-6 category-2">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </div>
                                    <h4 style="color: #333;">Facebook Ads</h4>
                                    <p class="margin-bottom-0">Facebook ad copies that make your ads truly stand out.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-2">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </div>
                                    <h4 style="color: #333;">Facebook Ads Headlines</h4>
                                    <p class="margin-bottom-0">Write catchy and convincing headlines to make your Facebook Ads stand out.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-2">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-solid fa-g"></i>
                                    </div>
                                    <h4 style="color: #333;">Google Ad Titles</h4>
                                    <p class="margin-bottom-0">Creating ads with unique and appealing titles that entice people to click on your ad and purchase from your site.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-2">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-solid fa-g"></i>
                                    </div>
                                    <h4 style="color: #333;">Google Ad Descriptions</h4>
                                    <p class="margin-bottom-0">The best-performing Google ad copy converts visitors into customers.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-2">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-linkedin"></i>
                                    </div>
                                    <h4 style="color: #333;">LinkedIn Ad Headlines</h4>
                                    <p class="margin-bottom-0">Attention-grabbing, click-inducing, and high-converting ad headlines for Linkedin.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-2">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-linkedin"></i>
                                    </div>
                                    <h4 style="color: #333;">LinkedIn Ad Descriptions</h4>
                                    <p class="margin-bottom-0">Professional and eye-catching ad descriptions that will make your product shine.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-2">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-bell"></i>
                                    </div>
                                    <h4 style="color: #333;">App and SMS Notifications</h4>
                                    <p class="margin-bottom-0">Notification messages for your apps, websites, and mobile devices that keep users coming back for more.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-12 ai-templates-category-title">
                        <h4 style="color: black;">General Writing</h4>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-text-width"></i>
                                    </div>
                                    <h4 style="color: #333;">Text Extender</h4>
                                    <p class="margin-bottom-0">Extend short sentences into more descriptive and interesting ones.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-text-width"></i>
                                    </div>
                                    <h4 style="color: #333;">Content Shorten</h4>
                                    <p class="margin-bottom-0">Short your content in a different voice and style to appeal to different readers.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-quora"></i>
                                    </div>
                                    <h4 style="color: #333;">Quora Answers</h4>
                                    <p class="margin-bottom-0">Answers to Quora questions that will position you as an authority.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-child"></i>
                                    </div>
                                    <h4 style="color: #333;">Summarize for a 2nd grader</h4>
                                    <p class="margin-bottom-0">Translates difficult text into simpler concepts.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-regular fa-heart"></i>
                                    </div>
                                    <h4 style="color: #333;">Stories</h4>
                                    <p class="margin-bottom-0">Engaging and persuasive stories that will capture your reader's attention and interest.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-list"></i>
                                    </div>
                                    <h4 style="color: #333;">Bullet Point Answers</h4>
                                    <p class="margin-bottom-0">Precise and informative bullet points that provide quick and valuable answers to your customers' questions.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-tasks"></i>
                                    </div>
                                    <h4 style="color: #333;">Definition</h4>
                                    <p class="margin-bottom-0">A definition for a word, phrase, or acronym that's used often by your target buyers.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-check-circle"></i>
                                    </div>
                                    <h4 style="color: #333;">Answers</h4>
                                    <p class="margin-bottom-0">Instant, quality answers to any questions or concerns that your audience might have.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-question-circle"></i>
                                    </div>
                                    <h4 style="color: #333;">Questions</h4>
                                    <p class="margin-bottom-0">A tool to create engaging questions and polls that increase audience participation and engagement.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-sort-alpha-desc"></i>
                                    </div>
                                    <h4 style="color: #333;">Passive to Active Voice</h4>
                                    <p class="margin-bottom-0">Easy and quick solution to converting your passive voice sentences into active voice sentences.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-key"></i>
                                    </div>
                                    <h4 style="color: #333;">Pros and Cons</h4>
                                    <p class="margin-bottom-0">List of the main benefits versus the most common problems and concerns.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-refresh"></i>
                                    </div>
                                    <h4 style="color: #333;">Rewrite With Keywords</h4>
                                    <p class="margin-bottom-0">Rewrite your existing content to include more keywords and boost your search engine rankings.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <h4 style="color: #333;">Emails</h4>
                                    <p class="margin-bottom-0">Professional-looking emails that help you engage leads and customers.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <h4 style="color: #333;">Emails V2</h4>
                                    <p class="margin-bottom-0">Personalized email outreach to your target prospects that get better results.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-regular fa-envelope-open"></i>
                                    </div>
                                    <h4 style="color: #333;">Email Subject Lines </h4>
                                    <p class="margin-bottom-0">Powerful email subject lines that increase open rates.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-bullhorn"></i>
                                    </div>
                                    <h4 style="color: #333;">Startup Name Generator</h4>
                                    <p class="margin-bottom-0">Generate cool, creative, and catchy names for your startup in seconds.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-file-text"></i>
                                    </div>
                                    <h4 style="color: #333;">Company Bios</h4>
                                    <p class="margin-bottom-0">Short and sweet company bio that will help you connect with your target audience.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-regular fa-file-lines"></i>
                                    </div>
                                    <h4 style="color: #333;">Company Mission</h4>
                                    <p class="margin-bottom-0">A clear and concise statement of your company's goals and purpose.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-3">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-align-left"></i>
                                    </div>
                                    <h4 style="color: #333;">Company Vision</h4>
                                    <p class="margin-bottom-0">A vision that attracts the right people, clients, and employees.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-12 ai-templates-category-title">
                        <h4 style="color: #333;">Ecommerce</h4>
                    </div>
                    <div class="col-md-4 col-sm-6 category-4">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-gift"></i>
                                    </div>
                                    <h4 style="color: #333;">Product Name Generator</h4>
                                    <p class="margin-bottom-0">Create creative product names from examples words.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-4">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-gift"></i>
                                    </div>
                                    <h4 style="color: #333;">Product Descriptions</h4>
                                    <p class="margin-bottom-0">Authentic product descriptions that will compel, inspire, and influence.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-4">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-amazon"></i>
                                    </div>
                                    <h4 style="color: #333;">Amazon Product Titles</h4>
                                    <p class="margin-bottom-0">Product titles that will make your product stand out in a sea of competition.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-4">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-amazon"></i>
                                    </div>
                                    <h4 style="color: #333;">Amazon Product Descriptions</h4>
                                    <p class="margin-bottom-0">Descriptions for Amazon products that rank on the first page of the search results.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-4">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-amazon"></i>
                                    </div>
                                    <h4 style="color: #333;">Amazon Product Features<span class="dashboard-status-button yellow"><i class="fa fa-gift"></i>Pro</span></h4>
                                    <p class="margin-bottom-0">Advantages and features of your products that will make them irresistible to shoppers.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-12 ai-templates-category-title">
                        <h4>Social Media</h4>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </div>
                                    <h4 style="color: #333;">Social Media Post (Personal)</h4>
                                    <p class="margin-bottom-0">Write a social media post for yourself to be published on any platform.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </div>
                                    <h4 style="color: #333;">Social Media Post (Business)</h4>
                                    <p class="margin-bottom-0">Write a post for your business to be published on any social media platform.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-instagram"></i>
                                    </div>
                                    <h4 style="color: #333;">Instagram Captions</h4>
                                    <p class="margin-bottom-0">Captions that turn your images into attention-grabbing Instagram posts.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-instagram"></i>
                                    </div>
                                    <h4 style="color: #333;">Instagram Hashtags</h4>
                                    <p class="margin-bottom-0">Trending and highly relevant hashtags to help you get more followers and engagement.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-twitter"></i>
                                    </div>
                                    <h4 style="color: #333;">Twitter Tweets</h4>
                                    <p class="margin-bottom-0">Generate tweets using AI, that are relevant and on-trend.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-youtube"></i>
                                    </div>
                                    <h4 style="color: #333;">YouTube Titles</h4>
                                    <p class="margin-bottom-0">Catchy titles that attract more views and increase the number of shares.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-youtube"></i>
                                    </div>
                                    <h4 style="color: #333;">YouTube Descriptions</h4>
                                    <p class="margin-bottom-0">Catchy and persuasive YouTube descriptions that help your videos rank higher.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-youtube"></i>
                                    </div>
                                    <h4 style="color: #333;">YouTube Outlines</h4>
                                    <p class="margin-bottom-0">Video outlines that are a breeze to create and uber-engaging.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-brands fa-linkedin"></i>
                                    </div>
                                    <h4 style="color: #333;">LinkedIn Posts</h4>
                                    <p class="margin-bottom-0">Inspiring LinkedIn posts that will help you build trust and authority in your industry.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-5">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-film"></i>
                                    </div>
                                    <h4 style="color: #333;">TikTok Video Scripts</h4>
                                    <p class="margin-bottom-0">Video scripts that are ready to shoot and will make you go viral.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-12 ai-templates-category-title">
                        <h4 style="color: black;">Website</h4>
                    </div>
                    <div class="col-md-4 col-sm-6 category-6">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-solid fa-g"></i>
                                    </div>
                                    <h4 style="color: #333;">SEO Meta Tags (Blog Post)</h4>
                                    <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your blog.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-6">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-solid fa-g"></i>
                                    </div>
                                    <h4 style="color: #333;">SEO Meta Tags (Homepage)</h4>
                                    <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your home page.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-6">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-solid fa-g"></i>
                                    </div>
                                    <h4 style="color: #333;">SEO Meta Tags (Product Page)</h4>
                                    <p class="margin-bottom-0">A set of optimized meta title and meta description tags that will boost your search rankings for your product page.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-12 ai-templates-category-title">
                        <h4 style="color: #333;">Other</h4>
                    </div>
                    <div class="col-md-4 col-sm-6 category-7">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-refresh"></i>
                                    </div>
                                    <h4 style="color: black;">Tone Changer</h4>
                                    <p class="margin-bottom-0">Change the tone of your writing to match your audience and copy.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-7">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-music"></i>
                                    </div>
                                    <h4 style="color: #333;">Song Lyrics</h4>
                                    <p class="margin-bottom-0">Unique song lyrics that will be perfect for your next hit song.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-7">
                        <a href="#">
                            <div class="dashboard-box ai-templates ">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa fa-language"></i>
                                    </div>
                                    <h4 style="color: #333;">Translate</h4>
                                    <p class="margin-bottom-0">Translate your content into any language you want.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-7">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-regular fa-circle-question"></i>
                                    </div>
                                    <h4 style="color: #333;">FAQs</h4>
                                    <p class="margin-bottom-0">Generate frequently asked questions based on your product description.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-7">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-regular fa-circle-question"></i>
                                    </div>
                                    <h4 style="color: #333;">FAQ Answers</h4>
                                    <p class="margin-bottom-0">Generate creative answers to questions (FAQs) about your business or website.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 col-sm-6 category-7">
                        <a href="#" title="Not available in the free plan" data-tippy-placement="top">
                            <div class="dashboard-box ai-templates ai-templates-pro">
                                <div class="content">
                                    <div class="ai-templates-icon">
                                        <i class="fa-solid fa-star-half-stroke"></i>
                                    </div>
                                    <h4 style="color: #333;">Testimonials / Reviews</h4>
                                    <p class="margin-bottom-0">Add social proof to your website by generating user testimonials.</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main">
        <h1 style="width: 100%; display: flex; align-content: center; flex-wrap: wrap; flex-direction: column;">Membership Plan</h1>
        <div class="section">
            <div class="section1">

                <div class="radio">
                    <input type="radio" name="radio-buttons" value="monthly" onchange="enableInputField(5)" style="opacity: 1; margin-left: -331px; top: -2px;" />
                    Monthly&nbsp; &nbsp; &nbsp;
               <input type="radio" name="radio-buttons" value="yearly" onchange="enableInputField(50)" style="opacity: 1; margin-top: -15px; margin-left: -257px; top: 18px;" />
                    Yearly&nbsp; &nbsp; &nbsp;
               <input type="radio" name="radio-buttons" value="Lifetime" onchange="enableInputField(550)" style="opacity: 1; margin-top: -16px; margin-left: -195px; top: 18px;" />
                    Life Time&nbsp; &nbsp; &nbsp;
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <ul style="list-style-type: none;">
                    <li><strong>Free Plan</strong></li>
                    <li>
                        <div class="pricing-plan-label"><strong>Free </strong></div>
                    </li>
                    <li>Features of Free Plan</li>
                    <li><b>32</b> AI Document Templates</li>
                    <li><b>10,000</b> Words per month</li>
                    <li><b>100</b> Images per month</li>
                    <li><b>0</b> Speech to Text per month </li>
                    <li><b>0</b> MB Audio file size limit</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Chat <i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Code<i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Hide Ads</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Setup</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Support</li>
                    <li>
                        <button class="btn btn-primary" style="width: 200px;">Current Plan</button></li>
                </ul>
            </div>
            <div class="col-md-4">
                <ul style="list-style-type: none;">
                    <li><strong>Trail Plan</strong></li>
                    <li>
                        <div class="pricing-plan-label"><strong>Trail</strong></div>
                    </li>
                    <li>Features of Free Plan</li>
                    <li><b>32</b> AI Document Templates</li>
                    <li><b>10,000</b> Words per month</li>
                    <li><b>100</b> Images per month</li>
                    <li><b>0</b> Speech to Text per month </li>
                    <li><b>0</b> MB Audio file size limit</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Chat <i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Code<i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Hide Ads</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Setup</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>Free Support</li>
                    <li>
                        <button class="btn btn-primary" style="width: 200px;">Upgrade</button></li>
                </ul>
            </div>
            <div class="col-md-4" <%--style="width: 270px;"--%>>
                <ul style="list-style-type: none;">
                    <li><strong>Extended Plan</strong></li>
                    <li> 
                            <input type="text" id="input-field" disabled style="height: 58px; background-color: #f0f0f0;margin-top: 7%;">
                       
                    </li>
                    <li>Features of Free Plan</li>
                    <li><b>32</b> AI Document Templates</li>
                    <li><b>10,000</b> Words per month</li>
                    <li><b>100</b> Images per month</li>
                    <li><b>0</b> Speech to Text per month </li>
                    <li><b>0</b> MB Audio file size limit</li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Chat <i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-xmark" style="color: #ff0000;"></i>AI Code<i class="fa-solid fa-circle-question"></i></li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>AI Code</li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Free Setup</li>
                    <li><i class="fa-regular fa-circle-check" style="color: #5af207;"></i>Free Support</li>
                    <li>
                        <button class="btn btn-primary" id="btn btn-primary1" name="buttons" style="width: 200px;"><a style="color: #ebedef;" href="https://localhost:44308/Upgrade%20Membership%205.aspx">Upgrade</a></button>
                        <button class="btn btn-primary" id="btn btn-primary2" name="buttons" style="width: 200px;"><a style="color: #ebedef;" href="https://localhost:44308/Upgrade%20Membership%2050.aspx">Upgrade</a></button>
                        <button class="btn btn-primary" id="btn btn-primary3" name="buttons" style="width: 200px;"><a style="color: #ebedef;" href="https://localhost:44308/Upgrade%20Membership%20550.aspx">Upgrade</a></button>
                    </li>

                </ul>
            </div>
        </div>
    </div>

    <br />
    <br />
    <br />


    <div class="section-headline centered margin-top-0 margin-bottom-5">
        <h3>Testimonials</h3>
        <i class="fa-sharp fa-solid fa-quote-right" style="color: #0949b9; font-size: 63px; margin-left: -473px;"></i>
    </div>

    <div class="testimonials">

        <div class="slider-container">
            <div class="slider">

                <div class="slide-box">
                    <!-- Testi One -->

                    <img src="img/default_user%20(1).png" style="height: 15%;" />
                    <div class="testimonial-author">
                        <h4>Natasha</h4>
                        <span style="background: #0949b9;">Designer</span>
                        <p class="comment">
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco labons nisi ut aliquip ea commodo consequat. Etsed do eiusmod tempor incididunt ut labore et dolore magna aliqua
                        </p>
                    </div>
                </div>
                <div class="slide-box">
                    <!-- Testi Two -->

                    <img src="img/default_user%20(1).png" style="height: 15%;" />
                    <div class="testimonial-author">
                        <h4>Steve Roger</h4>
                        <span style="background: #0949b9;">Content Writer</span>
                        <p class="comment">
                            Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e
                        </p>
                    </div>
                </div>
                <div class="slide-box">
                    <!-- Testi Three -->

                    <img src="img/default_user%20(1).png" style="height: 15%;" />
                    <div class="testimonial-author">
                        <h4>Tony Stark</h4>
                        <span style="background: #0949b9;">Social Marketing</span>
                        <p class="comment">
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. sunt in culpa qui officia deserunt mollit anim id est laborum
                        </p>
                    </div>
                </div>
            </div>

            <a href="#!" class="control-slider btn-left">
                <i class="fas fa-chevron-left"></i>
            </a>
            <a href="#!" class="control-slider btn-right">
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
    </div>

    <div class="section border-top padding-top-65 padding-bottom-50">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">

                    <!-- Section Headline -->
                    <div class="section-headline margin-top-0 margin-bottom-45">
                        <h3>Recent Blog</h3>
                        <a href="https://localhost:44308/Blog.aspx" class="headline" style="margin-left: 824px;">View Blog<i class="fa-solid fa-arrow-right"></i></a>
                    </div>

                    <div class="row">
                        <!-- Blog Post Item -->
                        <div class="col-xl-4">
                            <a href="https://localhost:44308/First%20Blog.aspx" class="blog-compact-item-container">
                                <div class="blog-compact-item">
                                    <img src="img/default_user%20(1).png" />
                                    <span class="blog-item-tag">Admin</span>
                                    <div class="blog-compact-item-content">
                                        <ul class="blog-post-tags">
                                            <li>3 years ago</li>
                                        </ul>
                                        <h3>First Blog</h3>
                                        <p>Consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut eni...</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <!-- Blog post Item / End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section gray border-top padding-top-45 padding-bottom-45">
        <!-- Logo Carousel -->
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <!-- Carousel -->
                    <div class="col-md-12">
                        <div class="carousel slide" id="myCarousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="col-xs-2">
                                        <a href="#">
                                            <center>
                                                <img src="img/logo-carousel-01.png" />
                                        </a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-xs-2">
                                        <a href="#">
                                            <img src="img/logo-carousel-02.png" />
                                        </a>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-xs-2">
                                        <a href="#">
                                            <img src="img/logo-carousel-03.png" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control"
                                href="#myCarousel"
                                data-slide="prev">
                                <i class="glyphicon glyphicon-chevron-left"></i>
                            </a>
                            <a class="right carousel-control"
                                href="#myCarousel"
                                data-slide="next">
                                <i class="glyphicon glyphicon-chevron-right"></i>
                            </a>

                        </div>
                    </div>
                    <!-- Carousel / End -->
                </div>
            </div>
        </div>
    </div>
    
  
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Titillium+Web:wght@200;300;400;700&display=swap");

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }



        .testimonials {
            background: #fff;
            text-align: center;
            width: 95%;
            max-width: 600px;
            padding: 2rem;
            margin: 1.5rem auto;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.15);
        }

        .title {
            font-size: 1.5rem;
        }

        .description {
            font-size: 0.95rem;
            color: #333;
        }

        .slider-container {
            margin-top: 2rem;
            margin: 2rem auto 0 auto;
            position: relative;
            overflow: hidden;
        }

        .slider {
            display: flex;
            flex: 0 0 1;
            width: 300%; /* Depends On slide-box Length * 100 */
            transition: all 0.5s linear;
        }

        .slide-box {
            padding: 0 80px;
        }

            .slide-box .comment {
                font-size: 0.86rem;
                padding: 1rem 1.5rem;
                margin-bottom: 2rem;
                letter-spacing: 0.4px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
                position: relative;
                font-weight: 400;
            }

            .slide-box img {
                max-width: 60px;
                border-radius: 50%;
            }

            .slide-box .name {
                font-size: 1rem;
            }

            .slide-box .job {
                font-size: 0.7rem;
                color: #8d8e97;
                font-weight: 400;
            }

        .control-slider {
            position: absolute;
            z-index: 5;
            top: 50%;
            transform: translateY(-50%);
            height: 40px;
            width: 40px;
            background-color: #fff;
            line-height: 40px;
            color: #333;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.25);
        }

        .btn-left {
            left: 10px;
        }

        .btn-right {
            right: 10px;
        }

        @media screen and (max-width: 500px) {
            .slide-box {
                padding: 0 55px;
            }
        }

        .main {
            margin-left: 160px;
            margin-right: 160px;
            margin-top: 100px;
        }

        .section {
            display: flex;
        }

        .radio {
            margin-left: 400px;
        }

        .section2 {
            margin-top: 118px;
            box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
            width: 65%;
            height: 500px;
            display: flex;
        }

        .innersection {
            display: flex;
        }

            .innersection a {
                color: whitesmoke;
            }

            .innersection li {
                text-decoration: none;
                list-style-type: none;
                margin-top: 8px;
            }

                .innersection li button:hover {
                    background-color: rgb(33, 148, 224);
                }

        .template-categories ul li.active {
            color: #fff;
            background: blue;
            border-radius: 50vh;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta charset="utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <script src="fontawesome/js/all.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    <script>
        function enableInputField(value) {
            const radioButtons = document.getElementsByName('radio-buttons');
            const inputField = document.getElementById('input-field');
            for (let i = 0; i < radioButtons.length; i++) {
                if (radioButtons[i].checked) {
                    inputField.disabled = false;
                    switch (value) {
                        case 5:
                            inputField.value = "₹" + value + " per month";
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
    <script>
        const sliderElm = document.querySelector(".slider-container .slider");
        const btnLeft = document.querySelector(".slider-container .btn-left");
        const btnRight = document.querySelector(".slider-container .btn-right");

        const numberSliderBoxs = sliderElm.children.length;
        let idxCurrentSlide = 0;

        // Functions:
        function moveSlider() {
            let leftMargin = (sliderElm.clientWidth / numberSliderBoxs) * idxCurrentSlide;
            sliderElm.style.marginLeft = -leftMargin + "px";
            console.log(sliderElm.clientWidth, leftMargin);
        }
        function moveLeft() {
            if (idxCurrentSlide === 0) idxCurrentSlide = numberSliderBoxs - 1;
            else idxCurrentSlide--;

            moveSlider();
        }
        function moveRight() {
            if (idxCurrentSlide === numberSliderBoxs - 1) idxCurrentSlide = 0;
            else idxCurrentSlide++;

            moveSlider();
        }

        // Event Listeners:
        btnLeft.addEventListener("click", moveLeft);
        btnRight.addEventListener("click", moveRight);
        window.addEventListener("resize", moveSlider);

    </script>


    <script>   $('.ai-templates-category').on('click', function (e) {
            e.preventDefault();
            // make active
            $('.template-categories li').removeClass('active');
            $(this).parents('li').addClass('active');

            if ($(this).data('category') === 'all') {
                $('.ai-template-blocks > div').show();
                $('.ai-templates-category-title').show();
            } else {
                $('.ai-template-blocks > div').hide();
                $('.category-' + $(this).data('category')).show();
                $('.ai-templates-category-title').hide();

                // empty search
                $('#template-search').val('');
            }
        });</script>
    <script type="text/javascript">
        $(window).load(function () {
            $(".carousel .item").each(function () {
                var i = $(this).next();
                i.length || (i = $(this).siblings(":first")),
                    i.children(":first-child").clone().appendTo($(this));

                for (var n = 0; n < 4; n++)(i = i.next()).length ||
                    (i = $(this).siblings(":first")),
                    i.children(":first-child").clone().appendTo($(this))
            })
        });
    </script>


</asp:Content>
