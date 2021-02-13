<?php
include('public.inc.php');
session_start();
$db = public_db_connect();

$myurl = basename(__FILE__);
$cms_page_url = $myurl;

$command = "SELECT cms_id FROM cms where url='$cms_page_url';";
$result = mysqli_query($db, $command);
while ($row = mysqli_fetch_assoc($result)) {

//set var inside loop		 
    $cms_id = mysqli_real_escape_string($db, $row['cms_id']);
}

if (isset($_SESSION['my_blogger_id'], $_SESSION['my_blogger_id'], $_SESSION['blogger_password'])) {
    $my_blogger_id = $_SESSION['my_blogger_id'];
    $blogger_login = $_SESSION['blogger_login'];
    $blogger_password = substr($_SESSION['blogger_password'], 4);

    $command_login = "SELECT DISTINCT lv.user_id, max(lv.time_check) as time_check, rl.login as login FROM logins_validate as lv, raspberry_logins as rl WHERE lv.user_id ='$my_blogger_id' AND lv.user_id = rl.my_blogger_id ORDER BY lv.id DESC LIMIT 1";
    $result_login = mysqli_query($db, $command_login);
    $row_login = mysqli_fetch_assoc($result_login);
    $mylogin = $row_login['login'];
    $mypassword = $row_login['time_check'];
} else {
    $my_blogger_id = '';
}

//run query for page title
$command = "SELECT title, description, keywords FROM cms where cms_id='$cms_id';";
$result = mysqli_query($db, $command);
while ($row = mysqli_fetch_assoc($result)) {

//set var inside loop		 
    $page_title = $row['title'];
    $description = $row['description'];
    $keywords = $row['keywords'];
}

$blogger_id = $my_blogger_id;

if (is_numeric($blogger_id) && $blogger_id == 1 && $blogger_login == $mylogin && $blogger_password == $mypassword) {

    $command = "SELECT top FROM cms where cms_id='$cms_id';";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {

        $textarea_in = strstr($data->top, '</textarea>');
        if ($textarea_in) {
            $code = str_replace("</textarea>", "</textareatag>", $data->top);
            header('Location: update.php?cms_id=' . $cms_id);
        }

    }

    include("header_editor.php");

    $command = "SELECT mid FROM cms where 
cms_id='$cms_id';";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {
        //  echo stripslashes($data->mid);
    }

} else {
    //HEADER
    $command = "SELECT top FROM cms_header where id='1';";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {

        $patterns = array();
        $patterns[0] = '/<title\s*>(.*)<\/title>?/';
        $patterns[1] = '/<meta\s*name\s*=\s*\"\s*description\s*\"\s*content\s*=\s*\"(.*)\"\s*(>|\/>)?/';

        $replacements = array();
        $replacements[1] = "<title>$page_title</title>";
        $replacements[0] = "<meta name=\"description\" content=\"$description\">";

        echo preg_replace($patterns, $replacements, htmlspecialchars_decode(stripslashes($data->top)));

        /*  echo preg_replace('/<title\s*>(.*)<\/title>)?/',"<title>$page_title</title>",htmlspecialchars_decode(stripslashes($data->top)));

          echo preg_replace('/<meta\s*name\s*=\s*\"\s*description\s*\"\s*content\s*=\s*\"(.*)\"\s*(>|\/>)?/',"<meta name=\"description\" content=\"$description\">",htmlspecialchars_decode(stripslashes($data->top)));*/

    }
    //BODY
    $command = "SELECT top FROM cms where cms_id='$cms_id';";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {
        echo htmlspecialchars_decode(stripslashes($data->top));
    }
    //FOOTER
    $command = "SELECT footer FROM cms_footer where id='1';";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {
        echo htmlspecialchars_decode(stripslashes($data->footer));
    }
    exit();
}

$top = mysqli_real_escape_string($db, $_POST['top']);
$mid = mysqli_real_escape_string($db, $_POST['mid']);
$footer = mysqli_real_escape_string($db, $_POST['footer']);

if (!($top /* && $mid && $footer */)) {
    $error_message = "Please make sure you've filled in all the form fields.  ";
} #now, check for proper formats for all the inputs
else {
    if (strlen($mid) > 50000) {
        $error_message = "Please make sure your bookmark mid is 250 characters or less.";
    } else {
        $success = true; //flag to determine success of transaction
        //start transaction
        $command = "SET AUTOCOMMIT=0";
        $result = mysqli_query($db, $command);
        $command = "BEGIN";
        $result = mysqli_query($db, $command);


        if (is_numeric($cms_id)) {
            $command = "SELECT top, mid, footer FROM cms WHERE cms_id='" . addslashes($cms_id) . "';";
            $result = mysqli_query($db, $command);

            if ($data = mysqli_fetch_object($result)) {
                $command = "UPDATE cms SET top='$top', mid='$mid', footer='$footer' WHERE cms_id='$cms_id';";
                $result = mysqli_query($db, $command);

                if ($result == false) {
                    $success = false;
                }
            } else {

                if (($result == false) ||
                    (mysqli_affected_rows($db) == 0)
                ) {
                    $success = false;
                }
            }
        }

        if (!$success) {
            $command = "ROLLBACK";
            $result = mysqli_query($db, $command);
            $error_message = "We're sorry, there has been an error on our end.
                                Please contact us to report this bug.  ";
        } else {
            $command = "COMMIT";
            $result = mysqli_query($db, $command);
        }
        $command = "SET AUTOCOMMIT=1"; //return to autocommit
        $result = mysqli_query($db, $command);

        #If successful, redirect
        if ($success) {
            echo "Changes Successful!";
        }
    }
}
// }

?>
    <span class="footer-1">
    <?
    if ($error_message) {
        echo $error_message;
    }
    ?>
</span>
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>">
        <table class="footer-2">
            <tr>
                <td align=right>
                    top:
                </td>
                <td align=left>
                    <textarea rows=6 cols=60 max=2000 name="top" width="800px"><?
                        //$cms_id=2;
                        $command = "SELECT top FROM cms where cms_id='$cms_id';";
                        $result = mysqli_query($db, $command);
                        while ($data = mysqli_fetch_object($result)) {
                            echo htmlspecialchars_decode(stripslashes($data->top));
                        }
                        ?></textarea>
                </td>
            </tr>
            <tr>
                <td align=right>
                    mid:
                </td>
                <td align=left>
                    <textarea rows=6 cols=60 max=2000 name="mid"><?
                        $command = "SELECT mid FROM cms where
cms_id='" . addslashes($cms_id) . "';";
                        $result = mysqli_query($db, $command);
                        while ($data = mysqli_fetch_object($result)) {
                            echo htmlspecialchars_decode(stripslashes($data->mid));
                        }
                        ?></textarea>

                </td>
            </tr>
            <tr>
                <td align=right valign=top>
                    footer:
                </td>
                <td align=left>
                    <textarea rows=6 cols=60 max=500 name="footer"><?
                        $command = "SELECT footer FROM cms where
cms_id='$cms_id';";
                        $result = mysqli_query($db, $command);
                        while ($data = mysqli_fetch_object($result)) {
                            echo htmlspecialchars_decode(stripslashes($data->footer));
                        }
                        ?></textarea>

                </td>
            </tr>


            <tr>
                <td colspan=2 align=center>
                    <input type="hidden" name="cms_id" value="<? echo htmlentities($cms_id); ?>">
                    <input type=submit value="SUBMIT">
                </td>
            </tr>
        </TABLE>
        <br>
    </form>

<?

$command = "SELECT top FROM cms where 
cms_id='$cms_id';";
$result = mysqli_query($db, $command);
while ($data = mysqli_fetch_object($result)) {
    echo htmlspecialchars_decode(stripslashes($data->top));
}
?>

<?
$command = "SELECT mid FROM cms where 
cms_id='" . addslashes($cms_id) . "';";
$result = mysqli_query($db, $command);
while ($data = mysqli_fetch_object($result)) {
    echo htmlspecialchars_decode(stripslashes($data->mid));
}

include("footer.php");
mysqli_close($db);
