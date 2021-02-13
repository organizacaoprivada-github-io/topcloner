<?php
function public_db_connect()
{
    $host = "localhost";
    $user = "root";
    $pw = "";
    $database = "sitemakin_cloner";

    $db = mysqli_connect($host, $user, $pw, $database) or die("Cannot connect to mySQL.");

    return $db;
}

function make_dynamic_pulldowns()
{

    echo "<select name=\"cms_path\">";
    $command = "SELECT id, path from cms_path";
    $rows = array();
    $result = mysqli_query($db, $command);
    if ($result && mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {

            $name = $row["path"];
            echo "<option value=\"$name\" >$name</option>\n";
        }
    }
    echo "</select>";
}
