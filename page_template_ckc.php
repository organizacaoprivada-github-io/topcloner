<?php
include('public.inc.php');
session_start();
$db = public_db_connect();

$myurl = basename(__FILE__);

$cms_page_url = $myurl;

$command = "SELECT cms_id FROM cms where url='$cms_page_url';";
$result = mysqli_query($db, $command);
while ($row = mysqli_fetch_assoc($result)) {
    // echo $row['cms_id'];
//set var inside loop		 
    $cms_id = $row['cms_id'];
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
    // echo $row['title'];
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

} else {

    //kent new
    $command = "SELECT top FROM cms where cms_id='$cms_id';";
    $result = mysqli_query($db, $command);
    while ($data = mysqli_fetch_object($result)) {

    }

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
?>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <script src="ckeditor/_samples/sample.js" type="text/javascript"></script>
<?php
//$db = public_db_connect();
if (isset($_POST['top'])) {
    $top = mysqli_real_escape_string($db, $_POST['top']);
}

if (!isset($top)) {
    $error_message = "";
} #now, check for proper formats for all the inputs
else {
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
            $pattern2 = "/IGNORE_THIS_PLACEHOLDER(.*)IGNORE_THIS_PLACEHOLDER_END/si";

            if (preg_match($pattern2, $top, $match2)) {
                $top = str_replace($match2[0], "", $top);
            }
            $command = "UPDATE cms SET top='$top' WHERE cms_id='$cms_id';";
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
// }

?>

    <span class="footer-1">
    <?
    if ($error_message) {
        echo $error_message;
    }
    ?>
</span>
<?php include('upload.php'); ?>
    <form class="page-template-1" method="POST"
          action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"], ENT_QUOTES, "utf-8"); ?>">
    <p>

    <textarea cols="80" id="editor1" name="top" rows="10">
        <?php
        $command = "SELECT top FROM cms where cms_id='$cms_id';";
        $result = mysqli_query($db, $command);
        while ($data = mysqli_fetch_object($result)) {
            $textarea_in = strstr($data->top, '</textarea>');
            if ($textarea_in) {
                $code = str_replace("</textarea>", "</textareatag>", $data->top);
            } else {
                echo htmlspecialchars_decode(stripslashes($data->top));
            }
        }

        // styling

        $command_head = "SELECT top FROM cms_header WHERE id=1";
        $result_head = mysqli_query($db, $command_head);
        $row_head = mysqli_fetch_assoc($result_head);
        $my_header = htmlspecialchars_decode(stripslashes($row_head['top']));


        $pattern = "/<head>(.*)<\/head>/si";

        if (preg_match($pattern, $my_header, $match)) {

            echo "IGNORE_THIS_PLACEHOLDER" . $match[0] . "IGNORE_THIS_PLACEHOLDER_END";
        } else {
            echo 'No head tags in header file!<br/>';
        }
        ?>
        </body>
    </textarea>
    <script type="text/javascript">
        //<![CDATA[

        CKEDITOR.replace('editor1',
            {
                fullPage: false,
                /*
                 * Style sheet for the contents
                 */
                contentsCss: 'body {color:#000; background-color#:FFF;}',
                /*
                 * Simple HTML5 doctype
                 */
                docType: '<!DOCTYPE HTML>',
                /*
                 * Core styles.
                 */
                coreStyles_bold: {element: 'b'},
                coreStyles_italic: {element: 'i'},
                coreStyles_underline: {element: 'u'},
                coreStyles_strike: {element: 'strike'},
                /*
                 * Font face
                 */
                // Define the way font elements will be applied to the document. The "font"
                // element will be used.
                font_style: {
                    element: 'font',
                    attributes: {'face': '#(family)'}
                },
                /*
                 * Font sizes.
                 */
                fontSize_sizes: 'xx-small/1;x-small/2;small/3;medium/4;large/5;x-large/6;xx-large/7',
                fontSize_style: {
                    element: 'font',
                    attributes: {'size': '#(size)'}
                },
                /*
                 * Font colors.
                 */
                colorButton_enableMore: true,
                colorButton_foreStyle: {
                    element: 'font',
                    attributes: {'color': '#(color)'}
                },
                colorButton_backStyle: {
                    element: 'font',
                    styles: {'background-color': '#(color)'}
                },
                /*
                 * Styles combo.
                 */
                stylesSet: [
                    {name: 'Computer Code', element: 'code'},
                    {name: 'Keyboard Phrase', element: 'kbd'},
                    {name: 'Sample Text', element: 'samp'},
                    {name: 'Variable', element: 'var'},
                    {name: 'Deleted Text', element: 'del'},
                    {name: 'Inserted Text', element: 'ins'},
                    {name: 'Cited Work', element: 'cite'},
                    {name: 'Inline Quotation', element: 'q'}
                ],
                on: {'instanceReady': configureHtmlOutput}
            });

        /*
         * Adjust the behavior of the dataProcessor to avoid styles
         * and make it look like FCKeditor HTML output.
         */
        function configureHtmlOutput(ev) {
            var editor = ev.editor,
                dataProcessor = editor.dataProcessor,
                htmlFilter = dataProcessor && dataProcessor.htmlFilter;

// Out self closing tags the HTML4 way, like <br>.
            dataProcessor.writer.selfClosingEnd = '>';

// Make output formatting behave similar to FCKeditor
            var dtd = CKEDITOR.dtd;
            for (var e in CKEDITOR.tools.extend({}, dtd.$nonBodyContent, dtd.$block, dtd.$listItem, dtd.$tableContent)) {
                dataProcessor.writer.setRules(e,
                    {
                        indent: true,
                        breakBeforeOpen: true,
                        breakAfterOpen: false,
                        breakBeforeClose: !dtd[ e ][ '#' ],
                        breakAfterClose: true
                    });
            }

// Output properties as attributes, not styles.
            htmlFilter.addRules(
                {
                    elements: {
                        $: function (element) {
                            // Output dimensions of images as width and height
                            if (element.name == 'img') {
                                var style = element.attributes.style;

                                if (style) {
                                    // Get the width from the style.
                                    var match = /(?:^|\s)width\s*:\s*(\d+)px/i.exec(style),
                                        width = match && match[1];

                                    // Get the height from the style.
                                    match = /(?:^|\s)height\s*:\s*(\d+)px/i.exec(style);
                                    var height = match && match[1];

                                    if (width) {
                                        element.attributes.style = element.attributes.style.replace(/(?:^|\s)width\s*:\s*(\d+)px;?/i, '');
                                        element.attributes.width = width;
                                    }

                                    if (height) {
                                        element.attributes.style = element.attributes.style.replace(/(?:^|\s)height\s*:\s*(\d+)px;?/i, '');
                                        element.attributes.height = height;
                                    }
                                }
                            }

                            // Output alignment of paragraphs using align
                            if (element.name == 'p') {
                                style = element.attributes.style;

                                if (style) {
                                    // Get the align from the style.
                                    match = /(?:^|\s)text-align\s*:\s*(\w*);/i.exec(style);
                                    var align = match && match[1];

                                    if (align) {
                                        element.attributes.style = element.attributes.style.replace(/(?:^|\s)text-align\s*:\s*(\w*);?/i, '');
                                        element.attributes.align = align;
                                    }
                                }
                            }

                            if (!element.attributes.style)
                                delete element.attributes.style;

                            return element;
                        }
                    },
                    attributes: {
                        style: function (value, element) {
                            // Return #RGB for background and border colors
                            return convertRGBToHex(value);
                        }
                    }
                });
        }


        /**
         * Convert a CSS rgb(R, G, B) color back to #RRGGBB format.
         * @param Css style string (can include more than one color
         * @return Converted css style.
         */
        function convertRGBToHex(cssStyle) {
            return cssStyle.replace(/(?:rgb\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\))/gi, function (match, red, green, blue) {
                red = parseInt(red, 10).toString(16);
                green = parseInt(green, 10).toString(16);
                blue = parseInt(blue, 10).toString(16);
                var color = [red, green, blue];

                // Add padding zeros if the hex value is less than 0x10.
                for (var i = 0; i < color.length; i++)
                    color[i] = String('0' + color[i]).slice(-2);

                return '#' + color.join('');
            });
        }
        //]]>
    </script>
    </p>
    <p>
        <input type="hidden" name="cms_id" value="<? echo htmlentities($cms_id); ?>">
        <input type=submit value="SUBMIT">
    </p>
    </form>
    </div></div></div>
<?php
include("footer.php");
mysqli_close($db);
