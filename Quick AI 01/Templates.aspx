﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Templates.aspx.cs" Inherits="Quick_AI_01.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="font/css/all.css" rel="stylesheet" />
    <link href="boostrap/css/style.css" rel="stylesheet" />
    <link href="boostrap/css/all.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="boostrap/css/jquery.min.js"></script>
    <script src="boostrap/js/jquery.slim.min.js"></script>
    <script src="boostrap/js/popper.min.js"></script>
    <script src="boostrap/js/bootstrap.bundle.min.js"></script>
    <script src="jsss/bootstrap-select.min.js"></script>
    <style>
        * {
            font-family: Arial, Helvetica, sans-serif;
        }

        .container {
            padding: 0px;
            margin: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topbar {
            position: fixed;
            background-color: #fff;
            box-shadow: 0 4px 8px 0 rgb(0,0,0,0.08);
            width: 100%;
            height: 85px;
            display: grid;
            grid-template-columns: 2.5fr 8fr 1fr 1fr;
            align-items: center;
            z-index: 1;
        }

        .logo {
            border-right: 1px solid #e0e0e0;
            justify-content: center;
            height: 80px;
            padding-top: 10px;
            width: 260px;
        }

        .user {
            position: relative;
            width: 50px;
            height: 50px;
        }

            .user img {
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
            }

        .selectlang {
            float: right;
            padding-right: 30px;
            border-left: 1px solid #e0e0e0;
            padding-top: 20px;
            padding-left: 30px;
            height: 82px;
        }

        #langbtn {
            border: none;
            background-color: #444444;
            width: 120px;
            height: 40px;
            border-radius: 4px 4px;
            color: white;
        }

        option {
            background-color: white;
            box-sizing: border-box;
            color: black;
        }

        #langbtn:hover {
            background-color: #314cc6;
        }

        .sidebar {
            position: fixed;
            top: 85px;
            width: 260px;
            background-color: #fff;
            overflow-x: hidden;
            margin-right: 0px;
            margin-bottom: 0px;
            box-shadow: 0px 0px 8px 02px rgb(0,0,0,0.5);
            height: 100%
        }

            .sidebar ul {
                margin-top: 10px;
                margin-bottom: 10px;
            }

                .sidebar ul li {
                    width: 100%;
                    list-style: none;
                }

                    .sidebar ul li a {
                        width: 100%;
                        text-decoration: none;
                        color: #707070;
                        height: 40px;
                        display: flex;
                        align-items: center;
                        font-size: 13px;
                    }

                        .sidebar ul li a i {
                            min-width: 60PX;
                            font-size: 15PX;
                            text-align: center;
                        }

        .dropbtn {
            background-color: white;
            color: #6c757d;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

            .dropbtn:hover, .dropbtn:focus {
                background-color: white;
            }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            overflow: auto;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

        .dropdown a:hover {
            background-color: #ddd;
        }

        .show {
            display: block;
        }

        body {
            font-family: "Lato", sans-serif;
        }

        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

                .sidenav a:hover {
                    color: #f1f1f1;
                }

            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

        #main {
            transition: margin-left .5s;
            padding: 16px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
        }

        .dashboard-content-inner {
            padding: 50px;
            padding-bottom: 0;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header id="header-container" class="fullwidth dashboard-header sticky" style="position: fixed;">


                <!-- Header -->
                <div id="header">
                    <div class="container">
                        <!-- Left Side Content -->
                        <div class="left-side">
                            <!-- Logo -->
                            <div id="logo" style="width: 261px;">
                                <a href="https://localhost:44308/homepageaspx.aspx">
                                    <img src="img/hhh.png" alt="Hype" style="margin-top: 40px;" />
                                </a>
                            </div>



                            <a href="javascript:void(0);" class="header-icon">

                                <i class="fa fa-bars" id="icon" style="margin-top: 32px;" onclick="myMine"></i>
                            </a>




                        </div>
                        <!-- Left Side Content / End -->


                        <!-- Right Side Content / End -->
                        <div class="right-side">

                            <!-- User Menu -->
                            <div class="header-widget">

                                <!-- Messages -->
                                <div class="header-notifications user-menu">
                                    <div class="header-notifications-trigger">
                                        <a href="#" title="">


                                            <div class="dropdown">
                                                <a class="btn " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 100px; margin-left: -59px; margin-top: -24px; border-radius: 50%;">
                                                    <img src="img/image_2023_05_20T12_58_15_456Z.png" style="height: 58px; border-radius: 70px;" />
                                                </a>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="https://localhost:44308/dashboard1.aspx"><i class="fa fa-dashboard icons"></i>DashBoard</a></li>
                                                    <li><a class="dropdown-item" href="https://localhost:44308/Templates.aspx"><i class="fa-solid fa-layer-group"></i>Templates</a></li>
                                                    <li><a class="dropdown-item" href="https://localhost:44308/AI%20Images.aspx"><i class="fa-regular fa-image"></i>AI Images</a></li>
                                                    <li><a class="dropdown-item" href="https://localhost:44308/AI%20Images.aspx#"><i class="fa-solid fa-comment"></i>AI Chat</a></li>
                                                    <li><a class="dropdown-item" href="Speech to Text.aspx"><i class="fa-solid fa-headphones"></i>Speech to Text</a></li>
                                                    <li><a class="dropdown-item" href="AI Code.aspx"><i class="fa-solid fa-code"></i>AI Code</a></li>
                                                    <li><a class="dropdown-item" href="All Documents.aspx"><i class="fa-solid fa-file-lines"></i>All Documents</a></li>
                                                    <li><a class="dropdown-item" href="https://localhost:44308/Current%20Plan.aspx"><i class="fa-solid fa-gift"></i>Membership</a></li>
                                                    <li><a class="dropdown-item" href="https://localhost:44308/Account%20Setting.aspx"><i class="fa-solid fa-arrow-right-from-bracket"></i>Account Setting</a></li>
                                                    <li><a class="dropdown-item" href="home.aspx"><i class="fa-solid fa-power-off"></i>Logout</a></li>
                                                </ul>
                                            </div>
                                        </a>
                                    </div>
                                    <!-- Dropdown -->

                                </div>

                            </div>
                            <!-- User Menu / End -->

                            <div class="header-widget">
                                <div class="btn-group bootstrap-select language-switcher">


                                    <div class="dropdown" style="float: right; margin-top: -88px; padding-right: 10px; border-left: 2px solid #e0e0e0; padding-top: 20px; padding-left: 10px; height: 82px;">
                                        <label for="Language"></label>
                                        <select name="Languge" id="Languge" style="height: auto; background-color: #444; margin-top: -15px;">
                                            <option value="en">english</option>
                                            <option value=" Arabic ">Arabic </option>
                                            <option value="Bangali">Bangali</option>
                                            <option value="Bulgarian">Bulgarian</option>
                                            <option value="Chinese">Chinese</option>
                                            <option value="English">English</option>
                                            <option value="French">French</option>
                                            <option value="German">German</option>
                                            <option value="Hebrew">Hebrew</option>
                                            <option value="Hindi">Hindi</option>
                                            <option value="Italian">Italian</option>
                                            <option value="Japanesh">Japanesh</option>
                                            <option value="Polish">Polish</option>
                                            <option value="Romanin">Romanian</option>
                                            <option value="Russian">Russian</option>
                                            <option value="Spanish">Spanish</option>
                                            <option value="Swedish">Swedish</option>
                                            <option value="Thai">Thai</option>
                                            <option value="Turkish">Turkish</option>
                                            <option value="Urdu">Urdu</option>
                                            <option value="vietnamese">vietnamese</option>
                                        </select>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Right Side Content / End -->


                    </div>
                </div>

                <!-- Header / End -->
            </header>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="sidebar" style="height: calc(100% - 90px); width: 329px;">
                    <ul>

                        <li>
                            <div style="color: darkblue; font-weight: 600;">
                                <h9>My Account</h9>
                            </div>
                        </li>
                        <li>
                            <a href="https://localhost:44308/dashboard1.aspx">
                                <i class="fa fa-th-large"></i>
                                <div>Dashboard</div>
                            </a>
                        </li>
                        <li>

                            <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                                <i class="fs-4 bi-bootstrap"></i><span class="ms-1 d-none d-sm-inline"><span class="fa fa-file-text"></span>My Documents</span></a>
                            <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                                <li class="w-100">
                                    <a href="https://localhost:44308/All%20Documents.aspx" class="nav-link px-0"><span class="d-none d-sm-inline">All Documents</span> </a>
                                </li>
                                <li>
                                    <a href="https://localhost:44308/All%20Image.aspx" class="nav-link px-0"><span class="d-none d-sm-inline">All AI Images</span> </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <ul>
                        <li>
                            <div style="color: darkblue; font-weight: 600;">
                                <h9>Organize And Manage</h9>
                            </div>
                        </li>
                        <li>
                            <a href="https://localhost:44308/Templates.aspx">
                                <i class="fa-solid fa-layer-group"></i>
                                <div>Templates</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://localhost:44308/AI%20Images.aspx">
                                <i class="fa-solid fa-image"></i>
                                <div>AI Images</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://localhost:44308/AI%20Chat.aspx">
                                <i class="fa-solid fa-comment-dots"></i>
                                <div>AI Chats</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://localhost:44308/Speech%20to%20Text.aspx">
                                <i class="fa-solid fa-headphones"></i>
                                <div>Speech To Text</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://localhost:44308/AI%20Code.aspx">
                                <i class="fa-solid fa-code"></i>
                                <div>AI Code</div>
                            </a>
                        </li>
                    </ul>

                    <ul>
                        <li>
                            <div style="color: darkblue; font-weight: 600;">
                                <h9>Account</h9>
                            </div>
                        </li>
                    </ul>
                    <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                        <i class="fs-4 bi-bootstrap"></i><span class="ms-1 d-none d-sm-inline"><span class="fa-sharp fa-solid fa-share-nodes"></span>Affiliate Program</span></a>
                    <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                        <li class="w-100">
                            <a href="https://localhost:44308/Affiliate%20Program.aspx" class="nav-link px-0"><span class="d-none d-sm-inline">Affiliate Program</span> </a>
                        </li>
                        <li>
                            <a href="https://localhost:44308/Withdrawals.aspx" class="nav-link px-0"><span class="d-none d-sm-inline">Withdrawals</span> </a>
                        </li>
                    </ul>

                    <ul>
                        <li>
                            <a href="https://localhost:44308/Current%20Plan.aspx">
                                <i class="fa-solid fa-gift"></i>
                                <div>Membership</div>
                            </a>
                        </li>

                        <li>
                            <a href="https://localhost:44308/Transactions.aspx">
                                <i class="fa-solid fa-file"></i>
                                <div>Transaction</div>
                            </a>
                        </li>
                        <li>
                            <a href="https://localhost:44308/Account%20Setting.aspx">
                                <i class="fa-solid fa-right-from-bracket"></i>
                                <div>Account Setting</div>
                            </a>
                        </li>
                        <li>
                            <a href="home.aspx">
                                <i class="fa-solid fa-power-off"></i>
                                <div>Log Out</div>
                            </a>
                        </li>
                    </ul>



                </div>
            </div>

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
        </div>
    </form>



    <script type="text/javascript">

        $("#icon").on("click", function () {
            $(".sidebar").toggle();
            $(".col-lg-9").toggleClass('col-lg-12 full-width');

        });

    </script>


    <script>
        $('.ai-templates-category').on('click', function (e) {
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
                $('#template-search').val('category');
            }
        });

    </script>
    <script>
        $(document).ready(function () {
            $('#searchInput').on('input', function () {
                var searchKeyword = $(this).val().toLowerCase();

                $('.box').each(function () {
                    var text = $(this).text().toLowerCase();

                    if (text.includes(searchKeyword)) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                });
            });
        });

    </script>

</body>
</html>
