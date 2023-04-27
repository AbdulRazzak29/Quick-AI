<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="Quick_AI_01.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <div id="logo">
                        <a href="https://localhost:44308/Home.aspx">
                            <img src="img/hhh.png" alt="Hype" />
                        </a>
                    </div>

                    <a href="javascript:void(0);" class="header-icon">
                        <i class="fa fa-bars"></i>
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
                                <a href="#" title="rajaraja">
                                    <div class="user-avatar status-online">
                                        <img src="img/default_user.png" style="height: 42px;" />
                                    </div>
                                </a>
                            </div>
                            <!-- Dropdown -->
                            <div class="header-notifications-dropdown">
                                <ul class="user-menu-small-nav">
                                    <li><a href="https://localhost:44308/DashBoard.aspx"><i class="icon-feather-grid"></i>Dashboard</a></li>
                                    <li><a href="3"><i class="icon-feather-layers"></i>Templates</a></li>
                                    <li><a href="#"><i class="icon-feather-image"></i>AI Images</a></li>
                                    <li><a href="#"><i class="icon-feather-message-circle"></i>AI Chat</a></li>
                                    <li><a href="#"><i class="icon-feather-headphones"></i>Speech to Text</a></li>
                                    <li><a href="#"><i class="icon-feather-code"></i>AI Code</a></li>
                                    <li><a href="#"><i class="icon-feather-file-text"></i>All Documents</a></li>
                                    <li><a href="#"><i class="icon-feather-gift"></i>Membership</a></li>
                                    <li><a href="#"><i class="icon-feather-settings"></i>Account Setting</a></li>
                                    <li><a href="#"><i class="icon-feather-log-out"></i>Logout</a></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                    <!-- User Menu / End -->

                    <div class="header-widget">
                        <div class="btn-group bootstrap-select language-switcher">
                            <button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" title="English">
                                <span class="filter-option pull-left" id="selected_lang">en</span>&nbsp;
                                   
                                <span class="caret"></span>
                            </button>
                            <div class="dropdown-menu scrollable-menu open">
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
    <div class="simplebar-content" style="padding-bottom: 15px; margin-right: -15px;">
        <div class="dashboard-nav-container">

            <!-- Responsive Navigation Trigger -->
            <a href="#" class="dashboard-responsive-nav-trigger">
					<span class="hamburger hamburger--collapse">
						<span class="hamburger-box">
							<span class="hamburger-inner"></span>
						</span>
					</span>
                <span class="trigger-title">Dashboard Navigation</span>
            </a>
            <!-- Navigation -->
            <div class="dashboard-nav">
                <div class="dashboard-nav-inner">
                    <ul data-submenu-title="My Account">
                        <li class="active"><a href="#"><i class="icon-feather-grid"></i> Dashboard</a></li>
                        <li class="active-submenu">
                            <a href="#"><i class="icon-feather-file-text"></i> My Documents</a>
                            <ul>
                                <li class=""><a href="#">All Documents</a></li>
                                <li class=""><a href="#">All AI Images</a></li>
                            </ul>
                        </li>
                    </ul>

                    <ul data-submenu-title="Organize and Manage">
                        <li class="">
                            <a href="#"><i class="icon-feather-layers"></i> Templates</a></li>

                                                <li class=""><a href="#"><i class="icon-feather-image"></i> AI Images</a></li>
                                                    <li class=""><a href="#"><i class="icon-feather-message-circle"></i> AI Chat</a></li>
                                                    <li class=""><a href="#"><i class="icon-feather-headphones"></i> Speech to Text</a></li>
                                                    <li class=""><a href="#"><i class="icon-feather-code"></i> AI Code</a></li>
                                            </ul>

                    <ul data-submenu-title="Account">

                                                <li class="">
                            <a href="#"><i class="icon-feather-share-2"></i> Affiliate Program</a>
                            <ul>
                                <li class=""><a href="#">Affiliate Program</a></li>
                                <li class=""><a href="#">Withdrawals</a></li>
                            </ul>
                        </li>
                                                <li class=""><a href="#"><i class="icon-feather-gift"></i> Membership</a></li>
                        <li class=""><a href="#"><i class="icon-feather-file-text"></i> Transactions</a></li>
                        <li class=""><a href="#"><i class="icon-feather-log-out"></i> Account Setting</a></li>
                        <li><a href="#"><i class="icon-material-outline-power-settings-new"></i> Logout</a>
                        </li>
                    </ul>

                </div>
            </div>
            <!-- Navigation / End -->
        </div>
    </div>
  <script>
    $(document).ready(function () {
        $("#header-container").removeClass('transparent-header').addClass('dashboard-header sticky');
        $('.header-icon').removeClass('d-none');
    });

    /* THIS PORTION OF CODE IS ONLY EXECUTED WHEN THE USER THE LANGUAGE(CLIENT-SIDE) */
    $(function () {
        $('.language-switcher').on('click', '.dropdown-menu li', function (e) {
            e.preventDefault();
            var lang = $(this).data('lang');
            if (lang != null) {
                var res = lang.substr(0, 2);
                $('#selected_lang').html(res);
                $.cookie('Quick_lang', lang, {path: '/'});
                location.reload();
            }
        });
    });
</script>

    <script>
        var session_uname = "rajaraja";
        var session_uid = "21";
        var session_img = "default_user.png";
        // Language Var
        var LANG_ERROR_TRY_AGAIN = "Error: Please try again.";
        var LANG_LOGGED_IN_SUCCESS = "Logged in successfully. Redirecting...";
        var LANG_ERROR = "Error";
        var LANG_CANCEL = "Cancel";
        var LANG_DELETED = "Deleted";
        var LANG_ARE_YOU_SURE = "Are you sure?";
        var LANG_YOU_WANT_DELETE = "You want to delete this job";
        var LANG_YES_DELETE = "Yes, delete it";
        var LANG_PROJECT_CLOSED = "Project has been closed";
        var LANG_PROJECT_DELETED = "Project has been deleted";
        var LANG_RESUME_DELETED = "Resume Deleted.";
        var LANG_EXPERIENCE_DELETED = "Experience Deleted.";
        var LANG_COMPANY_DELETED = "Company Deleted.";
        var LANG_SHOW = "Show";
        var LANG_HIDE = "Hide";
        var LANG_HIDDEN = "Hidden";
        var LANG_TYPE_A_MESSAGE = "Type a message";
        var LANG_ADD_FILES_TEXT = "Add files to the upload queue and click the start button.";
        var LANG_ENABLE_CHAT_YOURSELF = "Could not able to chat yourself.";
        var LANG_JUST_NOW = "Just now";
        var LANG_PREVIEW = "Preview";
        var LANG_SEND = "Send";
        var LANG_FILENAME = "Filename";
        var LANG_STATUS = "Status";
        var LANG_SIZE = "Size";
        var LANG_DRAG_FILES_HERE = "Drag files here";
        var LANG_STOP_UPLOAD = "Stop Upload";
        var LANG_ADD_FILES = "Add files";
        var LANG_CHATS = "Chats";
        var LANG_NO_MSG_FOUND = "No message found";
        var LANG_ONLINE = "Online";
        var LANG_OFFLINE = "Offline";
        var LANG_TYPING = "Typing...";
        var LANG_GOT_MESSAGE = "You got a message";
        var LANG_COPIED_SUCCESSFULLY = "Copied successfully.";
        var DEVELOPER_CREDIT = 0;
        var LIVE_CHAT = 0;

        if ($("body").hasClass("rtl")) {
            var rtl = true;
        } else {
            var rtl = false;
        }
</script>


    <script>
        Chart.defaults.global.defaultFontFamily = "Nunito";
        Chart.defaults.global.defaultFontColor = '#888';
        Chart.defaults.global.defaultFontSize = '14';

        var ctx = document.getElementById('chart').getContext('2d');

        var chart = new Chart(ctx, {
            type: 'line',

            // The data for our dataset
            data: {
                labels: ["01 Apr", "02 Apr", "03 Apr", "04 Apr", "05 Apr", "06 Apr", "07 Apr", "08 Apr", "09 Apr", "10 Apr", "11 Apr", "12 Apr", "13 Apr", "14 Apr", "15 Apr", "16 Apr", "17 Apr", "18 Apr", "19 Apr", "20 Apr", "21 Apr", "22 Apr", "23 Apr", "24 Apr", "25 Apr", "26 Apr", "27 Apr", "28 Apr", "29 Apr", "30 Apr"],
                // Information about the dataset
                datasets: [{
                    label: "Words Used",
                    backgroundColor: '#18469815',
                    borderColor: '#184698',
                    borderWidth: "3",
                    data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    pointRadius: 5,
                    pointHoverRadius: 5,
                    pointHitRadius: 10,
                    pointBackgroundColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointBorderWidth: "2",
                }]
            },

            // Configuration options
            options: {
                layout: {
                    padding: 10,
                },
                legend: { display: false },
                title: { display: false },
                scales: {
                    yAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        gridLines: {
                            borderDash: [6, 10],
                            color: "#d8d8d8",
                            lineWidth: 1,
                        },
                        ticks: {
                            beginAtZero: true
                        }
                    }],
                    xAxes: [{
                        scaleLabel: { display: false },
                        gridLines: { display: false },
                    }],
                },
                tooltips: {
                    backgroundColor: '#333',
                    titleFontSize: 13,
                    titleFontColor: '#fff',
                    bodyFontColor: '#fff',
                    bodyFontSize: 13,
                    displayColors: false,
                    xPadding: 10,
                    yPadding: 10,
                    intersect: false
                }
            },
        });

</script>
    <div id="backtotop"><a href="#"></a></div>
              
</asp:Content>
