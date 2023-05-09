﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account Setting.aspx.cs" Inherits="Quick_AI_01.WebForm8" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                                            <div class="user-avatar status-online">
                                                <div class="dropdown">
                                                    <span onclick="myFunction1()" class="dropbtn1" style="height: 69px; width: 64px; top: -62px;">
                                                        <img src="img/default_user.png" style="height: 69px;" />
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
                                    <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" title="English" style="margin-top: -68px;">
                                        <span onclick="myFunction2()" class="dropbtn2">en</span>&nbsp;
                                
                                    </button>

                                    <div id="login1" class="dropdown-content">
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
        <div class="row">
            <div class="col-lg-3">
                <div class="sidebar" style="margin-top: 61px; height: calc(100% - 90px); width: 329px;">
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
                            <div class="fa fa-file-text">
                                <div class="dropdown">
                                    <span onclick="myFunction()" class="dropbtn">My Documents</span>
                                    <div id="myDropdown1" class="dropdown-content">
                                        <a href="https://localhost:44308/All%20Documents.aspx">All Documents</a>
                                        <a href="https://localhost:44308/All%20Image.aspx">All AI Images</a>
                                    </div>
                                </div>
                            </div>
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
                            <a href="#">
                                <i class="fa-solid fa-image"></i>
                                <div>AI Images</div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-solid fa-comment-dots"></i>
                                <div>AI Chats</div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-solid fa-headphones"></i>
                                <div>Speech To Text</div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
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
                        <li>
                            <a href="#">
                                <i class="fa fa-th-large"></i>
                                <div>Affiliate Program</div>
                            </a>
                        </li>
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
                            <a href="#">
                                <i class="fa-solid fa-power-off"></i>
                                <div>Log Out</div>
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
                <h3>Account Setting</h3>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs" class="dark">
                    <ul>
                        <li><a href="https://localhost:44308/Home.aspx">Home</a></li>
                        <li>Dashboard</li>
                    </ul>
                </nav>
            </div>

           
            <div class="dashboard-box margin-top-0">
                <!-- Headline -->
                <div class="headline">
                    <h3><i class="icon-feather-settings"></i>Account Setting</h3>
                </div>
                <div class="content with-padding">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="submit-field">
                                <h5>Avatar</h5>
                                <div class="uploadButton">
                                    <input class="uploadButton-input" type="file" accept="images/*" id="avatar" name="avatar">
                                    <label class="uploadButton-button ripple-effect" for="avatar" style="background-color: #0e38df; color: white;">Upload Avatar</label>
                                    <span class="uploadButton-file-name">Use 150x150px for better use</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-12">
                            <div class="submit-field">
                                <h5>Username *</h5>
                                <div class="input-with-icon-left">

                                    <input type="text" class="with-border" id="username" name="username" value="#" onblur="checkAvailabilityUsername()" style="height: 48px; margin-left: -384px;">
                                </div>
                                <span id="user-availability-status"></span>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-12">
                            <div class="submit-field">
                                <h5>Email Address *</h5>
                                <div class="input-with-icon-left" style="left: -13px;">

                                    <input type="text" class="with-border" id="email" name="email" value="#" onblur="checkAvailabilityEmail()" style="height: 48px;">
                                </div>
                                <span id="email-availability-status"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="submit-field">
                                <h5>New Password</h5>
                                <input type="password" id="password" name="password" class="with-border" onkeyup="checkAvailabilityPassword()" style="height: 48px;">
                            </div>
                        </div>

                        <div class="col-xl-6">
                            <div class="submit-field">
                                <h5>Confirm Password</h5>
                                <input type="password" id="re_password" name="re_password" class="with-border" onkeyup="checkRePassword()" style="height: 48px;">
                            </div>
                        </div>
                    </div>
                    <span id="password-availability-status"></span>
                    <button type="submit" name="submit" class="button ripple-effect" style="background-color: #0e38df; color: white;">Save Changes</button>

                </div>
            </div>

            
            <div class="dashboard-box">
                <div class="headline">
                    <h3><i class="fa-regular fa-file-lines"></i>Billing Details</h3>
                </div>
                 <div class="content">
                  <div class="content with-padding">
                      <div class="notification notice">These details will be used in invoice and payments.</div>
                       <form method="post" accept-charset="UTF-8">

                           <div>
                               <label>
                                   <h3>Type*</h3>
                               </label>
                               <select class="form-select" aria-label="Default select example" style="height: 50px;">
                                   <option selected="">Personal</option>
                                   <option value="1">Personal</option>
                                   <option value="2">business</option>

                               </select>
                           </div>
                           <div>
                               <label>
                                   Name*
                               </label>
                               <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                           </div>
                           <div>
                               <label>
                                   Address *
                               </label>
                               <input type="text" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                           </div>
                           <div class="row">
                               <div class="col-md-6">
                                   <div class="submit-field">
                                       <h5>City *</h5>
                                       <input type="text" id="billing_city" name="billing_city" class="with-border" value="" required="">
                                   </div>
                               </div>
                               <div class="col-md-4">
                                   <div class="submit-field">
                                       <h5>State *</h5>
                                       <input type="text" id="billing_state" name="billing_state" class="with-border" value="" required="">
                                   </div>
                               </div>
                               <div class="col-md-2">
                                   <div class="submit-field">
                                       <h5>Zip code *</h5>
                                       <input type="text" id="billing_zipcode" name="billing_zipcode" class="with-border" value="" required="">
                                   </div>
                               </div>
                           </div>
                           <div>
                               <label>
                                   Country *
                               </label>
                                 <input type="text" id="-billing_coun"  div="">
                               <div class="submit-field">
                                   <h5>Country *</h5>
                                   <select class="form-select" aria-label="Default select example" style="height: 50px;">
                                       <option value="AF">Afghanistan</option>
                                       <option value="AX">Aland Islands</option>
                                       <option value="AL">Albania</option>
                                       <option value="DZ">Algeria</option>
                                       <option value="AS">American Samoa</option>
                                       <option value="AD">Andorra</option>
                                       <option value="AO">Angola</option>
                                       <option value="AI">Anguilla</option>
                                       <option value="AQ">Antarctica</option>
                                       <option value="AG">Antigua and Barbuda</option>
                                       <option value="AR">Argentina</option>
                                       <option value="AM">Armenia</option>
                                       <option value="AW">Aruba</option>
                                       <option value="AU">Australia</option>
                                       <option value="AT">Austria</option>
                                       <option value="AZ">Azerbaijan</option>
                                       <option value="BS">Bahamas</option>
                                       <option value="BH">Bahrain</option>
                                       <option value="BD">Bangladesh</option>
                                       <option value="BB">Barbados</option>
                                       <option value="BY">Belarus</option>
                                       <option value="BE">Belgium</option>
                                       <option value="BZ">Belize</option>
                                       <option value="BJ">Benin</option>
                                       <option value="BM">Bermuda</option>
                                       <option value="BT">Bhutan</option>
                                       <option value="BO">Bolivia</option>
                                       <option value="BQ">Bonaire, Saint Eustatius and Saba </option>
                                       <option value="BA">Bosnia and Herzegovina</option>
                                       <option value="BW">Botswana</option>
                                       <option value="BV">Bouvet Island</option>
                                       <option value="BR">Brazil</option>
                                       <option value="IO">British Indian Ocean Territory</option>
                                       <option value="VG">British Virgin Islands</option>
                                       <option value="BN">Brunei</option>
                                       <option value="BG">Bulgaria</option>
                                       <option value="BF">Burkina Faso</option>
                                       <option value="BI">Burundi</option>
                                       <option value="KH">Cambodia</option>
                                       <option value="CM">Cameroon</option>
                                       <option value="CA">Canada</option>
                                       <option value="CV">Cape Verde</option>
                                       <option value="KY">Cayman Islands</option>
                                       <option value="CF">Central African Republic</option>
                                       <option value="TD">Chad</option>
                                       <option value="CL">Chile</option>
                                       <option value="CN">China</option>
                                       <option value="CX">Christmas Island</option>
                                       <option value="CC">Cocos Islands</option>
                                       <option value="CO">Colombia</option>
                                       <option value="KM">Comoros</option>
                                       <option value="CK">Cook Islands</option>
                                       <option value="CR">Costa Rica</option>
                                       <option value="HR">Croatia</option>
                                       <option value="CU">Cuba</option>
                                       <option value="CW">Curacao</option>
                                       <option value="CY">Cyprus</option>
                                       <option value="CZ">Czech Republic</option>
                                       <option value="CD">Democratic Republic of the Congo</option>
                                       <option value="DK">Denmark</option>
                                       <option value="DJ">Djibouti</option>
                                       <option value="DM">Dominica</option>
                                       <option value="DO">Dominican Republic</option>
                                       <option value="TL">East Timor</option>
                                       <option value="EC">Ecuador</option>
                                       <option value="EG">Egypt</option>
                                       <option value="SV">El Salvador</option>
                                       <option value="GQ">Equatorial Guinea</option>
                                       <option value="ER">Eritrea</option>
                                       <option value="EE">Estonia</option>
                                       <option value="ET">Ethiopia</option>
                                       <option value="FK">Falkland Islands</option>
                                       <option value="FO">Faroe Islands</option>
                                       <option value="FJ">Fiji</option>
                                       <option value="FI">Finland</option>
                                       <option value="FR">France</option>
                                       <option value="GF">French Guiana</option>
                                       <option value="PF">French Polynesia</option>
                                       <option value="TF">French Southern Territories</option>
                                       <option value="GA">Gabon</option>
                                       <option value="GM">Gambia</option>
                                       <option value="GE">Georgia</option>
                                       <option value="DE">Germany</option>
                                       <option value="GH">Ghana</option>
                                       <option value="GI">Gibraltar</option>
                                       <option value="GR">Greece</option>
                                       <option value="GL">Greenland</option>
                                       <option value="GD">Grenada</option>
                                       <option value="GP">Guadeloupe</option>
                                       <option value="GU">Guam</option>
                                       <option value="GT">Guatemala</option>
                                       <option value="GG">Guernsey</option>
                                       <option value="GN">Guinea</option>
                                       <option value="GW">Guinea-Bissau</option>
                                       <option value="GY">Guyana</option>
                                       <option value="HT">Haiti</option>
                                       <option value="HM">Heard Island and McDonald Islands</option>
                                       <option value="HN">Honduras</option>
                                       <option value="HK">Hong Kong</option>
                                       <option value="HU">Hungary</option>
                                       <option value="IS">Iceland</option>
                                       <option value="IN" selected="">India</option>
                                       <option value="ID">Indonesia</option>
                                       <option value="IR">Iran</option>
                                       <option value="IQ">Iraq</option>
                                       <option value="IE">Ireland</option>
                                       <option value="IM">Isle of Man</option>
                                       <option value="IL">Israel</option>
                                       <option value="IT">Italy</option>
                                       <option value="CI">Ivory Coast</option>
                                       <option value="JM">Jamaica</option>
                                       <option value="JP">Japan</option>
                                       <option value="JE">Jersey</option>
                                       <option value="JO">Jordan</option>
                                       <option value="KZ">Kazakhstan</option>
                                       <option value="KE">Kenya</option>
                                       <option value="KI">Kiribati</option>
                                       <option value="XK">Kosovo</option>
                                       <option value="KW">Kuwait</option>
                                       <option value="KG">Kyrgyzstan</option>
                                       <option value="LA">Laos</option>
                                       <option value="LV">Latvia</option>
                                       <option value="LB">Lebanon</option>
                                       <option value="LS">Lesotho</option>
                                       <option value="LR">Liberia</option>
                                       <option value="LY">Libya</option>
                                       <option value="LI">Liechtenstein</option>
                                       <option value="LT">Lithuania</option>
                                       <option value="LU">Luxembourg</option>
                                       <option value="MO">Macao</option>
                                       <option value="MK">Macedonia</option>
                                       <option value="MG">Madagascar</option>
                                       <option value="MW">Malawi</option>
                                       <option value="MY">Malaysia</option>
                                       <option value="MV">Maldives</option>
                                       <option value="ML">Mali</option>
                                       <option value="MT">Malta</option>
                                       <option value="MH">Marshall Islands</option>
                                       <option value="MQ">Martinique</option>
                                       <option value="MR">Mauritania</option>
                                       <option value="MU">Mauritius</option>
                                       <option value="YT">Mayotte</option>
                                       <option value="MX">Mexico</option>
                                       <option value="FM">Micronesia</option>
                                       <option value="MD">Moldova</option>
                                       <option value="MC">Monaco</option>
                                       <option value="MN">Mongolia</option>
                                       <option value="ME">Montenegro</option>
                                       <option value="MS">Montserrat</option>
                                       <option value="MA">Morocco</option>
                                       <option value="MZ">Mozambique</option>
                                       <option value="MM">Myanmar</option>
                                       <option value="NA">Namibia</option>
                                       <option value="NR">Nauru</option>
                                       <option value="NP">Nepal</option>
                                       <option value="NL">Netherlands</option>
                                       <option value="AN">Netherlands Antilles</option>
                                       <option value="NC">New Caledonia</option>
                                       <option value="NZ">New Zealand</option>
                                       <option value="NI">Nicaragua</option>
                                       <option value="NE">Niger</option>
                                       <option value="NG">Nigeria</option>
                                       <option value="NU">Niue</option>
                                       <option value="NF">Norfolk Island</option>
                                       <option value="KP">North Korea</option>
                                       <option value="MP">Northern Mariana Islands</option>
                                       <option value="NO">Norway</option>
                                       <option value="OM">Oman</option>
                                       <option value="PK">Pakistan</option>
                                       <option value="PW">Palau</option>
                                       <option value="PS">Palestinian Territory</option>
                                       <option value="PA">Panama</option>
                                       <option value="PG">Papua New Guinea</option>
                                       <option value="PY">Paraguay</option>
                                       <option value="PE">Peru</option>
                                       <option value="PH">Philippines</option>
                                       <option value="PN">Pitcairn</option>
                                       <option value="PL">Poland</option>
                                       <option value="PT">Portugal</option>
                                       <option value="PR">Puerto Rico</option>
                                       <option value="QA">Qatar</option>
                                       <option value="CG">Republic of the Congo</option>
                                       <option value="RE">Reunion</option>
                                       <option value="RO">Romania</option>
                                       <option value="RU">Russia</option>
                                       <option value="RW">Rwanda</option>
                                       <option value="BL">Saint Barthelemy</option>
                                       <option value="SH">Saint Helena</option>
                                       <option value="KN">Saint Kitts and Nevis</option>
                                       <option value="LC">Saint Lucia</option>
                                       <option value="MF">Saint Martin</option>
                                       <option value="PM">Saint Pierre and Miquelon</option>
                                       <option value="VC">Saint Vincent and the Grenadines</option>
                                       <option value="WS">Samoa</option>
                                       <option value="SM">San Marino</option>
                                       <option value="ST">Sao Tome and Principe</option>
                                       <option value="SA">Saudi Arabia</option>
                                       <option value="SN">Senegal</option>
                                       <option value="RS">Serbia</option>
                                       <option value="CS">Serbia and Montenegro</option>
                                       <option value="SC">Seychelles</option>
                                       <option value="SL">Sierra Leone</option>
                                       <option value="SG">Singapore</option>
                                       <option value="SX">Sint Maarten</option>
                                       <option value="SK">Slovakia</option>
                                       <option value="SI">Slovenia</option>
                                       <option value="SB">Solomon Islands</option>
                                       <option value="SO">Somalia</option>
                                       <option value="ZA">South Africa</option>
                                       <option value="GS">South Georgia and the South Sandwich Islands</option>
                                       <option value="KR">South Korea</option>
                                       <option value="SS">South Sudan</option>
                                       <option value="ES">Spain</option>
                                       <option value="LK">Sri Lanka</option>
                                       <option value="SD">Sudan</option>
                                       <option value="SR">Suriname</option>
                                       <option value="SJ">Svalbard and Jan Mayen</option>
                                       <option value="SZ">Swaziland</option>
                                       <option value="SE">Sweden</option>
                                       <option value="CH">Switzerland</option>
                                       <option value="SY">Syria</option>
                                       <option value="TW">Taiwan</option>
                                       <option value="TJ">Tajikistan</option>
                                       <option value="TZ">Tanzania</option>
                                       <option value="TH">Thailand</option>
                                       <option value="TG">Togo</option>
                                       <option value="TK">Tokelau</option>
                                       <option value="TO">Tonga</option>
                                       <option value="TT">Trinidad and Tobago</option>
                                       <option value="TN">Tunisia</option>
                                       <option value="TR">Turkey</option>
                                       <option value="TM">Turkmenistan</option>
                                       <option value="TC">Turks and Caicos Islands</option>
                                       <option value="TV">Tuvalu</option>
                                       <option value="VI">U.S. Virgin Islands</option>
                                       <option value="UG">Uganda</option>
                                       <option value="UA">Ukraine</option>
                                       <option value="AE">United Arab Emirates</option>
                                       <option value="UK">United Kingdom</option>
                                       <option value="US">United States</option>
                                       <option value="UM">United States Minor Outlying Islands</option>
                                       <option value="UY">Uruguay</option>
                                       <option value="UZ">Uzbekistan</option>
                                       <option value="VU">Vanuatu</option>
                                       <option value="VA">Vatican</option>
                                       <option value="VE">Venezuela</option>
                                       <option value="VN">Vietnam</option>
                                       <option value="WF">Wallis and Futuna</option>
                                       <option value="EH">Western Sahara</option>
                                       <option value="YE">Yemen</option>
                                       <option value="ZM">Zambia</option>
                                       <option value="ZW">Zimbabwe</option>
                                   </select>
                                   <button type="submit" name="submit" class="button ripple-effect" style="background-color: #0e38df; color: white;">Save Changes</button>

                               </div>
                                       

                           </div>

                       </form>
                    </div>
                 </div>

         
           
                        <!-- Footer -->
                <div class="dashboard-footer-spacer" style="padding-top: 151.705px;"></div>
          

        </div>
            <!-- Dashboard Box / End -->
                        <!-- Footer -->
            <div class="dashboard-footer-spacer" style="padding-top: 151.705px;"></div>
            <div class="small-footer margin-top-15">
                <div class="footer-copyright">
                    2023 Socius IGB Pvt Ltd, All right reserved               
                </div>
                <ul class="footer-social-links">
                    <li><a href="https://www.facebook.com/" target="_blank" rel="nofollow"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="https://www.twitter.com/" target="_blank" rel="nofollow"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="https://instagram.com" target="_blank" rel="nofollow"><i class="fa fa-instagram"></i></a></li>
                    <li><a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="https://pinterest.com/" target="_blank" rel="nofollow"><i class="fa fa-pinterest"></i></a></li>
                    <li><a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa fa-youtube"></i></a></li>
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
         /* When the user clicks on the button, 
         toggle between hiding and showing the dropdown content */
         function myFunction() {
             document.getElementById("myDropdown1").classList.toggle("show");
         }

         // Close the dropdown if the user clicks outside of it
         window.onclick = function (event) {
             if (!event.target.matches('.dropbtn')) {
                 var dropdowns = document.getElementsByClassName("dropdown-content");
                 var i;
                 for (i = 0; i < dropdowns.length; i++) {
                     var openDropdown = dropdowns[i];
                     if (openDropdown.classList.contains('show')) {

                     }
                 }
             }
         }
     </script>
      <script>
          /* When the user clicks on the button, 
          toggle between hiding and showing the dropdown content */
          function myFunction1() {
              document.getElementById("login").classList.toggle("show");
          }

          // Close the dropdown if the user clicks outside of it
          window.onclick = function (event) {
              if (!event.target.matches('.dropbtn1')) {
                  var dropdowns = document.getElementsByClassName("dropdown-content");
                  var i;
                  for (i = 0; i < dropdowns.length; i++) {
                      var openDropdown = dropdowns[i];
                      if (openDropdown.classList.contains('show')) {

                      }
                  }
              }
          }
      </script>
     
</body>
</html>
