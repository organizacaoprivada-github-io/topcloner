<?php
session_start();
$navigation_flag = $_SESSION['navigation'];

#find out who's logged in
$blogger_id = $_SESSION['my_blogger_id'];
$blogger_login = $_SESSION['blogger_login'];

include('admin-blogify/header_blog.inc.php');
