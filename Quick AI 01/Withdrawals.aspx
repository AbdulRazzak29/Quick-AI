    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Withdrawals.aspx.cs" Inherits="Quick_AI_01.Withdrawals" %>

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
   .msg.from {
  float: right;
}
   /* @author Tim himself */

.ziehharmonika h3 {
	background: #f7f8f9;
	color: #131212;
	text-align: left;
	border-radius: 4px;
	padding: 14px 12px;
	cursor: pointer;
	margin-top: 0;
	margin-bottom: 9px;
	padding-right: 40px;
	transition: 0.25s all;
	position: relative;
}
.ziehharmonika h3.active {
	margin-bottom: 21px;
	background: #f4f9f6;
}
.ziehharmonika h3::before {
	content: attr(data-prefix);
	font-size: 18px;
	margin-right: 9px;
}
.ziehharmonika h3.alignLeft {
	padding-left: 35px;
}
.ziehharmonika > div {
	display: none;
	background: #fff;
	border-radius: 4px;
	border: 1px solid #cdcdcd;
	text-align: left;
	padding: 31px 33px;
	margin-bottom: 9px;
}
.ziehharmonika .arrowDown {
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 13.0px 7.5px 0 7.5px;
	border-color: #272e35 transparent transparent transparent;
	position: absolute;
	bottom: 0;
	left: 40px;
	transition: 0.25s all;
	opacity: 0;
}
.ziehharmonika .active .arrowDown {
	bottom: -13px;
	border-color: #009641 transparent transparent transparent;
	opacity: 1;
}
.ziehharmonika .collapseIcon {
	position: absolute;
	right: 20px;
	top: 45%;
	font-size: 25px;
	font-weight: 300;
	-ms-transform: translate(0, -50%);
	    transform: translate(0, -50%);
}
.ziehharmonika .collapseIcon.alignLeft {
	right: initial;
	left: 20px;
}   
/*.radio input[type=radio] {
    position: absolute;
    opacity: 1;
    top: 38px;
    left: 0;
}*/

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
                                        
                                                <div class="dropdown">
                                                  <a class="btn " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 100px; margin-left: -59px; margin-top: -24px;border-radius: 50%;">
                                                         <img src="img/image_2023_05_20T12_58_15_456Z.png" style="height: 58px;border-radius: 70px;" />
                                                    </a>
                                                    <ul class="dropdown-menu" >
                                                        <li><a class="dropdown-item" href="https://localhost:44308/dashboard1.aspx"><i class="fa fa-dashboard icons"></i>DashBoard</a></li>
                        <li><a class="dropdown-item" href="https://localhost:44308/Templates.aspx"><i class="fa-solid fa-layer-group"></i>Templates</a></li>
                        <li><a class="dropdown-item" href="https://localhost:44308/AI%20Images.aspx"><i class="fa-regular fa-image"></i>AI Images</a></li>
                        <li><a class="dropdown-item" href="https://localhost:44308/AI%20Images.aspx#"><i class="fa-solid fa-comment"></i>AI Chat</a></li>
                        <li><a class="dropdown-item" href="#"><i class="fa-solid fa-headphones"></i>Speech to Text</a></li>
                        <li><a class="dropdown-item" href="#"><i class="fa-solid fa-code"></i>AI Code</a></li>
                        <li><a class="dropdown-item" href="#"><i class="fa-solid fa-file-lines"></i>All Documents</a></li>
                        <li><a class="dropdown-item" href="https://localhost:44308/Current%20Plan.aspx"><i class="fa-solid fa-gift"></i>Membership</a></li>
                        <li><a class="dropdown-item" href="https://localhost:44308/Account%20Setting.aspx"><i class="fa-solid fa-arrow-right-from-bracket"></i>Account Setting</a></li>
                        <li><a class="dropdown-item" href="homepage.aspx"><i class="fa-solid fa-power-off"></i>Logout</a></li>
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
                                <select name="Languge" id="Languge" style="height: auto; background-color: #444;    margin-top: -15px;">
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
                        <!-- Right Side Content / End -->

                    
                </div>
                        </div>
             
                <!-- Header / End -->
            </header>
        </div>
        <div class="row">
            <div class="col-lg-3">
                 <div class="sidebar" style="    margin-top: 61px; height: calc(100% - 90px);  width: 329px; " >
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

                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline"><span class="fa fa-file-text"></span>My Documents</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="https://localhost:44308/All%20Documents.aspx" class="nav-link px-0"> <span class="d-none d-sm-inline">All Documents</span> </a>
                            </li>
                            <li>
                                <a href="https://localhost:44308/All%20Image.aspx" class="nav-link px-0"> <span class="d-none d-sm-inline">All AI Images</span> </a>
                            </li>
                        </ul>
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
                              <a href="https://localhost:44308/AI%20Images.aspx">
                                  <i class="fa-solid fa-image"></i> <div>AI Images</div>
                              </a>
                           </li>
                             <li>
                              <a href="https://localhost:44308/AI%20Chat.aspx">
                                  <i class="fa-solid fa-comment-dots"></i> <div>AI Chats</div>
                              </a>
                           </li>                    
                            <li>
                              <a href="https://localhost:44308/Speech%20to%20Text.aspx">
                                  <i class="fa-solid fa-headphones"></i> <div>Speech To Text</div>
                              </a>
                           </li>
                             <li>
                              <a href="https://localhost:44308/AI%20Code.aspx">
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
                                 </ul>
                   <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline"><span class="fa-sharp fa-solid fa-share-nodes"></span>Affiliate Program</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="https://localhost:44308/Affiliate%20Program.aspx" class="nav-link px-0"> <span class="d-none d-sm-inline">Affiliate Program</span> </a>
                            </li>
                            <li>
                                <a href="https://localhost:44308/Withdrawals.aspx" class="nav-link px-0"> <span class="d-none d-sm-inline">Withdrawals</span> </a>
                            </li>
                        </ul>
                            
                     <ul>
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
            <div class="col-lg-9" style="    margin-top: 10%;">
                   <div class="main-content">

                <main>
                   
                    <div class="simplebar-content">
                        <div class="dashboard-content-inner">


                            <!-- Dashboard Headline -->
                            <div class="dashboard-headline">
                                <h3>Withdrawals</h3>
                                <!-- Breadcrumbs -->
                                <nav id="breadcrumbs" class="dark">
                                    <ul>
                                        <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                                        <li>Withdrawals</li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="container">
                                <div class="ziehharmonika">
                                    <h3><i class="fa-regular fa-bell"></i>Request withdrawal</h3>
                                    <div>
                                        <div class="notification notice">
                                            The requested amount will be deducted from your wallet and the amount will be blocked until it get approved or rejected by the administrator. Once its approved, the requested amount will be manually pay to you.
                                        </div>
                                        <div class="alert alert-danger" role="alert" id="error-msg" style="display: none; color: red; background-color: white; border: none;background-color: #f3cbcb;">Insufficient fund, withdrawal amount must be lower than your wallet amount. </div>
                                        <%-- <form name="form1" method="post" action="#" id="send">--%>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="submit-field">
                                                    <h5>Withdrawal Amount   (₹)</h5>
                                                    <div class="input-with-icon">
                                                        <input class="with-border" type="number" placeholder="Amount" name="amount" value="50" min="50" required="" style="width:100%" />
                                                        <i class="fa-solid fa-money-bill"></i>
                                                    </div>
                                                    <small><i class="fa fa-info-circle"></i>Minimum withdraw amount : 50 ₹</small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="submit-field">
                                            <h5>Payment Method</h5>
                                            <div class="radio">
                                                <input type="radio" id="paypal" name="payment_method" value="paypal"  style="position: absolute; opacity: 1; top: 38px; left: 0;" />
                                                <%--<input id="paypal" name="payment_method" type="radio" value="paypal" checked="" style="position:absolute;top:38px;left:0;opacity:1;" />--%>
                                                <label for="Paypal">Paypal </label>
                                            </div>
                                            <div class="radio">

                                                <input type="radio" id="Bank Deposit" name="payment_method" value="Bank Deposit" style="position: absolute; opacity: 1; top: 70px; left: 0;" />
                                                <%--<input id="Bank Deposit" name=" payment_method" type="radio" value="Bank Deposit" checked="" style="position:absolute;opacity:1;top:70px;left:0;" />--%>
                                                <label for="Bank Deposit" style=" top: 28px; left: -88px;">BankDeposit</label>

                                            </div>
                                        </div>
                                        <div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="submit-field">
                                                        <h5>Account Details</h5>
                                                        <textarea name="account_details" class="with-border" placeholder="Write Payment Details..." required=""></textarea>
                                                        <small>Write here your payment id or payment details of selected payment gateways.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <button name="submit" id="submit-btn" class="button" type="submit">Withdraw</button>
                                        </div>
                                        <%--</form>--%>
                                    </div>
                                </div>


                                <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
                                <script src="ziehharmonika.js"></script>
                                <script>
                                    $(document).ready(function () {
                                        $('.ziehharmonika').ziehharmonika({
                                            collapsible: true,
                                            prefix: ''
                                        });
                                    });
                                </script>
                                </div>  
                           <div class="dashboard-box main-box-in-row"">
                                    <div class="headline">
                                        <h3><i class="fa-solid fa-rectangle-list"></i> Withdrawal Requests</h3>
                                    </div>
                                 <div class="content">
                                     <!-- Chart -->
                                     <div class="content with-padding">
                                           <div class="content with-padding">
                            <div class="table-responsive">
                                <table id="js-table-list" class="basic-table dashboard-box-list">
                                    <thead>
                                        <tr>
                                            <th style="background-color: #ffffff; color: #080808;">Requested On</th>
                                            <th style="background-color: #ffffff; color: #080808;">Amount</th>
                                            <th style="background-color: #ffffff; color: #080808;">Payment Method</th>
                                            <th style="background-color: #ffffff; color: #080808;">Status</th>
                                             
                                        </tr>
                                    </thead>
                                    <tbady>
                                        <tr>
                                            <td colspan="5" class="text-center" style="border-top-width: thin; ">No result found.</td>

                                        </tr>
                                    </tbady>
                                   
                                </table>
                            </div>
                        </div>
                                     </div>
                                 </div>

                                </div>

                                 <div class="container">
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
                    </div>
                </main>
            </div>
            
        </div>
         </div>
    </form>
    <script>
        // @author Tim himself

        (function ($) {
            var settings;
            $.fn.ziehharmonika = function (actionOrSettings, parameter) {
                if (typeof actionOrSettings === 'object' || actionOrSettings === undefined) {
                    // Default settings:
                    settings = $.extend({
                        // To use a headline tag other than h3, adjust or overwrite ziehharmonika.css as well
                        headline: 'h3',
                        // Give headlines a certain prefix, e.g. "♫ My headline"
                        prefix: false,
                        // Only 1 accordion can be open at any given time
                        highlander: true,
                        // Allow or disallow last open accordion to be closed
                        collapsible: false,
                        // Arrow down under headline
                        arrow: true,
                        // Opened/closed icon on the right hand side of the headline (either false or JSON containing symbols or image paths)
                        collapseIcons: {
                            opened: '&ndash;',
                            closed: '+'
                        },
                        // Collapse icon left or right
                        collapseIconsAlign: 'right',
                        // Scroll to opened accordion element
                        scroll: true
                    }, actionOrSettings);
                }
                // actions
                if (actionOrSettings == "open") {
                    if (settings.highlander) {
                        $(this).ziehharmonika('forceCloseAll');
                    }
                    var ogThis = $(this);
                    $(this).addClass('active').next('div').slideDown(400, function () {
                        if (settings.collapseIcons) {
                            $('.collapseIcon', ogThis).html(settings.collapseIcons.opened);
                        }
                        // parameter: scroll to opened element
                        if (parameter !== false) {
                            smoothScrollTo($(this).prev(settings.collapseIcons));
                        }
                    });
                    return this;
                } else if (actionOrSettings == "close" || actionOrSettings == "forceClose") {
                    // forceClose ignores collapsible setting
                    if (actionOrSettings == "close" && !settings.collapsible && $(settings.headline + '[class="active"]').length == 1) {
                        return this;
                    }
                    var ogThis = $(this);
                    $(this).removeClass('active').next('div').slideUp(400, function () {
                        if (settings.collapseIcons) {
                            $('.collapseIcon', ogThis).html(settings.collapseIcons.closed);
                        }
                    });
                    return this;
                } else if (actionOrSettings == "closeAll") {
                    $(settings.headline).ziehharmonika('close');
                } else if (actionOrSettings == "forceCloseAll") {
                    // forceCloseAll ignores collapsible setting
                    $(settings.headline).ziehharmonika('forceClose');
                }

                if (settings.prefix) {
                    $(settings.headline, this).attr('data-prefix', settings.prefix);
                }
                //if (settings.arrow) {
                //    $(settings.headline, this).append('<div class="arrowDown"></div>');
                //}
                if (settings.collapseIcons) {
                    $(settings.headline, this).each(function (index, el) {
                        if ($(this).hasClass('active')) {
                            $(this).append('<div class="collapseIcon">' + settings.collapseIcons.opened + '</div>');
                        } else {
                            $(this).append('<div class="collapseIcon">' + settings.collapseIcons.closed + '</div>');
                        }
                    });
                }
                if (settings.collapseIconsAlign == 'left') {
                    $('.collapseIcon, ' + settings.headline).addClass('alignLeft');
                }

                $(settings.headline, this).click(function () {
                    if ($(this).hasClass('active')) {
                        $(this).ziehharmonika('close');
                    } else {
                        $(this).ziehharmonika('open', settings.scroll);
                    }
                });
            };

            function smoothScrollTo(element, callback) {
                var time = 400;
                $('html, body').animate({
                    scrollTop: $(element).offset().top
                }, time, callback);
            }
        }(jQuery));

    </script>
     <script>
         // When the user clicks the submit button, show the error message
         document.getElementById("submit-btn").addEventListener("click", function () {
             event.preventDefault();
             document.getElementById("error-msg").style.display = "block";
         });
     </script>
    <script type="text/javascript">

        $("#icon").on("click", function () {
            $(".sidebar").toggle();
            $(".col-lg-9").toggleClass('col-lg-12 full-width');

        });

    </script>
</body>
</html>
