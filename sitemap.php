<?php
include('public.inc.php');
$db = public_db_connect();

$dir = getcwd();
//echo $dir;
$files = scandir($dir);
//print_r($files);
foreach ($files as $file) {
    $my_extension = pathinfo($file, PATHINFO_EXTENSION);
    if ($my_extension == 'php') {
        // echo "<li>$file </li>";
        $files_array[] = $file;
    }
}

header('Content-Type: application/xml');
echo '<?xml version="1.0" encoding="UTF-8" ?>' . '<?xml-stylesheet type="text/xsl" href="sitemap.xsl"?>';

echo '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">';

$command = "SELECT * FROM cms";
$result = mysqli_query($db, $command);
while ($row = mysqli_fetch_assoc($result)) {
    if (!in_array(stripslashes($row['url']), $files_array)) {
        //remove from database
        continue;
    }

    $myurl = 'http://' . $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
    $myurl = str_replace("sitemap.php", $url, htmlentities(stripslashes($row['url'])));

    echo "\n" . "<url>\n" . "<loc>" . $myurl . "</loc>\n";
    echo "<lastmod>" . date("c", strtotime($row['date'])) . "</lastmod>\n";
    echo "<priority>0.6</priority>\n";
    echo "<changefreq>monthly</changefreq>\n";
    echo "</url>\n";

}
?>
</urlset>