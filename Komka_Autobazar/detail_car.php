<!doctype html>
<html class="no-js" lang="en">

<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet">

    <!-- title of site -->
    <title>Komex</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!--linear icon css-->
    <link rel="stylesheet" href="assets/css/linearicons.css">

    <!--flaticon.css-->
    <link rel="stylesheet" href="assets/css/flaticon.css">

    <!--animate.css-->
    <link rel="stylesheet" href="assets/css/animate.css">

    <!--owl.carousel.css-->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="assets/css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="assets/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="assets/css/responsive.css">

    <style>
        body {
            background-color: #f2f2f2;
        }

        img {
            width: 100%;
            height: 100%;
            border-radius: 8px;
        }

        .detail_auta {
            margin-top: 8em;
        }

        .pozadie {

        }
    </style>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!--welcome-hero start -->
<section id="home">

    <!-- top-area Start -->
    <div class="top-area">
        <div class="header-area " style="background-color: black">
            <!-- Start Navigation -->
            <nav class="navbar navbar-default bootsnav navbar-sticky navbar-scrollspy" data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

                <div class="container">

                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.php">komex<span></span></a>
                    </div><!--/.navbar-header-->
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                            <li><a href="index.php">domov</a></li>
                            <li><a href="index.php">sluzby</a></li>
                            <li><a href="index.php">jazdene auta</a></li>
                            <li><a href="index.php">nove auta</a></li>
                            <li><a href="index.php">znacky</a></li>
                            <li><a href="rezervacie.php">rezervacie</a></li
                        </ul><!--/.nav -->
                    </div><!-- /.navbar-collapse -->
                </div><!--/.container-->
            </nav><!--/nav-->
            <!-- End Navigation -->
        </div><!--/.header-area-->
        <div class="clearfix"></div>
    </div><!-- /.top-area-->
    <!-- top-area End -->

    <div class="container detail_auta">
        <?php include_once 'assets/zobraz_detail_car.php'; ?>
    </div>

    <div class="container mt-5 " style="margin-top: 2em; margin-bottom: 5em;">
        <h2>Reservation Form</h2>
        <?php include('assets/rezervacia_car.php'); ?>
    </div>

    <!--contact start-->
    <footer id="contact" class="contact">
        <div class="container">
            <div class="footer-top">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <!-- Vložte obsah z pôvodného kódu pre pätičku -->
                    </div>
                    <div class="col-md-3 col-xs-12">
                        <!-- Vložte obsah z pôvodného kódu pre pätičku -->
                    </div>
                    <div class="col-md-offset-1 col-md-3 col-sm-6">
                        <!-- Vložte obsah z pôvodného kódu pre pätičku -->
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="row">
                    <div class="col-sm-6">
                        <!-- Vložte obsah z pôvodného kódu pre pätičku -->
                    </div>
                    <div class="col-sm-6">
                        <!-- Vložte obsah z pôvodného kódu pre pätičku -->
                    </div>
                </div>
            </div><!--/.footer-copyright-->
        </div>
    </footer><!--/.contact-->
    <!--contact end-->

    <!-- Include all js compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/jquery.js"></script>
    <!--modernizr.min.js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
    <!--bootstrap.min.js-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- bootsnav js -->
    <script src="assets/js/bootsnav.js"></script>
    <!--owl.carousel.js-->
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <!--Custom JS-->
    <script src="assets/js/custom.js"></script>
</body>

</html>
