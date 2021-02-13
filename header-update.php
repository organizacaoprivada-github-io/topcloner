<?php
include("includes/sessions.inc.php");

if (is_numeric($blogger_id) && $blogger_id == 1 && $blogger_login == $mylogin && $blogger_password == $mypassword) {
    include("Classes/navigate.php");
    $navigator = new Navigate();
    $navigator->navigator();

} else {
    echo "You are not logged in. Please <a href=\"login.php\">login!</a>";
    exit();
}


$db = public_db_connect();
if (count($_POST) > 0) {
    $top = mysqli_real_escape_string($db, $_POST['top']);
//$mid = $_POST['mid'];
    $footer = mysqli_real_escape_string($db, $_POST['footer']);
}

if (!isset($top)) {
    //$error_message = "Please make sure you've filled in all the form fields.  ";
} else {
    $success = true; //flag to determine success of transaction
    //start transaction
    $command = "SET AUTOCOMMIT=0";
    $result = mysqli_query($db, $command);
    $command = "BEGIN";
    $result = mysqli_query($db, $command);


    //  if (is_numeric($my_blogger_id)) {
    $command = "SELECT top FROM cms_header_edit WHERE id='1';";
    $result = mysqli_query($db, $command);

    if ($data = mysqli_fetch_object($result)) {
        $command = "UPDATE cms_header SET top='$top' WHERE id='1';";
        $result = mysqli_query($db, $command);

        if ($result == false) {
            $success = false;
        }
    }

    // }

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


?>

<span class="footer-1">
        <?php
        if (isset($error_message)) {
            echo $error_message;
        }
        ?>
    </span>
<form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>">
    <table class="footer-2">
        <tr>
            <td class="addfiles-td">
                Header:
            </td>
            <td class="addfiles-textarea">
                <textarea class="addfiles-textarea" name="top"><?php
                    $command = "SELECT top FROM cms_header where id='1';";
                    $result = mysqli_query($db, $command);
                    while ($data = mysqli_fetch_object($result)) {
                        echo stripslashes($data->top);
                    }
                    ?></textarea>
            </td>
        </tr>

        <tr>
            <td colspan=2 align=center>
                <input type=submit value="SUBMIT" onClick="reloadsite()">
                <input type=submit value="REFRESH MENU" onClick="reloadsite()">
            </td>
        </tr>
    </TABLE>
    <br>
</form>

</div>

</div></div>
<!--Beginning of style-->
<?php
//$cms_id=2;
include("footer.php");
mysqli_close($db);
//}
?>
<script>
    function reloadsite() {
        setTimeout('window.location.reload()', 2000)
    }
</script>