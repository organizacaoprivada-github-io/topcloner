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

if ($_POST['submit']) {
    $mytext = stripslashes($_POST['mytext']);
    $mytext = str_replace('<?', "", $mytext);
    $mytext = preg_replace(array('/<title>(.*)<\/title>/si', '/<\/head>/'), '', $mytext);
    $code = "\n" . '<title><?php echo $page_title; ?></title>	
	</head><?php 
		public_db_connect();
	   $command = "SELECT id, top FROM cms_header where id=\"1\";";
       $result = mysql_query($command);
       while ($data = mysql_fetch_object($result)) {
          echo stripslashes($data->top);	
		  }';
    $combined = $mytext . $code;
// here is the source file
//$file = file_get_contents('page_template_ckc.php', true);
    $fh = fopen("header.php", 'w');
    fwrite($fh, $combined);
    fclose($fh);
}
?>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>">
    <textarea name="mytext" class="addfiles-textarea"> </textarea>

    <div class="dloads-48"><input class="header-write-1" type="submit" name="submit"
                                  value="Create Header"/></div>
</form>