<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="AI Image1.aspx.cs" Inherits="Quick_AI_01.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
