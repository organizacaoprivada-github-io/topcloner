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

                <div><h3 class="help-h3">About Sitemakin and Cloner</h3></div>

                <!-- BEGIN SEGMENT-->
                <div class="help-sef-urls">
                    <div id="setup"><strong>How It Began</strong></div>
                    <div>After many years of using CMS' and blogs since their birth, I have always found the need to add
                        a blog to a website at a later date. But, adding a full installation and templating it was
                        undesirable. At that point, I had a mission to build the simplest add-on possible to an existing
                        static website. I wanted the addon to be usable within minutes, not hours or days.
                    </div>
                </div>
                <!-- END SEGMENT-->

                <!-- BEGIN SEGMENT-->
                <div class="help-sef-urls">
                    <div id="create"><strong>Faster Faster!</strong></div>
                    <div>Faster is always better. After years using websites like Stackoverflow and Google's
                        recommendations, I had become fascinated with with high performance coding. With countless
                        thousands of speed tests, I always liked the concept of pleasing everybody; from a static
                        website on shared host to a busy website with lots of viewers. I always liked to work on areas
                        where I thought the other options were weaker.
                    </div>
                </div>
                <!-- END SEGMENT-->

                <!-- BEGIN SEGMENT-->
                <div class="help-sef-urls">
                    <div id="video"><strong>High Performance Coding</strong></div>
                    <div>Since the above factors are very important, it leads to developing a tool that can be used on
                        all devices...including the $35-$50 Raspberry Pi micro computer. <br/><br/>As big companies
                        offer low hosting prices, having a tool that worked fast with the Raspberry Pi meant that the
                        'NOW' generation even had the option to host at home for free using our tool. We tried the
                        popular CMS' out there and they tend to fail to deliver good performance on the Raspberry Pi.
                    </div>
                </div>
                <!-- END SEGMENT-->

            </div>

            <?php include("sidebar-help.inc.php"); ?>
            <div class="my-clear"></div>
        </div>
        <div class="my-clear"></div>

    </div>

<?php include("footer.php");
