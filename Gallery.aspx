<%@ Page Title="Photo gallary, Gulbarga" Language="C#" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<!DOCTYPE html>

<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.ico">
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <link href="fonts/fonts_googleapis.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/jquery.bxslider.css" type="text/css" media="screen" />
    <link href="css/jquery.fancybox.css" rel="stylesheet">
    <link href="css/jquery.selectbox.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/mobile.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/settings.css" media="screen" />
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/ts.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>

    <header data-spy="affix" data-offset-top="1" class="clearfix">
        <section class="toolbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 left_bar">
                    </div>
                    <div class="col-lg-12 ">
                        <ul class="right-none pull-right company_info">
                            <li><a href="tel:18005670123"><i class="fa fa-phone"></i><font size="2">+(91)-97408 84999, 08472-220282, 220113</font></a></li>
                            <li class="address"><a href="Contact"><i class="fa fa-map-marker"></i><font size="2"> 126/1, Humnabad Ring Road, Opp KMF Milk Dairy Gulbarga - 585104</font></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="toolbar_shadow"></div>
        </section>
        <div class="bottom-header">
            <div class="container">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="container-fluid xs-padding-left-15 xs-padding-right-15 sm-padding-none">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                         <div class="col-lg-5">
                             <div class="col-lg-9">
                  <div class="logo-footer">  <img src="images/sna_transCopy.png" /></div></div>
                              <div class="logo-footer">  <a href="#">
                    <h1>Sri Nisty</h1>
              <span> Automotives </span></a></div>
                    </div>
                      
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a class="navbar-brand" href="Home"><img src="images/logo.png"></a> </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav pull-right">
                                <li class="active"><a href="Home">Home</a></li>
                                <li><a href="About_Us">About Us </a>

                                </li>
                               <li class="dropdown"><a  href="Products" class="" >Products <b class="dropdown-toggle fa fa-angle-down" data-toggle="dropdown"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="Trucks">Trucks</a></li>

                                        <li><a href="Buses">Buses</a>

                                        </li>

                                    </ul>
                                </li>
                                <li><a href="Services">Services</a></li>

                                <%--<li ><a href="#" >Clientele</a></li>--%>

                               <li ><a href="Gallery">Media Gallery</a></li>
                            <li><a href="Careers">Careers</a></li>
                            <li><a href="Contact">Contact</a></li>
                              
                            </ul>
                        
                        </div>
                        <!-- /.navbar-collapse -->

                        <!-- **************here you can add any thing jst below sml logo*************-->

                    </div>
                    <!-- /.container-fluid -->
                </nav>
            </div>
            <div class="header_shadow"></div>
        </div>
    </header>
</head>
<!--Header End-->
<section id="secondary-banner" class="dynamic-image-10">
    <!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 ">
                <ul class="breadcrumb">
                    <li><a href="Home">Home</a></li>
                    <li><a href="Gallery">Gallery</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!--secondary-banner ends-->
<div class="message-shadow"></div>
<div class="clearfix"></div>
<section class="content">
    <div class="container">
        <div class="inner-page portfolio-container row">
            <div class="list_faq clearfix col-lg-12 margin-bottom-50">
                <h5 class="padding-vertical-10 padding-horizontal-15">Sort Gallery By:</h5>
                <ul >
                    <li class="active gradient_button"><a href="#" data-filter="*" class="current filter" >All</a></li>
                    <li class="gradient_button"><a href="#" class="filter" data-filter=".convertible" >Photos </a></li>
                    <li class="gradient_button"><a href="#" class="filter" data-filter=".coupe" >Videos</a></li>
                </ul>
            </div>

            <div class="portfolioContainer portfolio_4">
                <div class="col-md-3  coupe * mix margin-bottom-50">
                    <div class="box clearfix">
                        <video controls width="280" height="150">
                            <source src="My_images/SML ISUZU Limited.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                        </video>


                        <div class="padding-top-25 padding-bottom-10">
                            <h2>SML ISUZU Video</h2>
                            <span></span>
                        </div>

                    </div>
                </div>
                <div class="col-md-3 coupe * mix margin-bottom-50">
                    <div class="box clearfix">
                        <video width="270" height="150" controls>
                            <source src="My_images/truck-design.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Your browser does not support the video tag.
                        </video>
                        <div class="padding-top-25 padding-bottom-10">
                            <h2>Truck Body length Video</h2>
                            <span></span>
                        </div>

                    </div>
                </div>
                
                 <div class="col-md-3 convertible mix margin-bottom-50">
                    <div class="box clearfix"> <a class="fancybox" href="images/Gallery/20151118_155055.jpg"><img class="image" src="images/Gallery/20151118_155055.jpg" alt="" /> </a>
                        <div class="padding-top-25 padding-bottom-10">
                             <h2>SML ISUZU Team</h2>
                            <span></span> </div>
                       
                    </div>
                </div>
                <div class="col-md-3 convertible mix margin-bottom-50">
                    <div class="box clearfix"> <a class="fancybox" href="images/Gallery/IMG-20151118-WA0016.jpg"><img class="image" src="images/Gallery/IMG-20151118-WA0016.jpg" alt="" /> </a>
                        <div class="padding-top-25 padding-bottom-10">
                             <h2>SML Client</h2>
                            <span></span> </div>
                       
                    </div>
                </div>
                <div class="col-md-3 convertible mix margin-bottom-50">
                    <div class="box clearfix"> <a class="fancybox" href="images/Gallery/IMG_20160502_191348444.jpg"><img class="image" src="images/Gallery/IMG_20160502_191348444.jpg" alt="" /> </a>
                        <div class="padding-top-25 padding-bottom-10">
                             <h2>Our Staff</h2>
                            <span></span> </div>
                       
                    </div>
                </div>
                
                
                 <div class="col-md-3 convertible mix margin-bottom-50">
                    <div class="box clearfix"> <a class="fancybox" href="images/Gallery/IMG_20160703_145214172.jpg"><img class="image" src="images/Gallery/IMG_20160703_145214172.jpg" alt="" /> </a>
                        <div class="padding-top-25 padding-bottom-10">
                            <h2>SML School Buses</h2>
                            <span></span> </div>
                        
                    </div>
                </div>
             
            </div>
            <div class="clearfix"></div>

        </div>
    </div>
    <!--container ends-->
</section>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-3 col-sm-6 col-xs-12">
                <h4>Contact us</h4>
                <div class="footer-contact">
                    <ul>
                        <li><strong><i class="fa fa-phone"><span>&nbsp;</span> </i>Phone:<span>&nbsp</span></strong><span>+(91)-97408 84999, 08472-220282, 220113</span></li>
                        <li><strong><i class="fa fa-map-marker"><span>&nbsp;</span> </i>Address:<span>&nbsp</span></strong><span>Sri Nisty Automotives</span>
                            126/1, Humnabad Ring Road,
                            Opposite KMF Milk Dairy
                            Gulbarga - 585104</li>
                        <li><strong><i class="fa fa-envelope-o"><span>&nbsp;</span> </i>Email:<span>&nbsp</span></strong><span>sales@srinistyauto.in</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="clearfix"></div>
<section class="copyright-wrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="logo-footer margin-bottom-40 md-margin-bottom-40 sm-margin-bottom-10 xs-margin-bottom-20">
                    <a href="#">
                        <h1>Sri Nisty</h1>
                        <span>Automotives</span></a>
                </div>
                <p><a href="http://www.Mindssolvit.com" target="_blank">Powered by Minds Solvit Pvt Ltd ™</a></p>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">

                <ul class="f-nav">
                    <li><a href="Home">Home</a></li>
                    <li><a href="About_Us">About Us</a></li>
                    <li><a href="products">Products</a></li>
                    <li><a href="Services">Services</a></li>
                    <li><a href="Contact">Location</a></li>
                   <li><a href="Gallery">Photo Gallery</a></li>
                <li><a href="Careers">Careers</a></li>
                <li><a href="Contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</section>
<div class="back_to_top">
    <img src="images/arrow-up.png" alt="scroll up" />
</div>
<!-- Bootstrap core JavaScript -->
<script src="js/retina.js"></script>
<script type="text/javascript" src="js/jquery.parallax.js"></script>
<script type="text/javascript" src="js/jquery.inview.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script src="js/modernizr.custom.js"></script>
<script defer src="js/jquery.flexslider.js"></script>
<script src="js/jquery.bxslider.js" type="text/javascript"></script>
<script src="js/jquery.selectbox-0.2.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/jquery.easing.js"></script>
<script src="js/jquery.mixitup.min.js" type="text/javascript"></script>

</html>
<script type="text/javascript">
    $(document).bind("contextmenu", function (e) {
        e.preventDefault();
    });
    $(document).keydown(function (e) {
        if (e.which === 123) {
            return false;
        }
        else if(event.ctrlKey && event.shiftKey && event.keyCode==73){        
            return false;  //Prevent from ctrl+shift+i
        }
    });

    
</script>
