<?php //session_start();
$timer_start = microtime(true);
/*($_SERVER['DOCUMENT_ROOT'] != getcwd()){
    $slash = '/';
}else{
    $slash = "";
}*/
?>
    <!DOCTYPE HTML>
    <!--
        Telephasic 1.1 by HTML5 UP
        html5up.net | @n33co
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
    -->
<html>
    <head>
        <title><?php echo str_replace("-", " ", $title); ?></title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta name="description" content=""/>
        <meta name="keywords" content=""/>
        <link rel="stylesheet" href="css/style-everywhere.css"/>
        <link rel="stylesheet" href="css/style.css"/>

        <!--[if lte IE 8]>
        <script src="css/ie/html5shiv.js"></script><![endif]-->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.dropotron.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/skel-layers.min.js"></script>
        <script src="js/init.js"></script>
        <noscript>
            <link rel="stylesheet" href="css/skel.css"/>
            <link rel="stylesheet" href="css/style.css"/>
        </noscript>
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie/v8.css"/><![endif]-->


        <?php if (!(is_numeric(
                $blogger_id
            )) || $blogger_id != 1 || $blogger_login != $_SESSION['blogger_login'] || $blogger_password != substr(
                $_SESSION['blogger_password'],
                4
            )
        ) {
        } else {
            ?>
            <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
        <?php } ?>
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
<?php
//else{
// echo '<body class="homepage">';
//}
?>

    <!-- Header Wrapper -->
    <div id="header-wrapper">

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
<?php
if (basename($_SERVER['PHP_SELF']) == 'index.php' || basename($_SERVER['PHP_SELF']) == 'index-no-sef.php') {
    ?>
    <h2>Entries</h2>
<?php
}
