<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Templates!.aspx.cs" Inherits="Quick_AI_01.WebForm20" %>
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
                                    <h3>Templates<div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                                        <i class="fa-solid fa-chart-simple"></i>
                                        <i id="quick-words-left">0</i> / 10,000 
                    <strong>Words Used</strong>
                                    </div>
                                    </h3>

                                    <!-- Breadcrumbs -->
                                    <nav id="breadcrumbs" class="dark">
                                        <ul>
                                            <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                                            <li>Templates</li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="section padding-top-65 padding-bottom-65">
                                    <div class="container margin-bottom-20">
                                        <input type="text" id="searchInput" placeholder="Search..." />
                                         
                                        <div class="section-headline centered margin-top-0 margin-bottom-30">
                                            <h3 class="margin-bottom-5">Templates</h3>
                                            <p>Generate your required content with over 60+ content creation templates</p>
                                        </div>
                                        <div class="template-categories home-templates">
                                            <ul>
                                                <li class="active"><a href="javascript:void();" class="ai-templates-category" data-category="all">All templates</a></li>
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
