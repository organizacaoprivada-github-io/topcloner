<?php
session_start();
include('public.inc.php');
$db = public_db_connect();
?>
    <!DOCTYPE HTML>
    <!--
        Telephasic by HTML5 UP
        html5up.net | @n33co
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
    -->
<html>
    <head>
        <title>Sitemakin and Cloner</title>
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

<body class="homepage">

    <!-- Header -->
    <div id="header-wrapper" class="header-wrapper">
        <div id="header" class="container">

            <!-- Logo -->
            <h1 id="logo"><a href="#">Sitemakin</a></h1>

            <?php include("menu.inc.php"); ?>

        </div>

        <!-- Hero -->
        <section id="hero" class="container">
            <header>
                <h2>Convert HTML template <br/>to CMS in seconds!<br/>
                </h2>
            </header>
            <p>Fast enough to host <strong>anywhere</strong>....<em>including your home!</em></p>
            <ul class="actions">
                <li><a href="help.php" class="button">How to set up HTML to CMS in seconds!</a></li>
            </ul>
        </section>

    </div>

    <!-- Features 1 -->
    <div class="wrapper">
        <div class="container">
            <div class="row">
                <section class="6u feature">
                    <div class="image-wrapper first">
                        <a href="#" class="image featured first"><img src="admin-blogify/images/pic01.jpg" alt=""/></a>
                    </div>
                    <header>
                        <h2>Add A CMS To<br/>
                            Almost Any Website</h2>
                    </header>
                    <p>Sitemakin is a game changer. Makes adding a CMS to any existing website possible while
                        maintaining your desired style.</p>
                    <ul class="actions">
                        <li><a href="#" class="button">Have a minute? See how fast it works.</a></li>
                    </ul>
                </section>
                <section class="6u feature">
                    <div class="image-wrapper">
                        <a href="#" class="image featured"><img src="admin-blogify/images/pic02.jpg" alt=""/></a>
                    </div>
                    <header>
                        <h2>High Performance Coding<br/>
                            & Fast Page Downloads </h2>
                    </header>
                    <p>Sitemakin is so fast you can even deliver web pages from home on a Raspberry Pi that rival
                        other CMS' on dedicated servers.</p>
                    <ul class="actions">
                        <li><a href="#" class="button">Watch its speed! Faster is always better.</a></li>
                    </ul>
                </section>
            </div>
        </div>
    </div>

    <!-- Promo -->
    <div id="promo-wrapper">
        <section id="promo">
            <h2>The Easiest Option To Breathe Life Into a Static Website</h2>
            <a href="#" class="button">Read More</a>
        </section>
    </div>

    <!-- Features 2 -->
    <div class="wrapper">
        <section class="container">
            <header class="major">
                <h2>Giving the Web Developer A Toolkit of Options</h2>

                <p>No Slow Network or Wifi Will Ever Limit Your CMS Needs!</p>
            </header>
        </section>
<?php include("footer.php");
