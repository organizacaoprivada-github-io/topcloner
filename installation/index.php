<?php
header('Cache-Control: max-age=900');
if (isset($_POST['make_config'])) {

    $password = htmlspecialchars($_POST['password'], ENT_QUOTES, "utf-8");
    $user = htmlspecialchars($_POST['user'], ENT_QUOTES, "utf-8");
    $host = htmlspecialchars($_POST['host'], ENT_QUOTES, "utf-8");
    $database = htmlspecialchars($_POST['database'], ENT_QUOTES, "utf-8");
    $content = '<?php
function public_db_connect() {

    $host = "localhost";
    $user = "' . $user . '";
    $pw = "' . $password . '";
    $database = "' . $database . '";

    $db = mysqli_connect($host,$user,$pw, $database)
       or die("Cannot connect to mySQL.");
	   
    return $db;
 }';

##WRITE TO CONFIG FILE
    $fh = fopen('../public.inc.php', "w+");
    fwrite($fh, $content);
    fclose($fh);

    $db2 = new PDO("mysql:host=$host;dbname=$database", $user, $password);

    $sql = file_get_contents('sitemakin_cloner.sql');

    $qr = $db2->exec($sql);
    $id = $db2->lastInsertId();

}
?>
<!DOCTYPE HTML>
<html>
<head>
    <link rel="stylesheet" href="../admin-blogify/css/style-everywhere.css"/>

    <style>
        .installer {
            width: 30%;
            /*padding: 1% 10% 5% 10%;*/
            display: inline-block;
            height: auto;
            font-family: 'Source Sans Pro', sans-serif;
            font-weight: 200;
            color: #52575c;
            line-height: 1.30em;
            font-size: 12pt;
            margin-left: 35%;
            margin-right: 35%;
            padding: 0px 0px 0px 0px;
        }

        .input-look {
            border-radius: 4px;
            border: none;
            padding: 5px;
        }

        .install-inputs {
            width: 97%;
            border-radius: 4px;
            border: none;
            padding: 5px;
        }</style>
</head>
<body>

<br/><br/>

<div class="installer">
    <div><?php
        if (count($_POST) > 0) {
            if (count($_POST) > 0 && isset($id)) {
                echo "<h3>Install Successful";
            } else {
                echo "<h3>Something went wrong!";
            }
        }
        ?></div>
    Step #1 Make sure you created a database. <br/>
    Step #2 Fill in the fields below. They must be correct.
    <br/>
    Step #3 Click Submit. That's it.<br/><br/>Manual Installation:<br/><a href="../_Documentation/#usage">Read
        Documentation.</a>
    <br/><br/>

    <form class="install-form" method="POST"
          action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'], ENT_QUOTES, "utf-8"); ?>">
        Host:<br/><input class="install-inputs" type="text" name="host" value="localhost"/><br/><br/>
        Username:<br/><input class="install-inputs" type="text" name="user"/><br/><br/>
        Password:<br/><input class="install-inputs" type="password" name="password"/><br/><br/>
        Database:<br/><input class="install-inputs" type="text" name="database"/><br/>
        <br/> <input class="install-submit" type="submit" name="make_config" value="Submit"/>
    </form>
</div>
</body>
</html>
