<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AI Images.aspx.cs" Inherits="Quick_AI_01.WebForm10" %>

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
  #snackbar {
  visibility: hidden;
  min-width: 250px;
  color: white;
  color:red;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: absolute;
  z-index: 1;
  font-size: 15px;
  margin-left:0;
  top:270px;
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

                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline"><span class="fa fa-file-text"></span>My Documents</span></a>
                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="https://localhost:44308/All%20Documents.aspx" class="nav-link px-0"> <span class="d-none d-sm-inline">All Documents</span> </a>
                            </li>
                            <li>
                                <a href="https://localhost:44308/All%20Image.aspx" class="nav-link px-0"> <span class="d-none d-sm-inline">All Images</span> </a>
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
                              <a href="https://localhost:44308/AI%20Images.aspx#">
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
            <div class="col-lg-9">
                   <div class="main-content">

                <main  style="margin-left: -270px;    margin-top: 130px;">
                 
                    <div class="simplebar-content" style="margin-left: 261px;">
        <div class="dashboard-content-inner" >

            
            <!-- Dashboard Headline -->
           <div class="dashboard-headline">
                    <h3 class="d-flex align-items-center">
                        AI Images                       
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                           <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0 / 100 
                            <strong> Images Used</strong>
                        </div>
                    </h3>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs" class="dark">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li>AI Images</li>
                        </ul>
                    </nav>
                </div>
            <!---Onclick display-->
            <form id="ai_images" name="ai_images" method="post" action="#">
                    <h4 class="margin-bottom-10 padding-left-5">Start with a detailed description. <a href="#" class="try-example"><strong>Try an example</strong></a></h4>
                    <div class="message-reply ai_image_description margin-bottom-10" >
                                <textarea name="description" class="with-border small-input image-description" placeholder="SpongeBob SquarePants dressed as a mailman drinking a cup of coffee in a mountainside scene, watercolors by 5 year old" required=""></textarea>
                        <button id="app" type="submit" onclick="myFunction3()"  style="top: 0;    width: 158px; " name="submit" class="button ripple-effect border-pilled">Generate&nbsp<i class="fa-solid fa-arrow-right"></i></button>
                    </div>
                    <div id="main" class="row image-advance-settings" style="display: none;">
                        <div class="col-sm-3">
                            <div class="submit-field margin-bottom-20">
                                <h6>Image Title</h6>
                                <input name="title" class="with-border small-input" type="text" value="New Image">
                            </div>
                        </div>
                        <div class="col-sm-3" style="    margin-left: 198px; margin-top: -76px;">
                            <div class="submit-field margin-bottom-20">
                                <h6>Art style</h6>
                                <div class="btn-group bootstrap-select with-border small-input">
                                   
                                   
                                    <div>
                                    <select >
                                    <option value="" selected="selected">None</option>
                                    <option value="3d_render">3D render</option>
                                    <option value="pixel">Pixel</option>
                                    <option value="sticker">Sticker</option>
                                    <option value="realistic">Realistic</option>
                                    <option value="isometric">Isometric</option>
                                    <option value="cyberpunk">Cyberpunk</option>
                                    <option value="line">Line art</option>
                                    <option value="pencil">Pencil drawing</option>
                                    <option value="ballpoint_pen">Ballpoint pen drawing</option>
                                    <option value="watercolor">Watercolor</option>
                                    <option value="origami">Origami</option>
                                    <option value="cartoon">Cartoon</option>
                                    <option value="retro">Retro</option>
                                    <option value="anime">Anime</option>
                                    <option value="renaissance">Renaissance</option>
                                    <option value="clay">Clay</option>
                                    <option value="vaporwave">Vaporwave</option>
                                    <option value="steampunk">Steampunk</option>
                                    <option value="glitchcore">Glitchcore</option>
                                    <option value="bauhaus">Bauhaus</option>
                                    <option value="vector">Vector</option>
                                    <option value="low_poly">Low poly</option>
                                    <option value="ukiyo_e">Ukiyo-e</option>
                                    <option value="cubism">Cubism</option>
                                    <option value="modern">Modern</option>
                                    <option value="pop">Pop</option>
                                    <option value="contemporary">Contemporary</option>
                                    <option value="impressionism">Impressionism</option>
                                    <option value="pointillism">Pointillism</option>
                                    <option value="minimalism">Minimalism</option>
                                </select></div></div>
                            </div>
                        </div>
                        <div class="col-sm-3" style="margin-left: 439px; margin-top: -107px;">
                            <div class="submit-field margin-bottom-20">
                                <h6>Lighting style</h6>
                                <div class="btn-group bootstrap-select with-border small-input">
                                    
                                    <div >
                                       
                                    <select>
                                    <option value="" selected="selected">None</option>
                                    <option value="warm">Warm</option>
                                    <option value="cold">Cold</option>
                                    <option value="golden_hour">Golden Hour</option>
                                    <option value="blue_hour">Blue Hour</option>
                                    <option value="ambient">Ambient</option>
                                    <option value="studio">Studio</option>
                                    <option value="neon">Neon</option>
                                    <option value="dramatic">Dramatic</option>
                                    <option value="cinematic">Cinematic</option>
                                    <option value="natural">Natural</option>
                                    <option value="foggy">Foggy</option>
                                    <option value="backlight">Backlight</option>
                                    <option value="hard">Hard</option>
                                </select></div></div>
                            </div>
                        </div>
                        <div class="col-sm-3" style="    margin-left: 630px;  margin-top: -107px;">
                            <div class="submit-field margin-bottom-20">
                                <h6>Mood</h6>
                                <div class="btn-group bootstrap-select with-border small-input">
                                    
                                    
                                        <div>
                                    <select >
                                    <option value="" selected="selected">None</option>
                                    <option value="aggressive">Aggressive</option>
                                    <option value="angry">Angry</option>
                                    <option value="boring">Boring</option>
                                    <option value="bright">Bright</option>
                                    <option value="calm">Calm</option>
                                    <option value="cheerful">Cheerful</option>
                                    <option value="chilling">Chilling</option>
                                    <option value="colorful">Colorful</option>
                                    <option value="dark">Dark</option>
                                    <option value="neutral">Neutral</option>
                                </select></div></div>

                            </div>
                            </div>
                        
                        <div class="col-sm-3">
                            <div class="submit-field margin-bottom-20">
                                <h6>Resolution</h6>
                                <div class="btn-group bootstrap-select with-border small-input">
                                 
                                    <div>
                                    <select >
                                                                            <option value="256x256">Small Image (256x256)</option>
                                                                        <option value="512x512">Medium Image (512x512)</option>
                                    <option value="1024x1024">Large Image (1024x1024)</option>
                                </select></div></div>
                            </div>
                        </div>
                        <div class="col-sm-3" style="margin-left: 300px;  margin-top: -108px;">
                            <div class="submit-field margin-bottom-20">
                                <h6>Number of Images</h6>
                                <div class="btn-group bootstrap-select with-border small-input" >
                                    
                                    <div>
                                       
                                    <select >
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select></div></div>
                            </div>
                        </div>
                    </div>
                    <small><button onclick="hideshow()" >Advanced Settings</button> <strong>+</strong></small>
              <div id="snackbar" >API Error: The API key is missing or invalid.</div>
                 <hr />
                </form> 
           
           
            <!-- Dashboard Box / End -->
                        <!-- Footer -->
            <div class="dashboard-footer-spacer" style="padding-top: 151.705px;"></div>
            <div class="small-footer margin-top-15">
                <div class="footer-copyright">
                    2023 Socius IGB Pvt Ltd, All right reserved                </div>
                 <ul class="footer-social-links">
                                <li><a href="https://www.facebook.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-facebook-f"></i></a></li>
                                <li><a href="https://www.twitter.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter" ></i></a></li>
                                <li><a href="https://instagram.com" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram" ></i></a></li>
                                <li><a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin" ></i></a></li>
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
        var div = document.getElementById('main');
        var display = 0;
        function hideshow() {
            if (display == 1) {
                div.style.display = 'block';
                display = 0;
            }
            else {
                div.style.display = 'none';
                display = 1;
            }
        }
    </script>
    <script>
        // text counter
        $('.quick-text-counter').each(function () {
            var $this = $(this);

            $this.simpleTxtCounter({
                maxLength: $this.data('maxlength'),
                countElem: '<div class="form-text"></div>',
                lineBreak: false,
            });
        });

        var examples = ["A boombox reflecting the surroundings in a cave, Painting by H.R. Giger, Closeup",
            "SpongeBob SquarePants talking to a mouse in an airport, 1960s Cartoon",
            "SpongeBob SquarePants dressed as a mailman drinking a cup of coffee in a mountainside scene, watercolors by 5 year old",
            "A cactus sitting next to onion rings in a farm, 1960s Cartoon",
            "Garfield driving a school bus in a rock concert, Painting by Leonardo Da Vinci",
            "A mouse riding on a horse in a mountainside scene, Painting by Rembrandt",
            "Super Mario dressed as a medieval knight riding a pterodactyl in the back of a bus, Baroque painting"];
        $('.try-example').on('click', function (e) {
            e.preventDefault();

            $('.image-description').val(examples[Math.floor(Math.random() * examples.length)]);
        })
    </script>
    <script>
            function myFunction3() {
                var x = document.getElementById("snackbar");
                x.className = "show";
                setTimeout(function () { x.className = x.className.replace("show", ""); }, 3000);
            }
    </script>
  
 
</body>
</html>
