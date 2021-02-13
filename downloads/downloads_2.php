<?php
$myfilename = htmlspecialchars($_GET['filename'], ENT_QUOTES, "utf-8");
$filepath = "../uploads/" . $myfilename;

if (!preg_match('/^[a-zA-Z0-9_]+([a-zA-Z0-9_]*(\.|\-){1}+[a-zA-Z0-9_]?)+/i', $myfilename)) {
    die("die");
}

//$mystring = 'abc';
$findme = './';
$pos = strpos($myfilename, $findme);

if ($pos == true) {
    echo "hi";
} else {
    if (isset($_REQUEST["filename"])) {
        if (file_exists($filepath)) {
//download application
            header("Content-Type: application/force-download");
            //the filename will be given below
            header("Content-Disposition:filename=\"$myfilename\"");

            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename=' . basename($myfilename));
            header('Content-Transfer-Encoding: binary');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');

//open file in binary mode   
            $my_file = fopen($filepath, 'rb');
//output data
            // fpassthru($my_file);
            echo stream_get_contents($my_file);
//close file
            fclose($my_file);
        }
    }
}
