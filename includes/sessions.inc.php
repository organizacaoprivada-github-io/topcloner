<?php
include('public.inc.php');
include('header_edit.php');

if (isset($_SESSION['my_blogger_id'], $_SESSION['blogger_login'], $_SESSION['blogger_password'])) {
    $my_blogger_id = $_SESSION['my_blogger_id'];
    $blogger_login = $_SESSION['blogger_login'];
    $blogger_password = $_SESSION['blogger_password'];
}

$db = public_db_connect();

/*
 * LOGIN.PHP ONLY BEGIN
 */
if (isset($_POST['login'])) {
    if (count($_POST['login']) > 0 && count($_POST['password']) > 0) {
        $login = array();
        $login = mysqli_real_escape_string($db, $_POST['login']);
        $password = array();
        $password = mysqli_real_escape_string($db, $_POST['password']);
        $time_stamp = time();
    }
}
/*
 * LOGIN.PHP ONLY END
 */

if (isset($_SESSION['blogger_login'])) {
    $login = $_SESSION['blogger_login'];
    $blogger_password = substr($_SESSION['blogger_password'], 4);
}


if (isset($login) && isset($password)) {

    if (!isset($login)) {
        $error_message = "Please enter the login you used to join. ";
    } else {
        if (!isset($password)) {
            $error_message = "Please enter your password. ";
        } else {

            $command = "SELECT my_blogger_id, login, password FROM raspberry_logins WHERE login='" . $login . "'
               AND password=sha1('" . $password . "') AND activation=4 ;";
            $result = mysqli_query($db, $command);

            if (mysqli_num_rows($result) > 0) {

            }
            if ($data = mysqli_fetch_object($result)) {


                $_SESSION['my_blogger_id'] = $data->my_blogger_id;
                $_SESSION['blogger_login'] = $data->login;
                $salt = substr(md5(microtime()), rand(0, 26), 4);

                //header('Location: blog_my.php');
                $command_time = "INSERT INTO logins_validate (user_id, time_check) VALUES ('{$_SESSION['my_blogger_id']}', '$time_stamp')";
                $result_time = mysqli_query($db, $command_time);
                $_SESSION['blogger_password'] = $salt . $time_stamp;
                $blogger_password = substr($_SESSION['blogger_password'], 4);

            } else {

                $error_message = "Sorry, your login was incorrect or you did not activate account. Please contact us if you've forgotten your password.";
            }
        }
    }
}

$blogger_id = array();
$blogger_id = null;
if (isset($_SESSION['my_blogger_id'])) {
    $blogger_id = $_SESSION['my_blogger_id'];
}

$command_login = "SELECT rl.login as login, rl.password as password, max(lv.time_check) as time_check  FROM raspberry_logins as rl, logins_validate as lv WHERE rl.my_blogger_id ='$blogger_id' AND rl.my_blogger_id = lv.user_id LIMIT 1";
$result_login = mysqli_query($db, $command_login);
$row_login = mysqli_fetch_assoc($result_login);

$blogger_login = array();
if (isset($_SESSION['blogger_login'])) {
    $blogger_login = $_SESSION['blogger_login'];
}
$mylogin = $row_login['login'];
$mypassword = $row_login['time_check'];

