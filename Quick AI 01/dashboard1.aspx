<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard1.aspx.cs" Inherits="Quick_AI_01.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="margin-top: 160px;">
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

        .headline {
            display: block;
            position: relative;
            margin-bottom: 50px;
        }

            .headline h3 {
                display: block;
                font-size: 26px;
                color: #333;
            }

        .facts-container {
            display: flex;
            flex-wrap: wrap;
            width: calc(100% + 30px);
            margin-bottom: -30px;
        }

        .fact {
            background-color: #fff;
            box-shadow: 0 2px 6px rgba(0, 0, 0, .08);
            border-radius: 4px;
            padding: 25px;
            margin-right: 30px;
            margin-bottom: 30px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            flex: 1 1 calc(25% - 30px);
            height: auto;
            cursor: default;
            transition: .3s;
        }

        .fun-fact-icon {
            border-radius: 4px;
            background-color: rgba(0, 0, 0, .04);
            flex: 0 0 100px;
            height: 100px;
            display: flex;
            text-align: center;
        }

            .fun-fact-icon i {
                font-size: 48px;
                align-self: center;
                margin: 0 auto;
                color: #666;
            }

        .dashboard-box {
            display: block;
            border-radius: 4px;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, .08);
            margin-top: 30px;
            position: relative;
        }

        .chartjs-size-monitor {
            position: absolute;
            inset: 0px;
            overflow: hidden;
            pointer-events: none;
            visibility: hidden;
            z-index: -1;
        }

        .chartjs-size-monitor-expand {
            position: absolute;
            width: 1000000px;
            height: 1000000px;
            left: 0;
            top: 0;
            bottom: 0;
            overflow: hidden;
            pointer-events: none;
            visibility: hidden;
            z-index: -1;
        }

        .chartjs-size-monitor-shrink {
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            overflow: hidden;
            pointer-events: none;
            visibility: hidden;
            z-index: -1;
            width: 200%;
            height: 200%;
        }

        .dashboard-footer-spacer {
            padding-top: 125px
        }

        .dashboard-content-inner .small-footer {
            width: 100%;
            left: 0;
            padding: 25px 50px;
            position: absolute;
            bottom: 0
        }

        .small-footer .footer-social-links {
            transform: none;
            flex: 1;
            text-align: right;
            float: right;
            display: inline-block;
            margin: 0 -5px 0 0;
            position: relative;
            top: 2px
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
                                                    <li><a class="dropdown-item" href="https://localhost:44308/AI%20Images.aspx"><i class="fa-solid fa-comment"></i>AI Chat</a></li>
                                                    <li><a class="dropdown-item" href="Speech to Text.aspx"><i class="fa-solid fa-headphones"></i>Speech to Text</a></li>
                                                    <li><a class="dropdown-item" href=" AI Code.aspx"><i class="fa-solid fa-code"></i>AI Code</a></li>
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

                            <!-- Right Side Content / End -->
                        </div>

                    </div>
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
                    <main style="margin-left: -21px;">
                        <div class="simplebar-content">
                            <div class="dashboard-content-inner">
                                <!-- Dashboard Headline -->
                                <div class="headline">
                                    <h3>Dashboard</h3>
                                    <!-- Breadcrumbs -->
                                    <nav id="breadcrumbs" class="dark">
                                        <ul>
                                            <li><a href="https://localhost:44308/Home.aspx">Home</a></li>
                                            <li>Dashboard</li>
                                        </ul>
                                    </nav>
                                </div>

                                <!-- Fun Facts Container -->
                                <div class="facts-container">
                                    <div class="fact" data-fun-fact-color="#b81b7f">
                                        <div class="fun-fact-text">
                                            <span>Words Used</span>
                                            <h4>0 <small>/ 10,000</small>
                                            </h4>
                                        </div>
                                        <div class="fun-fact-icon" style="background-color: rgba(184, 27, 127, 0.07);"><i class='fa-solid fa-arrow-trend-up' style='color: #ed12db'></i></div>
                                    </div>
                                    <div class="fact" data-fun-fact-color="#36bd78">
                                        <div class="fun-fact-text">
                                            <span>Images Used</span>
                                            <h4>0  <small>/ 100</small>
                                            </h4>
                                        </div>
                                        <div class="fun-fact-icon" style="background-color: rgba(54, 189, 120, 0.07);"><i class="fa-solid fa-chart-simple" style="color: #8fc45a;"></i></div>
                                    </div>
                                    <div class="fact" data-fun-fact-color="#efa80f">
                                        <div class="fun-fact-text">
                                            <span>Speech to Text</span>
                                            <h4>0<small>/ 0</small>
                                            </h4>
                                        </div>
                                        <div class="fun-fact-icon" style="background-color: rgba(239, 168, 15, 0.07);"><i class="fas fa-headphones" style="color: #dde010;"></i></div>
                                    </div>
                                </div>

                                <!-- Dashboard Box -->
                                <div class="dashboard-box main-box-in-row">
                                    <div class="headline">
                                        <h3><i class="icon-feather-bar-chart-2"></i>Word used this month</h3>
                                    </div>
                                    <div class="content">
                                        <!-- Chart -->
                                        <div class="content">
                                            <!-- Chart -->
                                            <div class="chart">
                                                <div class="chartjs-size-monitor">
                                                    <div class="chartjs-size-monitor-expand" style="">
                                                        <div style=""></div>
                                                    </div>
                                                    <div class="chartjs-size-monitor-shrink">
                                                        <div></div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <canvas id="myChart"></canvas>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- Dashboard Box / End -->
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
    <script>
        const ctx = document.getElementById('myChart');

        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ["01 June", "02 June", "03 June", "04 June", "05 June", "06 June", "07 June", "08 June", "09 June", "10 June", "11 June", "12 June", "13 June", "14 June", "15 June", "16 June", "17 June", "18 June", "19 June", "20 June", "21 June", "22 June", "23 June", "24 June", "25 June", "26 June", "27 June", "28 June", "29 June", "30 June", "31 June"],
                // Information about the dataset
                datasets: [{
                    label: "Words Used",
                    backgroundColor: '#18469815',
                    borderColor: '#184698',
                    borderWidth: "3",
                    data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    pointRadius: 5,
                    pointHoverRadius: 5,
                    pointHitRadius: 10,
                    pointBackgroundColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointBorderWidth: "2",
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
    <%-- <script>
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
    </script>--%>

    <%--<script>
        $("#icon").on("click", function () {
            $(".dashboard-content-inner").toggleClass();

        });
    </script>--%>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript">

        $("#icon").on("click", function () {
            $(".sidebar").toggle();
            $(".col-lg-9").toggleClass('col-lg-12 full-width');

        });

    </script>



</body>
</html>


