<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AI Chat.aspx.cs" Inherits="Quick_AI_01.AI_Chat" %>

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
                        <li><a class="dropdown-item" href="Speech to Text.aspx"><i class="fa-solid fa-headphones"></i>Speech to Text</a></li>
                        <li><a class="dropdown-item" href=" AI Image.aspx"><i class="fa-solid fa-code"></i>AI Code</a></li>
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

                <main  style=" margin-top: 130px;">
                  
                    <div class="simplebar-content"  >
        <div class="dashboard-content-inner" >

            
            <!-- Dashboard Headline -->
           <div class="dashboard-headline">
                    <h3 class="d-flex align-items-center">
                        AI Chat                       
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                            <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0 / 10,000 </i>
                            <strong>Words Used</strong>
                        </div>
                    </h3>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs" class="dark">
                        <ul>
                            <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                            <li> AI Chat </li>
                        </ul>
                    </nav>
                </div>

            <div class="notification small-notification error">
                        You can not use the chat feature with your OpenAI model. Upgrade your membership plan to use this feature.  
            </div>
            <div class="messages-container margin-top-0">
                    <div class="messages-container-inner">
                        <!-- Message Content -->
                        <div class="message-content">
                            <div class="messages-headline">
                                <h4><div class="user-avatar margin-right-10">
                <img src="img/default_user%20(1).png"  style="    width: 98%; height: 40px;" />
                                        
                                    </div>
                                    AI Chat Bot</h4>
                                <div class="message-action">
                                    <a href="#" class="button ripple-effect btn-sm" id="export-chats" title="Export Conversation" data-tippy-placement="top" onclick=" downloadText()" style="    background-color: #0d6efd;">
                                       <i class="fa-solid fa-download"></i></a>

                                    <a href="#" class="button ripple-effect btn-sm red" id="delete-chats" data-tippy-placement="top" data-tippy="" data-original-title="Delete Conversation">
                                        <i class="fa-solid fa-trash-can"></i></a>
                                </div>
                            </div>

                            <!-- Message Content Inner -->
                            <div class="message-content-inner">
                                                            </div>
                            <!-- Message Content Inner / End -->

                            <!-- Reply Area -->
                            <form id="ai-chat-form">
                                <div class="message-reply"  >
                                    <input type="text" placeholder="Type your message here..." id="ai-chat-textarea">
                                    <button id="chat-send-button" type="submit" class="button ripple-effect" style="    background-color: #0d6efd;">Send</button>
                                </div>
                                <div class="form-error message-reply padding-top-10 padding-bottom-10"></div>
                            </form>

                        </div>
                        <!-- Message Content -->

                    </div>
                </div>
          <%-- <div class="container">
  <div class="row">
    <div class="col msg-window-container">
      <div class="card" id="msgWindow">
        <div class="card-header"><span class="card-title"><i class="bi bi-person-circle"></i><h4> AI Chat Bot</h4></span>
               
                                <div class="message-action" style="margin-top: -160px;">
                                    <a href="#" class="button ripple-effect btn-sm" id="export-chats" title="Export Conversation" data-tippy-placement="top" onclick="DownloadFile('Sample.pdf')" style="    background-color: #0d6efd;">
                                       <i class="fa-solid fa-download"></i></a>

                                    <a href="#" class="button ripple-effect btn-sm red" id="delete-chats" data-tippy-placement="top" data-tippy="" data-original-title="Delete Conversation">
                                        <i class="fa-solid fa-trash-can"></i></a>
                                </div>
        </div>
        <div class="card-body" id="msgs"></div>
        <div class="card-footer">
          <div class="input-group" id="msgForm" data-sender="me">
            <input class="form-control" type="text" placeholder="Type your message here..."/>
            <div class="input-group-append">
              <button class="btn btn-outline-secondary" type="button">Send</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>--%>
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
    $(function () {
        // Define some elements from the DOM and utility methods.
        let $form = $(".message-reply"),
            $newMsg = $form.find("input"),
            $sendBtn = $form.find("button"),
            $feed = $(".message-content-inner"),
            _wait = ms => new Promise((r, j) => setTimeout(r, ms)), // See [0]
            _secs = (a, b) => Math.floor(Math.random() * (b - a + 1)) + a;

        // Define our send method.
        var _send = data => {
            // Send data to a new .msg
            let $msg = $('<div class="msg"></div>'),
                { sender, typing } = data;
            if (sender !== "me") {
                $msg.addClass("to");
            } else {
                $msg.addClass("from");
            }
            $msg.text(data.msg);
            if (typing) $msg.addClass("typing");
            $msg.appendTo($feed);
            // If sending was successful, clear the text field.
            $newMsg.val("");
            // And simulate a reply from our agent.
            if (sender === "me") setTimeout(_agentReply, 1000);
            if (typing) return $msg; // ref to new DOM .msg
        };

        var _agentReply = () => {
            // After a few seconds, the agent starts to type a message.
            let waitAfew = _wait(_secs(3000, 5000)),
                showAgentTyping = async () => {
                    console.log("agent is typing...");
                    // Let the user know the agent is typing
                    let $agentMsg = _send({
                        msg: "Agent is typing...",
                        typing: true,
                        sender: false
                    });

                    // and in a few seconds show the typed message.
                    waitAfew.then(() => {
                        // @TODO: Simulate actual typing by removing the typing message when the agent isn't typing, and before the agent sends the typed message. Also allow typing to continue a number of times with breaks in between.
                        $agentMsg.text("Typing...");
                        $agentMsg.removeClass("typing");
                    });
                };
            waitAfew.then(showAgentTyping());
        };

        // Define event handlers: Hitting Enter or Send should send the form.
        $newMsg.on("keypress", function (e) {
            // @TODO: Allow [mod] + [enter] to expand field & insert a <BR>
            if (e.which === 13) {
                // Stop the prop
                e.stopPropagation();
                e.preventDefault();
                // Wrap the msg and send!
                let theEnvelope = {
                    msg: $newMsg.val(),
                    sender: "me"
                };

                return _send(theEnvelope);
            } else {
                // goggles
            }
        });
        $sendBtn.on("click", function (e) {
            // Stop the prop
            e.stopPropagation();
            e.preventDefault();
            // Wrap the msg and send!
            let theEnvelope = {
                msg: $newMsg.val(),
                sender: "me"
            };

            return _send(theEnvelope);
        });
    });
</script>
    <script>
        function downloadText() {
            var textToWrite = "This is the content of the text file.";
            var fileName = "Chats.txt";
            var fileType = "text/plain";

            var blob = new Blob([textToWrite], { type: fileType });

            // Create a temporary link element
            var a = document.createElement("a");
            a.href = URL.createObjectURL(blob);
            a.download = fileName;

            // Append the link to the document body and trigger the download
            document.body.appendChild(a);
            a.click();

            // Clean up
            document.body.removeChild(a);
        }
    </script>
   
</body>
</html>
