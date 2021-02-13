<?php
header('Cache-Control: max-age=900');
session_start();
include('public.inc.php');

unset($_SESSION['my_blogger_id']);
unset($_SESSION['blogger_login']);
unset($_SESSION['blogger_password']);
$db = public_db_connect();
include_once('header_edit.php');
?>
    <div id="bloglogout">
        <h4>You have successfully logged out. <a href="login.php">Click here</a>
            to login.</h4></div></div></div></div>
<?php
include_once('footer.php'); // Require the HTML footer.
