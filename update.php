<?php
include("includes/sessions.inc.php");

if (is_numeric($blogger_id) && $blogger_id == 1 && $blogger_login == $mylogin && $blogger_password == $mypassword) {

    $cms_id = htmlspecialchars($_GET['cms_id'], ENT_QUOTES, "utf-8");

    include("Classes/navigate.php");
    $navigator = new Navigate();
    $navigator->navigator();

} else {
    echo "You are not logged in. Please <a href=\"login.php\">login!</a>";
    exit();
}


if (count($_POST) > 0) {
    $top = $_POST['top'];
    $top = str_replace("</textareatag>", "</textarea>", $top);
    $top = mysqli_real_escape_string($db, $top);
    // $mid = $_POST['mid'];
    // $mid = str_replace("</textareatag>", "</textarea>", $mid);
    // $mid = mysqli_real_escape_string($db, $mid);
    //$footer = mysqli_real_escape_string($db, $_POST['footer']);
    $title = mysqli_real_escape_string($db, $_POST['title']);
    $description = mysqli_real_escape_string($db, $_POST['description']);
    if(isset($_POST['keywords'])){
    $keywords = mysqli_real_escape_string($db, $_POST['keywords']);
    }
    $url = mysqli_real_escape_string($db, $_POST['url']);


#first, make sure all fields were submitted
    if (!($my_blogger_id)) {
        $error_message = "Please make sure you've filled in all the form fields.  ";
    } #now, check for proper formats for all the inputs

    else {
        if (strlen($title) < 3) {
            $error_message = "Please make sure you have a title of 3 characters or more.";
        } else {
            $success = true; //flag to determine success of transaction

            //start transaction
            $command = "SET AUTOCOMMIT=0";
            $result = mysqli_query($db, $command);
            $command = "BEGIN";
            $result = mysqli_query($db, $command);

            if (is_numeric($cms_id)) {
                $command = "SELECT top, mid, footer FROM cms WHERE cms_id='$cms_id';";
                $result = mysqli_query($db, $command);

                if ($data = mysqli_fetch_object($result)) {
                    $command = "UPDATE cms SET top='$top', mid='', footer='', title='$title', description='$description', keywords='$keywords', url='$url' WHERE
                   cms_id='$cms_id';";
                    $result = mysqli_query($db, $command);


                    if ($result == false) {
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

}
?>

<form method="POST"
      action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8") . "?" . htmlspecialchars(
              $_SERVER["QUERY_STRING"],
              ENT_QUOTES,
              "utf-8"
          ); ?>">
    <table class="my-full-width">
        <?php
        $command = "SELECT top FROM cms where
cms_id='" . addslashes($cms_id) . "' AND top <>'' AND top IS NOT NULL;";
        $result = mysqli_query($db, $command);
        if (mysqli_num_rows($result) > 0) {
        ?>
    <tr>
    <?php
    }else{
    ?>
        <tr class="noner">
            <?php } ?>
            <td class="addfiles-td">
                Top:
            </td>
            <td class="addfiles-textarea">
                <textarea class="addfiles-textarea" name="top">
                    <?php
                    while ($data = mysqli_fetch_object($result)) {
                        $textarea_in = strstr($data->top, '</textarea>');
                        if ($textarea_in) {
                            $code = str_replace("</textarea>", "</textareatag>", $data->top);
                            echo htmlspecialchars_decode(stripslashes($code));
                        } else {
                            echo htmlspecialchars_decode(stripslashes($data->top));
                        }
                    }
                    ?>
                </textarea>
            </td>
        </tr>
        <?php
        $command = "SELECT mid FROM cms where cms_id='$cms_id' AND mid <>'' AND mid IS NOT NULL;";
        $result = mysqli_query($db, $command);
        if (mysqli_num_rows($result) > 0){
        ?>
        <tr>
            <?php
            }else{
            ?>
        <tr class="noner">
            <?php } ?>

            <td class="addfiles-td">
                Code:
            </td>
            <td class="addfiles-textarea">
                <textarea class="addfiles-textarea" name="mid"><?php

                    while ($data = mysqli_fetch_object($result)) {
                        $textarea_in = strstr($data->mid, '</textarea>');
                        if ($textarea_in) {
                            $code = str_replace("</textarea>", "</textareatag>", $data->mid);
                            echo htmlspecialchars_decode(stripslashes($code));
                        } else {
                            echo htmlspecialchars_decode(stripslashes($data->mid));
                        }
                    }
                    ?>
                </textarea>

            </td>
        </tr>

        <tr>
            <td class="addfiles-td">
                Title:
            </td>
            <td class="addfiles">
                <input type="text" name="title" value="<?php
                $command = "SELECT title FROM cms where
cms_id='$cms_id';";
                $result = mysqli_query($db, $command);
                while ($data = mysqli_fetch_object($result)) {
                    echo htmlspecialchars_decode(stripslashes($data->title));
                }?>">

            </td>
        </tr>

        <tr>
            <td class="addfiles-td">
                Description:
            </td>
            <td class="addfiles">
                <input type="text" name="description" value="<?php
                $command = "SELECT description FROM cms where
cms_id='" . addslashes($cms_id) . "';";
                $result = mysqli_query($db, $command);
                while ($data = mysqli_fetch_object($result)) {
                    echo htmlspecialchars_decode(stripslashes($data->description));

                }?>">

            </td>
        </tr>

        <tr class="noner">
            <td class="addfiles-td">
                Keywords:
            </td>
            <td>
                <input type="text" name="keywords" value="<?php
                $command = "SELECT keywords FROM cms where
cms_id='$cms_id';";
                $result = mysqli_query($db, $command);
                while ($data = mysqli_fetch_object($result)) {
                    echo htmlspecialchars_decode(stripslashes($data->keywords));

                }?>">

            </td>
        </tr>

        <tr>
            <td class="addfiles-td">
                URL:
            </td>
            <td>
                <input type="text" name="url" value="<?php
                $command = "SELECT url FROM cms where
cms_id='" . addslashes($cms_id) . "';";
                $result = mysqli_query($db, $command);
                while ($data = mysqli_fetch_object($result)) {
                    echo htmlspecialchars_decode(stripslashes($data->url));

                }?>">

            </td>
        </tr>


        <tr>
            <td colspan=2 align=center>
                <input type="hidden" name="cms_id" value="<?php echo htmlentities($cms_id); ?>">
                <input type=submit value="SUBMIT">
            </td>
        </tr>
    </TABLE>
    <br>
</form></div></div></div>
<!--Beginning of style-->
<?php include("footer.php"); ?>
</body>
</html>