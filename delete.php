<?php
header('Cache-Control: max-age=900');
include("includes/sessions.inc.php");
$db = public_db_connect();

if (is_numeric($blogger_id) && $blogger_id == 1 && $blogger_login == $mylogin && $blogger_password == $mypassword) {
    $cms_id = mysqli_real_escape_string($db, $_GET['cms_id']);

    include("Classes/navigate.php");
    $navigator = new Navigate();
    $navigator->navigator();


} else {
    echo "You are not logged in. Please <a href=\"login.php\">login!</a>";
    exit();
}

if (!isset($my_blogger_id)) {
    $error_message = "Please make sure you've filled in all the form fields.  ";
} else {
    $success = true; //flag to determine success of transaction
    //start transaction
    $command = "SET AUTOCOMMIT=0";
    $result = mysqli_query($db, $command);
    $command = "BEGIN";
    $result = mysqli_query($db, $command);

    $command2 = "SELECT url FROM cms WHERE cms_id='$cms_id';";
    $result2 = mysqli_query($db, $command2);

    while ($row2 = mysqli_fetch_assoc($result2)) {
        $file_delete = $row2['url'];
        unlink($file_delete);
    }

    $command = "DELETE FROM cms WHERE cms_id='$cms_id';";
    $result = mysqli_query($db, $command);

    if ($result == false || $result2 == false) {
        $success = false;
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

if ($cms_id) {
    ?>
    <h4>Edit Your Homepage:</h4>
<?php
} else {
    ?>
    <h4>Post a new page:</h4>
<?php
}
?>

    <span class="add-1">
    <?php
    if (isset($error_message)) {
        echo $error_message;
    }
    ?>
</span>

<?php
$command = "SELECT top FROM cms where 
cms_id=2;";
$result = mysqli_query($db, $command);
while ($data = mysqli_fetch_object($result)) {
    echo stripslashes($data->top);
}
?>

<?php
$command = "SELECT mid FROM cms where 
cms_id='$cms_id';";
$result = mysqli_query($db, $command);
while ($data = mysqli_fetch_object($result)) {
    echo stripslashes($data->mid);
}
?>
    </div></div></div>
<?php include("footer.php");
