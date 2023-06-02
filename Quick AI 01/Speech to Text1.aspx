<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="Speech to Text1.aspx.cs" Inherits="Quick_AI_01.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
