<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Student_Feedback.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Student Feedback - Register
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />

    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/paper-dashboard.min790f.css?v=2.0.1" rel="stylesheet" />
    <link href="assets/css/CustomStyle.css" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/demo/demo.css" rel="stylesheet" />

</head>
<body class="register-page">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent" style="border-bottom: none">
    <div class="container">
      <div class="navbar-wrapper">
        <%--<div class="navbar-toggle">
          <button type="button" class="navbar-toggler">
            <span class="navbar-toggler-bar bar1" style="background-color:#fff"></span>
            <span class="navbar-toggler-bar bar2" style=" background-color:#fff"></span>
            <span class="navbar-toggler-bar bar3" style=" background-color:#fff"></span>
          </button>
        </div>--%>
        <div class="pl-3">
            <a class="navbar-brand" href="Login.aspx" style="font-size:2em">Student Feedback</a>
        </div>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-bar navbar-kebab"></span>
        <span class="navbar-toggler-bar navbar-kebab"></span>
        <span class="navbar-toggler-bar navbar-kebab"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navigation">
        <ul class="navbar-nav">
          
          <li class="nav-item active">
            <a href="Register.aspx" class="nav-link" style="font-size:1.5em">
              <i class="nc-icon nc-book-bookmark" style="font-size:1.2em"></i> Register
            </a>
          </li>
          <li class="nav-item ">
            <a href="Login.aspx" class="nav-link" style="font-size:1.5em">
              <i class="nc-icon nc-tap-01" style="font-size:1.2em"></i> Login
            </a>
          </li>
         
        </ul>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->
    <div class="wrapper wrapper-full-page ">
        <div class="full-page register-page section-image" filter-color="black" data-image="../../assets/img/bg/jan-sendereks.jpg">
            <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
            <div class="content" style="padding-top:11vh">
                <div class="container">
                    <div class="col-lg-8 col-md-6 ml-auto mr-auto justify-content-center">
                        <form class="form1" runat="server">
                            <div class="card card-login ">
                                <div class="card-header ">
                                    <div class="card-header ">
                                        <h3 class="header text-center">Register</h3>
                                    </div>
                                </div>
                                <div class="card-body ">
                                    <div class="row">
                                        <div class="col-lg-5">
                                            <div class="form-group">
                                                <asp:DropDownList ID="Department_DropDownList" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Civil Engineering</asp:ListItem>
                                                    <asp:ListItem>Computer Engineering</asp:ListItem>
                                                    <asp:ListItem>Electronics Engineering</asp:ListItem>
                                                    <asp:ListItem>E & TC Engineering</asp:ListItem>
                                                    <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <asp:DropDownList ID="Year_DropDownList" runat="server" CssClass="form-control">
                                                    <asp:ListItem>First Year</asp:ListItem>
                                                    <asp:ListItem>Second Year</asp:ListItem>
                                                    <asp:ListItem>Third Year</asp:ListItem>
                                                    <asp:ListItem>Fourth Year</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <asp:DropDownList ID="Division_DropDownList" runat="server" CssClass="form-control">
                                                    <asp:ListItem>A</asp:ListItem>
                                                    <asp:ListItem>B</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <asp:DropDownList ID="Gender_DropDownList" runat="server" CssClass="form-control">
                                                    <asp:ListItem>Mr.</asp:ListItem>
                                                    <asp:ListItem>Miss.</asp:ListItem>
                                                    <asp:ListItem>Mrs.</asp:ListItem>
                                                    <asp:ListItem>Others</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-lg-5">
                                            <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="nc-icon nc-single-02"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="FirstName_TextBox" class="form-control" pattern="[a-zA-Z][a-zA-Z ]{1,}" required="true" placeholder="First Name" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                            </div>
                                        <div class="col-lg-5">
                                            <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="nc-icon nc-circle-10"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="LastName_TextBox" class="form-control" pattern="[a-zA-Z][a-zA-Z ]{1,}" required="true" placeholder="Last Name" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                            </div>
                                        </div>
                                    <div class="row">
                                        <div class="col-lg-7 ">
                                            <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="nc-icon nc-email-85"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="Email_TextBox" class="form-control" placeholder="Email" required="true" runat="server" TextMode="Email"></asp:TextBox>
                                    </div>
                                        </div>

                                        <div class="col-lg-5 ">
                                            <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="nc-icon nc-mobile"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="Mobile_TextBox" class="form-control" placeholder="Mobile No." required="true" pattern="[0-9]{10}" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                        </div>
                                        </div>

                                    <div class="row">
                                        <div class="col-lg-6 ">
                                            <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="nc-icon nc-lock-circle-open"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="Password_TextBox" class="form-control" placeholder="Password" required="true" pattern="^[a-zA-Z]\w{3,10}" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                        </div>

                                        <div class="col-lg-6 ">
                                            <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="nc-icon nc-key-25"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="ConfirmPassword_TextBox" class="form-control" placeholder="Re-enter Password" required="true" pattern="^[a-zA-Z]\w{3,10}" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                        </div>
                                        </div>
                                    <br />
                                </div>
                                <div class="card-footer ">
                                    <div class="col text-center">
                                        <%--<a href="#pablo" class="btn btn-primary btn-round mb-3 pl-5 pr-5">Register</a>--%>
                                        <asp:Button ID="Register_Button" class="btn btn-primary btn-round mb-3 pl-5 pr-5" runat="server" Text="Register" OnClick="Register_Button_Click" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <footer class="footer footer-black  footer-white ">
                <div class="container-fluid">
                    <div class="row">
                        <nav class="footer-nav">
                            <ul>
                                <li>
                                    <a href="http://pushkar-asapure.ml/" target="_blank">Pushkar A.</a>
                                </li>
                                <li>
                                    <a href="https://github.com/typhoon99/Student_Feedback/" target="_blank">Github</a>
                                    <%--</li>
                <li>
                  <a href="https://www.creative-tim.com/license" target="_blank">Licenses</a>
                </li>--%>
                            </ul>
                        </nav>
                        <div class="credits ml-auto">
                            <span class="copyright">©
                <script>
                    document.write(new Date().getFullYear())
                </script>
                                , made with <i class="fa fa-heart heart"></i>by Pushkar Asapure
                            </span>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="assets/js/core/jquery.min.js"></script>
    <script src="assets/js/core/popper.min.js"></script>
    <script src="assets/js/core/bootstrap.min.js"></script>
    <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/js/plugins/moment.min.js"></script>
    <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
    <script src="assets/js/plugins/bootstrap-switch.js"></script>
    <!--  Plugin for Sweet Alert -->
    <script src="assets/js/plugins/sweetalert2.min.js"></script>
    <!-- Forms Validations Plugin -->
    <script src="assets/js/plugins/jquery.validate.min.js"></script>
    <!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
    <script src="assets/js/plugins/jquery.bootstrap-wizard.js"></script>
    <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
    <script src="assets/js/plugins/bootstrap-selectpicker.js"></script>
    <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
    <script src="assets/js/plugins/bootstrap-datetimepicker.js"></script>
    <!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
    <script src="assets/js/plugins/jquery.dataTables.min.js"></script>
    <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
    <script src="assets/js/plugins/bootstrap-tagsinput.js"></script>
    <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
    <script src="assets/js/plugins/jasny-bootstrap.min.js"></script>
    <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
    <script src="assets/js/plugins/fullcalendar.min.js"></script>
    <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
    <script src="assets/js/plugins/jquery-jvectormap.js"></script>
    <!--  Plugin for the Bootstrap Table -->
    <script src="assets/js/plugins/nouislider.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="../../../../buttons.github.io/buttons.js"></script>
    <!-- Chart JS -->
    <script src="assets/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="assets/js/paper-dashboard.min790f.js?v=2.0.1" type="text/javascript"></script>
    <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
    <script src="assets/demo/demo.js"></script>
    <!-- Sharrre libray -->
    <script src="assets/demo/jquery.sharrre.js"></script>
    <script>
        $(document).ready(function () {


            $('#facebook').sharrre({
                share: {
                    facebook: true
                },
                enableHover: false,
                enableTracking: false,
                enableCounter: false,
                click: function (api, options) {
                    api.simulateClick();
                    api.openPopup('facebook');
                },
                template: '<i class="fab fa-facebook-f"></i> Facebook',
                url: 'https://demos.creative-tim.com/paper-dashboard-pro/examples/dashboard.html'
            });

            $('#google').sharrre({
                share: {
                    googlePlus: true
                },
                enableCounter: false,
                enableHover: false,
                enableTracking: true,
                click: function (api, options) {
                    api.simulateClick();
                    api.openPopup('googlePlus');
                },
                template: '<i class="fab fa-google-plus"></i> Google',
                url: 'https://demos.creative-tim.com/paper-dashboard-pro/examples/dashboard.html'
            });

            $('#twitter').sharrre({
                share: {
                    twitter: true
                },
                enableHover: false,
                enableTracking: false,
                enableCounter: false,
                buttons: {
                    twitter: {
                        via: 'CreativeTim'
                    }
                },
                click: function (api, options) {
                    api.simulateClick();
                    api.openPopup('twitter');
                },
                template: '<i class="fab fa-twitter"></i> Twitter',
                url: 'https://demos.creative-tim.com/paper-dashboard-pro/examples/dashboard.html'
            });


            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-46172202-1']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();

            // Facebook Pixel Code Don't Delete
            ! function (f, b, e, v, n, t, s) {
                if (f.fbq) return;
                n = f.fbq = function () {
                    n.callMethod ?
                        n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq) f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window,
                document, 'script', '../../../../connect.facebook.net/en_US/fbevents.js');

            try {
                fbq('init', '111649226022273');
                fbq('track', "PageView");

            } catch (err) {
                console.log('Facebook Track Error:', err);
            }

        });
    </script>
    <noscript>
    <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1" />
  </noscript>
    <script>
        $(document).ready(function () {

            $sidebar = $('.sidebar');
            $sidebar_img_container = $sidebar.find('.sidebar-background');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');
            sidebar_mini_active = true;

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

            // if( window_width > 767 && fixed_plugin_open == 'Dashboard' ){
            //     if($('.fixed-plugin .dropdown').hasClass('show-dropdown')){
            //         $('.fixed-plugin .dropdown').addClass('show');
            //     }
            //
            // }

            $('.fixed-plugin a').click(function (event) {
                // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                if ($(this).hasClass('switch-trigger')) {
                    if (event.stopPropagation) {
                        event.stopPropagation();
                    } else if (window.event) {
                        window.event.cancelBubble = true;
                    }
                }
            });

            $('.fixed-plugin .active-color span').click(function () {
                $full_page_background = $('.full-page-background');

                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-active-color', new_color);
                }

                if ($full_page.length != 0) {
                    $full_page.attr('data-active-color', new_color);
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.attr('data-active-color', new_color);
                }
            });

            $('.fixed-plugin .background-color span').click(function () {
                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-color', new_color);
                }

                if ($full_page.length != 0) {
                    $full_page.attr('filter-color', new_color);
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.attr('data-color', new_color);
                }
            });

            $('.fixed-plugin .img-holder').click(function () {
                $full_page_background = $('.full-page-background');

                $(this).parent('li').siblings().removeClass('active');
                $(this).parent('li').addClass('active');


                var new_image = $(this).find("img").attr('src');

                if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    $sidebar_img_container.fadeOut('fast', function () {
                        $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                        $sidebar_img_container.fadeIn('fast');
                    });
                }

                if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $full_page_background.fadeOut('fast', function () {
                        $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                        $full_page_background.fadeIn('fast');
                    });
                }

                if ($('.switch-sidebar-image input:checked').length == 0) {
                    var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                }
            });

            $('.switch-sidebar-image input').on("switchChange.bootstrapSwitch", function () {
                $full_page_background = $('.full-page-background');

                $input = $(this);

                if ($input.is(':checked')) {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar_img_container.fadeIn('fast');
                        $sidebar.attr('data-image', '#');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page_background.fadeIn('fast');
                        $full_page.attr('data-image', '#');
                    }

                    background_image = true;
                } else {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar.removeAttr('data-image');
                        $sidebar_img_container.fadeOut('fast');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page.removeAttr('data-image', '#');
                        $full_page_background.fadeOut('fast');
                    }

                    background_image = false;
                }
            });


            $('.switch-mini input').on("switchChange.bootstrapSwitch", function () {
                $body = $('body');

                $input = $(this);

                if (paperDashboard.misc.sidebar_mini_active == true) {
                    $('body').removeClass('sidebar-mini');
                    paperDashboard.misc.sidebar_mini_active = false;

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                } else {

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                    setTimeout(function () {
                        $('body').addClass('sidebar-mini');

                        paperDashboard.misc.sidebar_mini_active = true;
                    }, 300);
                }

                // we simulate the window Resize so the charts will get updated in realtime.
                var simulateWindowResize = setInterval(function () {
                    window.dispatchEvent(new Event('resize'));
                }, 180);

                // we stop the simulation of Window Resize after the animations are completed
                setTimeout(function () {
                    clearInterval(simulateWindowResize);
                }, 1000);

            });

        });
    </script>
    <script>
        $(document).ready(function () {
            demo.checkFullPageBackgroundImage();
        });
    </script>

</body>
</html>
