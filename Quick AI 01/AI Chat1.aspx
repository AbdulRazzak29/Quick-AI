<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="AI Chat1.aspx.cs" Inherits="Quick_AI_01.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-9">
                <div class="main-content">

                    <main style="margin-top: 130px;">

                        <div class="simplebar-content">
                            <div class="dashboard-content-inner">


                                <!-- Dashboard Headline -->
                                <div class="dashboard-headline">
                                    <div>
                                    <h3 class="d-flex align-items-center">AI Chat                      
                        <div class="word-used-wrapper margin-left-10" style="background: #B2BEB5;">
                            <i class="fa-solid fa-chart-simple"></i>
                            <i id="quick-words-left">0 / 10,000 </i>
                            <strong>Words Used</strong>
                        </div></h3> 
                                        
                                    
                                    <!-- Breadcrumbs -->
                                    <nav id="breadcrumbs" class="dark">
                                        <ul>
                                            <li><a href="homepageaspx.aspx">Home</a></li>
                                            <li>AI Chat </li>
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
                                                <div class="user-avatar margin-right-10">
                                                    <img src="img/default_user%20(1).png" style="width: 98%; height: 40px;" />

                                                </div>
                                                <h4>AI Chat Bot</h4>
                                                <div class="message-action">
                                                    <a href="#" class="button ripple-effect btn-sm" id="export-chats" title="Export Conversation" data-tippy-placement="top" onclick=" downloadText()" style="background-color: #0d6efd;">
                                                        <i class="fa-solid fa-download"></i></a>

                                                    <a href="#" class="button ripple-effect btn-sm red" id="delete-chats" data-tippy-placement="top" data-tippy="" data-original-title="Delete Conversation">
                                                        <i class="fa-solid fa-trash-can"></i></a>
                                                </div>
                                            </div>

                                            <!-- Message Content Inner -->
                                            <div class="card-body" style="top: 3%;">
                                                <div id="chatbox">

                                                    <div id="div1" runat="server" class="chatMsgs">
                                                    </div>


                                                </div>
                                                <!-- Message Content Inner / End -->

                                                <!-- Reply Area -->
                                                <form id="ai-chat-form">
                                                    <div class="message-reply">
                                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                                                    </div>
                                                    <div class="form-error message-reply padding-top-10 padding-bottom-10"></div>
                                                </form>

                                            </div>
                                            <!-- Message Content -->

                                        </div>
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
