<?php
include('public.inc.php');

#find out who's logged in
session_start();
$db = public_db_connect();
include_once('header_edit.php');

$my_blogger_id = $_SESSION['my_blogger_id'];
$blogger_login = $_SESSION['blogger_login'];
$blogger_password = $_SESSION['blogger_password'];

$command_login = "SELECT login, password FROM raspberry_logins WHERE my_blogger_id ='$my_blogger_id'";
$result_login = mysqli_query($db, $command_login);
$row_login = mysqli_fetch_assoc($result_login);
$mylogin = $row_login['login'];
$mypassword = $row_login['password'];

//run query for page title
$command = "SELECT title, description, keywords FROM cms where cms_id='$cms_id';";
$result = mysqli_query($db, $command);
while ($row = mysqli_fetch_assoc($result)) {
    // echo $row['title'];
//set var inside loop
    $page_title = $row['title'];
    $description = $row['description'];
    $keywords = $row['keywords'];
}


if (!(is_numeric(
        $my_blogger_id
    )) || $my_blogger_id != 1 || $blogger_login != $mylogin || $blogger_password != $mypassword
) {
} else {

    include_once('header_edit.php');

## FUNCTION TO GRAB URL

    function my_page_URL()
    {

        $page_URL = 'http';
        if ($_SERVER["HTTPS"] == "on") {
            $page_URL .= "s";
        }
        $page_URL .= "://";
        if ($_SERVER["SERVER_PORT"] != "80") {
            $page_URL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
        } else {
            $page_URL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
        }
        return $page_URL;
    }

## This tutorial below explains how you can grab a php file on the Internet and rewrite and save it as an html file using php. 
##GET WEB PAGE
## We use curl to get the url because file_get_contents() function will interpret example.com/myfile.php different than myfile.php
## if the absolute url is not grabbed and the relative url is grabbed, file_get_contents() will grab the actual file code and not ## what ouputs in a browser.
    $mycurl = my_page_URL();

##GET URLS
    /* $command = "SELECT urls FROM tablename ";
      $result = mysqli_query($db,$command);
      while($row = mysqli_fetch_assoc($result)){
      $url = $row['url'];
      $urls[] = $url;
      } */

    $urls = array('http://bohemianism.ca/learn-web-design.php', 'http://bohemianism.ca/services.php');

##LOOP EACH PAGE		
    foreach ($urls as $url) {
        //echo $url;
        # we don't want the file downloads.php so we skip it from making a page called downloads.html
        if ($url == "downloads.php") {
            continue;
        }
        echo $url;
        //$myurl = str_replace("write_new_file.php",$url,$mycurl);
        $htmla = file_get_contents($url);
        echo $htmla;

        // echo $html;
        $html = str_replace("http://bohemianism.ca/", "", $url);
        $html = str_replace(".php", ".html", $html);
        $file = "html/" . $html;
        $fp = fopen($file, 'w');
        fwrite($fp, $htmla);
        fclose($fp);
    }


    echo "Changes Successful!";
//  }
//}


    /* $htmlb = file_get_contents('http://bohemianism.ca/index.php');
      echo $htmlb; */

    if ($cms_id) {
        ?>
        <h4>Edit Your Homepage:</h4>
    <?
    } else {
        ?>
        <h4>Post a new page:</h4>
    <?
    }
    ?>

    <span class="footer-1">
    <?
    if ($error_message) {
        echo $error_message;
    }
    ?>
</span>

    <?
    $command = "SELECT top FROM cms where
cms_id=2;";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {
        echo stripslashes($data->top);
    }
    ?>

    <?
    $command = "SELECT mid FROM cms where
cms_id='$cms_id';";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {
        echo stripslashes($data->mid);
    }
    ?>
    <!--Beginning of style-->
    <?php include("footer.php");
}
