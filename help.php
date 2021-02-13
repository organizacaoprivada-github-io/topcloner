<?php
session_start();
include('public.inc.php');
$db = public_db_connect();
?>
    <!DOCTYPE HTML>
    <!--
        Telephasic 1.1 by HTML5 UP
        html5up.net | @n33co
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
    -->
<html>
    <head>
        <title>Sitemakin Help</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta name="description" content=""/>
        <meta name="keywords" content=""/>

        <link rel="stylesheet" href="admin-blogify/css/style-everywhere.css"/>
        <!--[if lte IE 8]>
        <script src="admin-blogify/css/ie/html5shiv.js"></script><![endif]-->
        <script src="admin-blogify/js/jquery.min.js"></script>
        <script src="admin-blogify/js/jquery.dropotron.min.js"></script>
        <script src="admin-blogify/js/skel.min.js"></script>
        <script src="admin-blogify/js/skel-layers.min.js"></script>
        <script src="admin-blogify/js/init.js"></script>
        <noscript>
            <link rel="stylesheet" href="admin-blogify/css/skel.css"/>
            <link rel="stylesheet" href="admin-blogify/css/style.css"/>
        </noscript>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="admin-blogify/css/ie/v8.css"/><![endif]-->
        <script>
            $(document).ready(function () {
                $(".button-clear").click(function () {
                    $(this).closest('form').find("input[type=text], textarea").val("");
                    $(this).closest('form').find("input[type=text]").val("");
                });
            });
        </script>
    </head>

<body class="right-sidebar">

    <!-- Header Wrapper -->
    <div id="header-wrapper" class="header-wrapper">

        <!-- Header -->
        <div id="header" class="container">

            <!-- Logo -->
            <h1 id="logo"><a href="#">Sitemakin</a></h1>
            <?php include("menu.inc.php"); ?>

        </div>

    </div>

    <!-- Main Wrapper -->
<div class="wrapper">

    <div class="container">

        <div class="row" id="main">

            <div class="8u">
                <div>

                    <div><h3 class="help-h3">Main Stuff</h3></div>

                    <script>
                        $(document).ready(
                            function () {
                                $("#showimages").click(function () {
                                    $("#help-images").show("slow");
                                });

                            });
                    </script>

                    <!-- BEGIN SEGMENT-->
                    <div class="help-sef-urls">
                        <div id="setup"><strong>Setup Files</strong></div>
                        <div>Unzip folder and move the files or folder to the desired location. Setup the user and
                            database. The database file can be dumped 'as is'. The database user, database password and
                            password settings can be added to the public.inc.php file.
                            <p>
                                <iframe allowfullscreen="" height="400" src="//www.youtube.com/embed/ur6pXHtWlGc"
                                        class="iframe-1"></iframe>
                                <!-- END VIDEO --><br>
                                &nbsp;</p>
                        </div>
                    </div>
                    <!-- END SEGMENT-->


                    <!-- BEGIN SEGMENT-->
                    <div class="help-sef-urls">
                        <div id="create"><strong>Create, Edit and Delete a Simple Web Page</strong></div>
                        <div>Option A
                            <p>
                                <iframe allowfullscreen="" height="400" src="//www.youtube.com/embed/m--_RK96cXo"
                                        class="iframe-1"></iframe>
                                <!-- END VIDEO --><br>
                                &nbsp;</p>
                        </div>
                    </div>
                    <!-- END SEGMENT-->

                    <!-- BEGIN SEGMENT-->
                    <div class="help-sef-urls">
                        <div id="video"><strong>Create, Edit and Delete a Simple Web Page</strong></div>
                        <div>Option B
                            <p>
                                <iframe allowfullscreen="" height="400" src="//www.youtube.com/embed/V0J5eQRhDj8"
                                        class="iframe-1"></iframe>
                                <!-- END VIDEO --><br>
                                &nbsp;</p>
                        </div>
                    </div>
                    <!-- END SEGMENT-->

                    <!-- BEGIN SEGMENT-->
                    <div class="help-sef-urls">
                        <div id="upload"><strong>Upload Images</strong></div>
                        <div>You can upload and edit an image when you add or edit a post.
                            <p>
                                <iframe allowfullscreen="" height="400" src="//www.youtube.com/embed/liaHxmPTeiw"
                                        class="iframe-1"></iframe>
                                <!-- END VIDEO --><br>
                                &nbsp;</p>
                        </div>
                    </div>
                    <!-- END SEGMENT-->

                    <!-- BEGIN SEGMENT-->
                    <div class="help-sef-urls">
                        <div id="clone"><strong>Clone a Website To Make a Template</strong></div>
                        <div>You can upload and edit an image when you add or edit a post.
                            <p>
                                <iframe allowfullscreen="" height="400" src="//www.youtube.com/embed/Lq2pGa1tdIY"
                                        class="iframe-1"></iframe>
                                <!-- END VIDEO --><br>
                                &nbsp;</p>
                        </div>
                    </div>
                    <!-- END SEGMENT-->

                    <!-- BEGIN SEGMENT-->
                    <div class="help-sef-urls">
                        <div id="zip"><strong>Zip Your Website</strong></div>
                        <div>Zip It!
                            <p>
                                <iframe allowfullscreen="" height="400" src="//www.youtube.com/embed/IeW5G2xgj8I"
                                        class="iframe-1"></iframe>
                                <!-- END VIDEO --><br>
                                &nbsp;</p>
                        </div>
                    </div>
                    <!-- END SEGMENT-->

                    <!-- BEGIN SEGMENT-->
                    <div class="help-sef-urls">
                        <div id="sitemap"><strong>XML Sitemap</strong></div>
                        <div>View at <a href="sitemap.php">sitemap.php</a>

                        </div>
                    </div>
                    <!-- END SEGMENT-->

                </div>
            </div>

            <?php include("sidebar-help.inc.php"); ?>
            <div class="my-clear"></div>
        </div>
        <div class="my-clear"></div>

    </div>

<?php include("footer.php");
