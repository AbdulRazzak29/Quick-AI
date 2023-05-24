<%@ Page Title="" Language="C#" MasterPageFile="~/AI.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Quick_AI_01.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* @author Tim himself */

        .ziehharmonika h3 {
            background: #172e8b;
            color: #ffffff;
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
                background: #364bee;
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

        .title {
            background-color: #f8f8f8;
            position: relative;
            padding: 70px 0;
            margin-bottom: 65px;
            top: 20px;
        }
    </style>
    <div class="title ">
        <div class="container margin-bottom-10">
            <div class="row">
                <div class="col-md-12">
                    <h3>Frequently Asked Questions</h3>
                    <h5>Got Questions? We've Got Answers!</h5>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs" class="dark">
                        <ul>
                            <li><a href="https://localhost:44308/homepageaspx.aspx">Home</a></li>
                            <li>FAQ</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="container margin-bottom-10">

        <div class="ziehharmonika">
            <h3>Lorem ipsum dolor sit amet</h3>
            <div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vestibulum rhoncus libero ut condimentum. Etiam pretium diam odio, vitae varius dolor tristique quis. Fusce sodales dolor commodo iaculis vehicula. Maecenas laoreet leo massa, ut sagittis nulla pellentesque vel. In hac habitasse platea dictumst. In rhoncus vehicula tristique. Fusce auctor iaculis ornare. Duis condimentum est non massa lobortis, quis pellentesque nisi pulvinar. </p>
            </div>
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
</asp:Content>
