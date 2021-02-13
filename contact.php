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
        <title>Siteconstructor Contact</title>
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
            <h1 id="logo"><a href="#">Siteconstructor</a></h1>
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

                    <form action="contact_form.php" class="horizontal-form margin-bottom-40" method="post">
                        <div class="control-group">
                            <label class="control-label">Name</label>

                            <div class="controls">
                                <input type="text" class="m-wrap span12" name="names"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Email <span class="color-red">*</span></label>

                            <div class="controls">
                                <input type="text" class="m-wrap span12" name="email">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Message</label>

                            <div class="controls">
                                <textarea class="m-wrap span12" rows="8" name="message"></textarea>
                            </div>
                        </div>
                        <br/>
                        <input type="submit" class="btn theme-btn" name="submit"/>
                    </form>
                    <!-- END FORM-->

                </div>
            </div>

            <?php //include("sidebar-help.inc.php"); ?>
            <div>Call Me: 555-555-5555</div>
            <div class="my-clear"></div>
        </div>
        <div class="my-clear"></div>

    </div>

<?php include("footer.php");
