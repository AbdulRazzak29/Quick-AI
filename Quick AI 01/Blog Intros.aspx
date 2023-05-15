<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog Intros.aspx.cs" Inherits="Quick_AI_01.Blog_Intros" %>

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
                font-size:13px;
            }

                .sidebar ul li a i {
                    min-width: 60PX;
                    font-size: 15PX;
                    text-align: center;
                }
                .dropbtn {
  background-color:white;
  color:#6c757d;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color:white;
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

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
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
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

:root
{
    --primary-color: white;
    --secondary-color: black;

}
iframe
{
    background-color: white;
    min-height: 300px;
    width: 100%;
    resize: none;
    outline: none;
    padding: 15px;
    margin-bottom: 20px;
    position: relative;
}
button
{
    background-color: var(--primary-color);
    border: 1px solid var(--secondary-color);
    margin: 5px;
    color: var(--secondary-color);
    padding: 5px 8px;
    text-align: center;
    text-decoration: none;
    font-size: 15px;
}
button:focus,button:hover
{
    border: 2px solid #95d3e6;
}
    
body
{
    background-color: var(--primary-color);
    border: none;
    margin: 1px;
    color: var(--secondary-color);
    padding: 5px 8px;
   
    text-decoration: none;
    font-size: 15px;
}
input
{
    background-color: white;

}

.dark-mode {
    --primary-color: #18181a;
    --secondary-color: white;
    
}
.raise:hover,.raise:focus 
{
    box-shadow: 0 0.5em 0.5em -0.4em var(--hover);
    transform: translateY(-0.25em);

}
select:focus,select:hover
{
    border: 1px solid #95d3e6;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div>
            <header id="header-container" class="fullwidth dashboard-header sticky" style="position: fixed;">

                <div class="user-status-message">
                    <div class="container container-active-msg">
                        <div class="row">
                            <div class="col-lg-8">
                                <i class="icon-lock text-18"></i>
                                <span>Your email address is not verified. Please verify your email address to use all the features.</span>
                            </div>
                            <div class="col-lg-4">
                                <a class="button ripple-effect gray resend_buttons21 resend" href="javascript:void(0);" id="21">Resend Email</a>
                                <span class="resend_count" id="resend_count21"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Header -->
                <div id="header">
                    <div class="container">
                        <!-- Left Side Content -->
                        <div class="left-side">
                            <!-- Logo -->
                            <div id="logo" style="width: 261px;">
                                <a href="https://localhost:44308/Home.aspx">
                                    <img src="img/hhh.png" alt="Hype" style=" margin-top: 40px;" />
                                </a>
                            </div>
                          
                            
                            
                                <a href="javascript:void(0);"  class="header-icon">
                       
                   <i class="fa fa-bars" id="icon" style="margin-top: 32px;" onclick="myMine"></i>
                    </a>
                         
                         
                     
                            
                        </div><!-- Left Side Content / End -->


                        <!-- Right Side Content / End -->
                        <div class="right-side">

                            <!-- User Menu -->
                            <div class="header-widget">

                                <!-- Messages -->
                                <div class="header-notifications user-menu">
                                    <div class="header-notifications-trigger">
                                        <a href="#" title="">
                                            <div class="user-avatar status-online">
                                                <div class="dropdown">
                                                    <span onclick="myFunction1()" class="dropbtn1" style="height: 69px; width: 64px;     top: -62px;" >
                                                <img src="img/default_user.png" style=" height: 69px;"  />
                                                        </span>
                                            </div>
                                                </div>
                                        </a>
                                    </div>
                                    <!-- Dropdown -->
                                   <div id="login" class="dropdown-content">
                                        <ul class="user-menu-small-nav">
                                            <li><a href="https://localhost:44308/dashboard1.aspx"><i class="fa fa-th-large"></i>Dashboard</a></li>
                                            <li><a href="https://localhost:44308/Templates.aspx"><i class="fa-solid fa-layer-group"></i>Templates</a></li>
                                            <li><a href="#"><i class="fa-solid fa-image"></i>AI Images</a></li>
                                            <li><a href="#"><i class="fa-solid fa-comment-dots"></i>AI Chat</a></li>
                                            <li><a href="#"><i class="fa-solid fa-headphones"></i>Speech to Text</a></li>
                                            <li><a href="#"><i class="fa-solid fa-code"></i>AI Code</a></li>
                                            <li><a href="#"><i class="fa fa-file-text"></i>All Documents</a></li>
                                            <li><a href="https://localhost:44308/Current%20Plan.aspx"><i class="fa-solid fa-gift"></i>Membership</a></li>
                                            <li><a href="https://localhost:44308/Account%20Setting.aspx"><i class="fa-solid fa-right-from-bracket"></i>Account Setting</a></li>
                                            <li><a href="#"><i class="fa-solid fa-power-off"></i>Logout</a></li>
                                        </ul>
                                    </div> 
                                </div>

                            </div>
                            <!-- User Menu / End -->

                            <div class="header-widget">
                                <div class="btn-group bootstrap-select language-switcher">
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" title="English" style="    margin-top: -68px;">
                                        <span onclick="myFunction2()" class="dropbtn2">en</span>&nbsp;
                                
                                    </button>
                                    
                                    <div id="login1" class="dropdown-content" >
                                        <ul class="dropdown-menu inner">
                                            <li data-lang="arabic">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Arabic</a>
                                            </li>
                                            <li data-lang="bangali">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Bangali</a>
                                            </li>
                                            <li data-lang="bulgarian">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Bulgarian</a>
                                            </li>
                                            <li data-lang="chinese">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Chinese</a>
                                            </li>
                                            <li data-lang="english">
                                                <a role="menuitem" tabindex="-1" rel="alternate">English</a>
                                            </li>
                                            <li data-lang="french">
                                                <a role="menuitem" tabindex="-1" rel="alternate">French</a>
                                            </li>
                                            <li data-lang="german">
                                                <a role="menuitem" tabindex="-1" rel="alternate">German</a>
                                            </li>
                                            <li data-lang="hebrew">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Hebrew</a>
                                            </li>
                                            <li data-lang="hindi">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Hindi</a>
                                            </li>
                                            <li data-lang="italian">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Italian</a>
                                            </li>
                                            <li data-lang="japanese">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Japanese</a>
                                            </li>
                                            <li data-lang="polish">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Polish</a>
                                            </li>
                                            <li data-lang="romanian">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Romanian</a>
                                            </li>
                                            <li data-lang="russian">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Russian</a>
                                            </li>
                                            <li data-lang="spanish">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Spanish</a>
                                            </li>
                                            <li data-lang="swedish">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Swedish</a>
                                            </li>
                                            <li data-lang="thai">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Thai</a>
                                            </li>
                                            <li data-lang="turkish">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Turkish</a>
                                            </li>
                                            <li data-lang="urdu">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Urdu</a>
                                            </li>
                                            <li data-lang="vietnamese">
                                                <a role="menuitem" tabindex="-1" rel="alternate">Vietnamese</a>
                                            </li>
                                        </ul>
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
        </div>
         <div class="row">
            <div class="col-lg-3">
                 <div class="sidebar" style="    margin-top: 61px; height: calc(100% - 90px);    width: 329px;"  >
                         <ul>
                             
                             <li>
                                 <div style="color:darkblue;font-weight:600;">
                                    <h9> My Account</h9>
                                 </div>
                             </li>
                            <li>
                              <a href="https://localhost:44308/dashboard1.aspx">
                                  <i class="fa fa-th-large"></i> <div>Dashboard</div>
                              </a>
                           </li>
                             <li>
                                 <div class="fa fa-file-text">
                           <div class="dropdown">
                        <span onclick="myFunction()" class="dropbtn" >My Documents</span>
                          <div id="myDropdown1" class="dropdown-content" >
                                   <a href="https://localhost:44308/All%20Documents.aspx">All Documents</a>
                                   <a href="https://localhost:44308/All%20Image.aspx">All AI Images</a>
                              </div>
                              </div>
                            </div>
                          </li>
                         </ul>

                         <ul>
                             <li>
                                 <div style="color:darkblue;font-weight:600;">
                                    <h9>  Organize And Manage</h9>
                                 </div>
                             </li>
                            <li>
                              <a href="https://localhost:44308/Templates.aspx">
                                 <i class="fa-solid fa-layer-group"></i> <div>Templates</div>
                              </a>
                           </li>
                             <li>
                              <a href="#">
                                  <i class="fa-solid fa-image"></i> <div>AI Images</div>
                              </a>
                           </li>
                             <li>
                              <a href="#">
                                  <i class="fa-solid fa-comment-dots"></i> <div>AI Chats</div>
                              </a>
                           </li>                    
                            <li>
                              <a href="#">
                                  <i class="fa-solid fa-headphones"></i> <div>Speech To Text</div>
                              </a>
                           </li>
                             <li>
                              <a href="#">
                                 <i class="fa-solid fa-code"></i><div>AI Code</div>
                              </a>
                           </li> 
                             </ul>

                             <ul>
                                 <li>
                                 <div style="color:darkblue;font-weight:600;">
                                    <h9>  Account</h9>
                                 </div>
                             </li>
                              <li>
                              <a href="#">
                                  <i class="fa fa-th-large"></i> <div>Affiliate Program</div>
                              </a>
                           </li>
                             <li>
                              <a href="https://localhost:44308/Current%20Plan.aspx">
                                 <i class="fa-solid fa-gift"></i> <div>Membership</div>
                              </a>
                           </li>
                            
                             <li>
                              <a href="https://localhost:44308/Transactions.aspx">
                                  <i class="fa-solid fa-file"></i> <div>Transaction</div>
                              </a>
                           </li>
                              <li>
                              <a href="https://localhost:44308/Account%20Setting.aspx">
                                  <i class="fa-solid fa-right-from-bracket"></i><div>Account Setting</div>
                              </a>
                           </li>
                              <li>
                              <a href="#">
                                  <i class="fa-solid fa-power-off"></i> <div>Log Out</div>
                              </a>
                           </li>
                         </ul>
                         
                       
                         
                     </div>
            </div>
            <div class="col-lg-9">
                   <div class="main-content">

                <main  style="margin-left: -270px;    margin-top: 130px;">
                 
                    <div class="simplebar-content" style="margin-left: 261px;">
        <div class="dashboard-content-inner" >

            
            <!-- Dashboard Headline -->
           <div class="dashboard-headline">
                    <h3 class="d-flex align-items-center">
                      Blog Intros                       
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                           <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0 / 10,000  
                            <strong> Words Used</strong>
                        </div>
                    </h3>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs" class="dark">
                        <ul>
                            <li><a href="https://localhost:44308/Home.aspx">Home</a></li>
                            <li>Templetes</li>
                            <li>Blog Intros</li>
                        </ul>
                    </nav>
                </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="dashboard-box margin-top-0 margin-bottom-30" style="width: 300px;">
                        <!-- Headline -->
                        <div class="headline">
                            <h3>
                                <i class="fa fa-align-left"></i>Blog Intros </h3>
                        </div>
                        <div class="content with-padding">
                            <div class="notification small-notification notice">Article/blog ideas that you can use to generate more traffic, leads, and sales for your business.</div>
                            <div class="submit-field margin-bottom-20">
                                <div class="submit-field margin-bottom-20">
                                                <h6>Blog Title<span class="form-required">*</span></h6>
                                                <input name="title" class="with-border quick-text-counter small-input" data-maxlength="200" required="">
                                    <div class="form-text" id="simple-txt-counter-0">0 / 200</div>
                                            </div>
                                <h6>What is your blog is about?<span class="form-required">*</span></h6>
                                <textarea name="description" class="with-border quick-text-counter small-input" data-maxlength="400" placeholder="Describe your blog here..." required=""></textarea><div class="form-text" id="simple-txt-counter-0">0 / 400</div>
                            </div>
                            <div class="submit-field margin-bottom-20">
                                <h6>Language</h6>
                                <div class="btn-group bootstrap-select with-border small-input dropup">

                                    <div>


                                        <select name="language">
                                            <option value="0">Arabic</option>
                                            <option value="1">Chinese</option>
                                            <option value="2">Danish</option>
                                            <option value="3">Dutch</option>
                                            <option value="4" selected="">English</option>
                                            <option value="5">French</option>
                                            <option value="6">German</option>
                                            <option value="7">Hebrew</option>
                                            <option value="8">Hindi</option>
                                            <option value="9">Indonesian</option>
                                            <option value="10">Italian</option>
                                            <option value="11">Japanese</option>
                                            <option value="12">Polish</option>
                                            <option value="13">Romanian</option>
                                            <option value="14">Russian</option>
                                            <option value="15">Spanish</option>
                                            <option value="16">Swedish</option>
                                            <option value="17">Turkish</option>
                                            <option value="18">Vietnamese</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-field margin-bottom-20">
                                <h6>Quality type</h6>
                                <div class="btn-group bootstrap-select with-border small-input dropup">

                                    <div>

                                        <select name="quality">
                                            <option value="0.25">Economy</option>
                                            <option value="0.5">Average</option>
                                            <option value="0.75" selected="">Good</option>
                                            <option value="1">Premium</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-field margin-bottom-20">
                                <h6>Tone of Voice    <i class="fa fa-question-circle" data-tippy-placement="top" title="Set the tone of the result."></i>
                                </h6>
                                <div class="btn-group bootstrap-select with-border small-input">

                                    <div>

                                        <select name="tone">
                                            <option value="funny">Funny</option>
                                            <option value="casual">Casual</option>
                                            <option value="excited">Excited</option>
                                            <option value="professional" selected="">Professional</option>
                                            <option value="witty">Witty</option>
                                            <option value="sarcastic">Sarcastic</option>
                                            <option value="feminine">Feminine</option>
                                            <option value="masculine">Masculine</option>
                                            <option value="bold">Bold</option>
                                            <option value="dramatic">Dramatic</option>
                                            <option value="gumpy">Gumpy</option>
                                            <option value="secretive">Secretive</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-field margin-bottom-20">
                                <h6>Number of Results</h6>
                                <div class="btn-group bootstrap-select with-border small-input">

                                    <div>

                                        <select>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="submit-field margin-bottom-20">
                                <h6>Max Results Length  <i class="fa fa-question-circle" data-tippy-placement="top" title="Maximum words for each result."></i>
                                </h6>
                                <input name="max_results" type="number" class="with-border small-input" value="200" min="50">
                            </div>
                            <div>
                                <small class="form-error"></small>
                                <button type="submit" name="submit" class="button ripple-effect full-width">Generate  <i class="icon-feather-arrow-right"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="dashboard-box margin-top-0 margin-bottom-30">
                        <div class="headline">
                            <div class="content with-padding">
                            <h3><i class="fa fa-align-left"></i>Generated Result</h3>
                            <div class="margin-left-auto line-height-1" style="margin-left: 400px;  margin-top: -62px;">
                                <a href="#" class="button ripple-effect btn-sm" id="export_to_word" data-tippy-placement="top" title="Export as Word Document"><i class="fa-solid fa-file-word"></i></a>
                                <a href="#" class="button ripple-effect btn-sm" id="export_to_txt" title="Export as Text File" data-tippy-placement="top"><i class="fa-solid fa-file-lines"></i></a>
                                <a href="#" class="button ripple-effect btn-sm" id="copy_text" title="Copy Text" data-tippy-placement="top"><i class="fa fa-copy"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="tox-editor-container">
                        <form id="ai_document_form" name="ai_document_form" method="post" action="#">

                            <div class="d-flex margin-bottom-10" >

                                <input name="title" type="text" class="with-border small-input" value="Untitled Document" required="" style="width: 100%;">
                                <button class="button btn-sm margin-left-5 ripple-effect" name="submit" type="submit" title="Save Document" data-tippy-placement="top" style="margin-top: -24px; height: 38px;">
                                    <i class="fa-solid fa-floppy-disk"></i>
                                </button>
                            </div>
                         <div class="container">
      <div class="options">
             <!-- Headings -->
        <select id="formatBlock" class="adv-option-button">
          <option value="H1">Heading 1</option>
          <option value="H2">Heading 2</option>
          <option value="H3">Heading 3</option>
          <option value="H4">Heading 4</option>
          <option value="H5">Heading 5</option>
          <option value="H6">Heading 6</option>
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
     
    
      
      <div id="text-input" contenteditable="true" style="height:500px">
     
      </div>
    </div>

                        
                        </form>
                    </div>
                </div>
            </div>
             </div>
          <%-- <div class="dashboard-box">
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

           
                        <!-- Footer -->
            <div class="dashboard-footer-spacer" style="padding-top: 151.705px;"></div>
            <div class="small-footer margin-top-15">
                <div class="footer-copyright">
                    2023 Socius IGB Pvt Ltd, All right reserved                </div>
                <ul class="footer-social-links">
                    <li><a href="https://www.facebook.com/" target="_blank" rel="nofollow"><i class="fa fa-facebook"></i></a></li><li><a href="https://www.twitter.com/" target="_blank" rel="nofollow"><i class="fa fa-twitter"></i></a></li><li><a href="https://instagram.com" target="_blank" rel="nofollow"><i class="fa fa-instagram"></i></a></li><li><a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa fa-linkedin"></i></a></li><li><a href="https://pinterest.com/" target="_blank" rel="nofollow"><i class="fa fa-pinterest"></i></a></li><li><a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa fa-youtube"></i></a></li>                </ul>
                <div class="clearfix"></div>
            </div>

        </div>
    </div>
                </main>
            </div>
            
        </div>
         </div>
    </form>
</body>
</html>
