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


if ($my_blogger_id) {

} else {
    ?>
    <h4>Edit Content</h4>
<?php
}
?>

    <span edit="edit-1">
    <?php
    if (isset($error_message)) {
        echo $error_message;
    }

    $dir = getcwd();
    //$dir    = $directory;
    $files1 = scandir($dir);
    foreach ($files1 as $file) {
        if (strlen($file) >= 3) {
            $foil = strstr($file, 'php');

            if ($foil == true) {
                //echo $file."<br/>";
                $file_array[] = $file;
            }
        }
    }
    ?>
</span>
    <ul class="edit-2">
        <?php
        $bg = '#CFCFCF';
        $command = "SELECT * FROM cms;";
        $result = mysqli_query($db, $command);
        while ($data = mysqli_fetch_object($result)) {
        $delete_url = $data->url;

        if (!in_array($delete_url, $file_array)) {

            $command2 = "DELETE FROM cms WHERE url = '$delete_url'";
            $result2 = mysqli_query($db, $command2);
        }

       // $bg = ($bg == '#CFCFCF' ? '#ffffff' : '#CFCFCF');
        $bg = ($bg == '#ffffff' ? '#ffffff' : '#ffffff');

        if (preg_match("/<?DOCTYPE/", $data->mid) == false && preg_match(
            "/<?DOCTYPE/",
            stripslashes($data->top)
        ) == false && $data->ckc != 1) {
        ?>

        <li style="font-size:11px;padding:10px 10px 10px 10px; list-style-type:none;background:<?php echo $bg; ?>"><?php
            echo "<div class='edit-3' ><a class=\"edit-7\" href=\"#\">" . stripslashes(
                    $data->title
                ) . "</a></div> <div class='edit-3' ><a class=\"edit-5\" href=\"delete.php?cms_id=" . $data->cms_id . "\"><img src=\"admin-blogify/images/delete-file.jpg\" /></a></div> <div class='edit-6' ><a class=\"edit-5\" href=\"update.php?cms_id=" . $data->cms_id . "\"><img src=\"admin-blogify/images/update-source.jpg\" /></a></div><br/> ";
            } else {
            ?>
        <li style="font-size:11px;padding:10px 10px 10px 10px; list-style-type:none;background:<?php echo $bg; ?>"><?php
            echo "<div class='edit-3' ><a class=\"edit-8\" href=\"" .
                stripslashes($data->url) /* ) */ . "\">" . stripslashes(
                    $data->title
                ) . "</a></div> <div class='edit-3' ><a class=\"edit-5\" href=\"delete.php?cms_id=" . $data->cms_id . "\"><img src=\"admin-blogify/images/delete-file.jpg\" /></a></div><div class='edit-6' ><a class=\"edit-5\" href=\"update.php?cms_id=" . $data->cms_id . "\"><img src=\"admin-blogify/images/update-source.jpg\" /></a></div><br/> ";
            }
            }
            ?></li>
    </ul>
    </div></div></div>
<?php
include("footer.php");
