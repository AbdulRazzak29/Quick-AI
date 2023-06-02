
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Speech to Text.aspx.cs" Inherits="Quick_AI_01.Speech_to_Text" %>

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
    <script src="https://kit.fontawesome.com/ae3393d1fa.js" crossorigin="anonymous"></script>

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

        :root {
            --primary-color: white;
            --secondary-color: black;
        }

        iframe {
            background-color: white;
            min-height: 300px;
            width: 100%;
            resize: none;
            outline: none;
            padding: 15px;
            margin-bottom: 20px;
            position: relative;
        }

        button {
            background-color: var(--primary-color);
            border: 1px solid var(--secondary-color);
            margin: 5px;
            color: var(--secondary-color);
            padding: 5px 8px;
            text-align: center;
            text-decoration: none;
            font-size: 15px;
        }

            button:focus, button:hover {
                border: 2px solid #95d3e6;
            }

        body {
            background-color: var(--primary-color);
            border: none;
            margin: 1px;
            color: var(--secondary-color);
            padding: 5px 8px;
            text-decoration: none;
            font-size: 15px;
        }

        input {
            background-color: white;
        }

        .dark-mode {
            --primary-color: #18181a;
            --secondary-color: white;
        }

        .raise:hover, .raise:focus {
            box-shadow: 0 0.5em 0.5em -0.4em var(--hover);
            transform: translateY(-0.25em);
        }

        select:focus, select:hover {
            border: 1px solid #95d3e6;
        }

        #snackbar {
            visibility: hidden;
            min-width: 250px;
            color: white;
            color: red;
            text-align: center;
            border-radius: 2px;
            padding: 16px;
            position: absolute;
            z-index: 1;
            font-size: 15px;
            margin-left: -31px;
            top: 500px;
        }

            #snackbar.show {
                visibility: visible;
                -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
                animation: fadein 0.5s, fadeout 0.5s 2.5s;
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
            </header>
        </div>


        <!-- Header / End -->


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
                                    <a href="https://localhost:44308/All%20Image.aspx" class="nav-link px-0"><span class="d-none d-sm-inline">All Images</span> </a>
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
                                    <h3 class="d-flex align-items-center">Speech to Text                     
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                            <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0 / 0  </i>
                            <strong>Used</strong>
                        </div>
                                    </h3>
                                    <!-- Breadcrumbs -->
                                    <nav id="breadcrumbs" class="dark">
                                        <ul>
                                            <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                                            <li>Speech to Text </li>
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
                                                    <h3>
                                                        <i class="fa-solid fa-headphones"></i>Speech to Text </h3>
                                                </div>
                                                <div class="content with-padding">
                                                    <div class="notification small-notification notice">Create audio transcription from a file.</div>
                                                    <div>
                                                        <div class="submit-field margin-bottom-20">
                                                            <h6>Title</h6>
                                                            <input name="title" type="text" id="text" class="with-border small-input quick-text-counter" data-maxlength="100" />
                                                            <div id="counter"></div>
                                                        </div>
                                                        <div class="submit-field margin-bottom-20">
                                                            <h6>Upload Media<span class="form-required">*</span></h6>
                                                            <div class="uploadButton margin-top-0">
                                                                <input class="uploadButton-input" name="file" type="file" id="upload" />
                                                                <label class="uploadButton-button ripple-effect" for="upload">Upload Media</label>
                                                            </div>
                                                            <small>.mp3, .mp4, .mpeg, .mpga, .m4a, .wav, .webm allowed.&nbsp;Max file size: 0 MB</small>
                                                        </div>
                                                        <div class="submit-field margin-bottom-20">
                                                            <h6>Audio Description</h6>
                                                            <textarea name="description" class="with-border small-input quick-text-counter" id="message" data-maxlength="200"></textarea>
                                                            <small>Describe the speech from the file to help the AI. (Optional)</small>
                                                            <div id="character-counter">
                                                                <span id="typed-characters">0</span>
                                                                <span>/</span>
                                                                <span id="maximum-characters">300</span>
                                                            </div>
                                                        </div>
                                                        <div class="alert alert-danger" role="alert" id="error-msg" style="display: none; color: red; background-color: white; border: none">Unexpected error, please try again. </div>
                                                        <button type="button" class="btn btn-primary" id="submit-btn" style="width: 100%;">Generate&nbsp<i class="fa-solid fa-arrow-right" style="color: #f0f2f5;"></i></button>
                                                        <div class="notification small-notification notice margin-top-5" style="top: 20px">Audio transcription may takes time due to the file size.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="dashboard-box margin-top-0 margin-bottom-30">
                                            <div class="headline">
                                                <div class="content with-padding">
                                                    <h3><i class="fa fa-align-left"></i>Generated Result</h3>
                                                    <div class="margin-left-auto line-height-1" style="margin-left: 400px; margin-top: -62px;">
                                                        <a href="#" class="button ripple-effect btn-sm" id="export_to_word" data-tippy-placement="top" title="Export as Word Document"><i class="fa-solid fa-file-word"></i></a>
                                                        <a href="#" class="button ripple-effect btn-sm" id="export_to_txt" title="Export as Text File" data-tippy-placement="top"><i class="fa-solid fa-file-lines"></i></a>
                                                        <a href="#" class="button ripple-effect btn-sm" id="copy_text" title="Copy Text" data-tippy-placement="top"><i class="fa fa-copy"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tox-editor-container">
                                                <form id="ai_document_form" name="ai_document_form" method="post" action="#">

                                                    <div class="d-flex margin-bottom-10">

                                                        <input name="title" type="text" class="with-border small-input" value="Untitled Document" required="" style="width: 100%;" />
                                                        <button class="button btn-sm margin-left-5 ripple-effect" name="submit" type="submit" title="Save Document" data-tippy-placement="top" style="margin-top: -24px; height: 38px;">
                                                            <i class="fa-solid fa-floppy-disk"></i>
                                                        </button>
                                                    </div>
                                                    <div class="container">
                                                        <div class="options">
                                                            <!-- Headings -->
                                                            <select id="formatBlock" class="adv-option-button">
                                                                <option value="Paragrahh">Paragrahh</option>
                                                                <option value="H1">Heading1</option>
                                                                <option value="H2">Heading2</option>
                                                                <option value="H3">Heading3</option>
                                                                <option value="H4">Heading4</option>
                                                                <option value="H5">Heading5</option>
                                                                <option value="H6">Heading6</option>
                                                            </select>
                                                            <!-- Text Format -->
                                                            <button id="bold" class="option-button format">
                                                                <i class="fa-solid fa-bold"></i>
                                                            </button>
                                                            <button id="italic" class="option-button format">
                                                                <i class="fa-solid fa-italic"></i>
                                                            </button>
                                                            <button id="underline" class="option-button format">
                                                                <i class="fa-solid fa-underline"></i>
                                                            </button>
                                                            <button id="strikethrough" class="option-button format">
                                                                <i class="fa-solid fa-strikethrough"></i>
                                                            </button>
                                                            <button id="superscript" class="option-button script">
                                                                <i class="fa-solid fa-superscript"></i>
                                                            </button>
                                                            <button id="subscript" class="option-button script">
                                                                <i class="fa-solid fa-subscript"></i>
                                                            </button>
                                                            <!-- List -->
                                                            <button id="insertOrderedList" class="option-button">
                                                                <div class="fa-solid fa-list-ol"></div>
                                                            </button>
                                                            <button id="insertUnorderedList" class="option-button">
                                                                <i class="fa-solid fa-list"></i>
                                                            </button>
                                                            <!-- Undo/Redo -->
                                                            <button id="undo" class="option-button">
                                                                <i class="fa-solid fa-rotate-left"></i>
                                                            </button>
                                                            <button id="redo" class="option-button">
                                                                <i class="fa-solid fa-rotate-right"></i>
                                                            </button>
                                                            <!-- Link -->
                                                            <button id="createLink" class="adv-option-button">
                                                                <i class="fa fa-link"></i>
                                                            </button>
                                                            <button id="unlink" class="option-button">
                                                                <i class="fa fa-unlink"></i>
                                                            </button>
                                                            <!-- Alignment -->
                                                            <button id="justifyLeft" class="option-button align">
                                                                <i class="fa-solid fa-align-left"></i>
                                                            </button>
                                                            <button id="justifyCenter" class="option-button align">
                                                                <i class="fa-solid fa-align-center"></i>
                                                            </button>
                                                            <button id="justifyRight" class="option-button align">
                                                                <i class="fa-solid fa-align-right"></i>
                                                            </button>
                                                            <button id="justifyFull" class="option-button align">
                                                                <i class="fa-solid fa-align-justify"></i>
                                                            </button>
                                                            <button id="indent" class="option-button spacing">
                                                                <i class="fa-solid fa-indent"></i>
                                                            </button>
                                                            <button id="outdent" class="option-button spacing">
                                                                <i class="fa-solid fa-outdent"></i>
                                                            </button>



                                                        </div>

                                                        <div id="text-input" contenteditable="true"></div>
                                                        <textarea name="" id="field-writting" cols="70" rows="10"></textarea>
                                                        <div id="res">
                                                            You've written <span id='words'>0</span>  <strong>words</strong> and <span id='characters'>0</span>  <strong>characters</strong>  .
                                                        </div>
                                                    </div>



                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
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
    </form>
    <script>
        let optionsButtons = document.querySelectorAll(".option-button");
        let advancedOptionButton = document.querySelectorAll(".adv-option-button");
        let fontName = document.getElementById("fontName");
        let fontSizeRef = document.getElementById("fontSize");
        let writingArea = document.getElementById("text-input");
        let linkButton = document.getElementById("createLink");
        let alignButtons = document.querySelectorAll(".align");
        let spacingButtons = document.querySelectorAll(".spacing");
        let formatButtons = document.querySelectorAll(".format");
        let scriptButtons = document.querySelectorAll(".script");

        //List of fontlist
        let fontList = [
            "Arial",
            "Verdana",
            "Times New Roman",
            "Garamond",
            "Georgia",
            "Courier New",
            "cursive",
        ];

        //Initial Settings
        const initializer = () => {
            //function calls for highlighting buttons
            //No highlights for link, unlink,lists, undo,redo since they are one time operations
            highlighter(alignButtons, true);
            highlighter(spacingButtons, true);
            highlighter(formatButtons, false);
            highlighter(scriptButtons, true);

            //create options for font names
            fontList.map((value) => {
                let option = document.createElement("option");
                option.value = value;
                option.innerHTML = value;
                fontName.appendChild(option);
            });

            //fontSize allows only till 7
            for (let i = 1; i <= 7; i++) {
                let option = document.createElement("option");
                option.value = i;
                option.innerHTML = i;
                fontSizeRef.appendChild(option);
            }

            //default size
            fontSizeRef.value = 3;
        };

        //main logic
        const modifyText = (command, defaultUi, value) => {
            //execCommand executes command on selected text
            document.execCommand(command, defaultUi, value);
        };

        //For basic operations which don't need value parameter
        optionsButtons.forEach((button) => {
            button.addEventListener("click", () => {
                event.preventDefault();
                modifyText(button.id, false, null);
            });
        });

        //options that require value parameter (e.g colors, fonts)
        advancedOptionButton.forEach((button) => {
            button.addEventListener("change", () => {
                modifyText(button.id, false, button.value);
            });
        });

        //link
        linkButton.addEventListener("click", () => {
            let userLink = prompt("Enter a URL");
            //if link has http then pass directly else add https
            if (/http/i.test(userLink)) {
                modifyText(linkButton.id, false, userLink);
            } else {
                userLink = "http://" + userLink;
                modifyText(linkButton.id, false, userLink);
            }
        });

        //Highlight clicked button
        const highlighter = (className, needsRemoval) => {
            className.forEach((button) => {
                button.addEventListener("click", () => {
                    event.preventDefault();
                    //needsRemoval = true means only one button should be highlight and other would be normal
                    if (needsRemoval) {
                        let alreadyActive = false;

                        //If currently clicked button is already active
                        if (button.classList.contains("active")) {
                            alreadyActive = true;
                        }

                        //Remove highlight from other buttons
                        highlighterRemover(className);
                        if (!alreadyActive) {
                            //highlight clicked button
                            button.classList.add("active");
                        }
                    } else {
                        //if other buttons can be highlighted
                        button.classList.toggle("active");
                    }
                });
            });
        };

        const highlighterRemover = (className) => {
            className.forEach((button) => {
                button.classList.remove("active");
            });
        };

        window.onload = initializer();
    </script>
    <script type="text/javascript">

        $("#icon").on("click", function () {
            $(".sidebar").toggle();
            $(".col-lg-9").toggleClass('col-lg-12 full-width');

        });

    </script>


    <script>
        function myFunction3() {
            var x = document.getElementById("snackbar");
            x.className = "show";
            setTimeout(function () { x.className = x.className.replace("show", ""); }, 6000);
        }
    </script>
    <script>
        // When the user clicks the submit button, show the error message
        document.getElementById("submit-btn").addEventListener("click", function () {
            document.getElementById("error-msg").style.display = "block";
        });
    </script>
    <script>
        /**
 * Select the textarea element.
 */
        const textAreaElement = document.querySelector("#message");
        /**
         * Select the character counter element.
         */
        const characterCounterElement = document.querySelector("#character-counter");
        /**
         * Select the element that shows the number of characters typed in the textarea.
         */
        const typedCharactersElement = document.querySelector("#typed-characters");
        /**
         * Define the maximum number of characters allowed.
         */
        const maximumCharacters = 300;
        /**
         * Add a "keydown" event listener on the textarea element.
         */
        textAreaElement.addEventListener("keydown", (event) => {
            /**
             * Count the number of characters typed.
             */
            const typedCharacters = textAreaElement.value.length;
            /**
             * Check if the typed characters is more than allowed characters limit.
             * If yes, then return false.
             */
            if (typedCharacters > maximumCharacters) {
                return false;
            }
            /**
             * Display the number of characters typed.
             */
            typedCharactersElement.textContent = typedCharacters;
            /**
             * Change the character counter text colour to "orange" if the typed
             * characters number is between 200 to 250. If more, then change the colour to "red".
             */
            if (typedCharacters >= 200 && typedCharacters < 250) {
                characterCounterElement.classList = "text-warning";
            } else if (typedCharacters >= 250) {
                characterCounterElement.classList = "text-danger";
            }
        });
    </script>
    <script>
        const messageEle = document.getElementById('text');
        const counterEle = document.getElementById('counter');

        messageEle.addEventListener('input', function (e) {
            const target = e.target;

            // Get the `maxlength` attribute
            const maxLength = target.getAttribute('maxlength');

            // Count the current number of characters
            const currentLength = target.value.length;

            counterEle.innerHTML = `${currentLength}/${maxLength}`;
        });
    </script>
    <script>
        const messageEle = document.getElementById('text');
        const counterEle = document.getElementById('counter');

        messageEle.addEventListener('input', function (e) {
            const target = e.target;

            // Get the `maxlength` attribute
            const maxLength = target.getAttribute('maxlength');

            // Count the current number of characters
            const currentLength = target.value.length;

            counterEle.innerHTML = `${currentLength}/${maxLength}`;
        });
    </script>
    <script>
        let input = document.getElementById("text-input"),
            words = document.getElementById('words'),
            characters = document.getElementById('characters');
        function wordCounter(text) {
            var text = input.value;
            var wordCount = 0;
            for (var i = 0; i <= text.length; i++) {
                if (text.charAt(i) == ' ') {
                    wordCount++;
                }
            }
            words.innerText = wordCount;
        }
        input.addEventListener('keyup', function (e) {
            wordCounter(e.value);
        });

        function caracterCounter(text) {
            var text = input.value;
            var wordCount = 0;
            for (var i = 0; i <= text.length - 1; i++) {
                text.charAt(i) == wordCount++;
            }
            characters.innerText = wordCount;
        }
        input.addEventListener('keyup', function (e) {
            caracterCounter(e.value);
        });
    </script>
    <script>
        let input = document.getElementById("field-writting"),
            words = document.getElementById('words'),
            characters = document.getElementById('characters');
        function wordCounter(text) {
            var text = input.value;
            var wordCount = 0;
            for (var i = 0; i <= text.length; i++) {
                if (text.charAt(i) == ' ') {
                    wordCount++;
                }
            }
            words.innerText = wordCount;
        }
        input.addEventListener('keyup', function (e) {
            wordCounter(e.value);
        });

        function caracterCounter(text) {
            var text = input.value;
            var wordCount = 0;
            for (var i = 0; i <= text.length - 1; i++) {
                text.charAt(i) == wordCount++;
            }
            characters.innerText = wordCount;
        }
        input.addEventListener('keyup', function (e) {
            caracterCounter(e.value);
        });
    </script>
</body>
</html>
