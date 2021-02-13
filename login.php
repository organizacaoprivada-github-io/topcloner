<?php
include("includes/sessions.inc.php");

if (is_numeric($blogger_id) && $blogger_id == 1 && $blogger_login == $mylogin && $blogger_password == $mypassword) {

    $myurl = $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);
    $myurl = rtrim($myurl, "/");
    ?>
    <h4>Welcome <? echo $_SESSION['blogger_login']; ?>! <br/><br/>

        <div class="mytd">
            <table>

                <tr>
                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="cloner.php"><img class="login-4"
                                                                                            src="admin-blogify/images/edit_page.jpg"/></a>
                            </div>
                            <div class="login-5">Clone Tool<br/><em></em></div>
                        </div>
                    </td>

                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="header-update.php"><img class="login-4"
                                                                                                   src="admin-blogify/images/update_page.jpg"/></a>
                            </div>
                            <div class="login-5">Update the header.<br/><em></em></div>
                        </div>
                    </td>
                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="footer-update.php"><img class="login-4"
                                                                                                   src="admin-blogify/images/update_page.jpg"/></a>
                            </div>
                            <div class="login-5">Update the footer.<br/><em></em></div>
                        </div>
                    </td>

                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="password_update.php"><img class="login-4"
                                                                                                     src="admin-blogify/images/update_page.jpg"/></a>
                            </div>
                            <div class="login-5">Update your password<br/><em></em>
                            </div>
                        </div>
                    </td>
                </tr>
                <div id="clear"></div>
                <tr>
                    <td>
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="add.php"><img class="login-4"
                                                                                         src="admin-blogify/images/add_page.jpg"/></a>
                            </div>
                            <div class="login-5">Add a new page with:<br/>header and footer
                                files.<br/><em></em></div>
                        </div>
                    </td>

                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="add_ckc.php"><img class="login-4"
                                                                                             src="admin-blogify/images/add_page.jpg"/></a>
                            </div>
                            <div class="login-5">Add a new page with:<br/>header, footer and
                                CKEditor.<br/><em></em>
                            </div>
                        </div>
                    </td>

                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="add_file.php"><img class="login-4"
                                                                                              src="admin-blogify/images/add_page.jpg"/></a>
                            </div>
                            <div class="login-5">Add a new page with CKEditor<br/>without
                                header
                                and footer files. <span class="login-7"><em>Recommended</em></span>&nbsp;&nbsp;
                                &nbsp;<em></em></div>
                        </div>
                    </td>

                    <td class="no-lines" class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="upload_css.php"><img class="login-4"
                                                                                                src="admin-blogify/images/add_page.jpg"/></a>
                            </div>
                            <div class="login-5">Add a CSS or Javascript
                                file.<br/><em></em></div>
                        </div>
                    </td>
                </tr>
                <div id="clear"></div>
                <tr class="no-lines">
                    <td class="login-8">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="make_html.php"><img class="login-4"
                                                                                               src="admin-blogify/images/add_page.jpg"/></a>
                            </div>
                            <div class="login-5">Create Your Website<br/><em></em>
                            </div>
                        </div>
                    </td>
                    <td class="login-8">
                        <div class="login-2">
                            <div
                                class="login-3"><?php echo '<a class="no-lines" href="downloads/download_website.php?filename=website.zip"><img class="login-4" src="admin-blogify/images/add_delete_products.jpg" /></a></div><div class="login-5">Download Website Zip File<br/><em></em></div></div>';
                        ?></td>

                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="edit.php"><img class="login-4"
                                                                                          src="admin-blogify/images/edit_page.jpg"/></a>
                            </div>
                            <div class="login-5">Edit content<br/><em></em></div>
                        </div>
                    </td>

                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="make_html.php"><img class="login-4"
                                                                                               src="admin-blogify/images/edit_page.jpg"/></a>
                            </div>
                            <div class="login-5">Make HTML<br/><em></em></div>
                        </div>
                    </td>

                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="make_zip.php"><img class="login-4"
                                                                                              src="admin-blogify/images/edit_page.jpg"/></a>
                            </div>
                            <div class="login-5">Make Zip<br/><em></em></div>
                        </div>
                    </td>


                    <td class="login-1">
                        <div class="login-2">
                            <div class="login-3"><a class="no-lines" href="logout.php"><img class="login-4"
                                                                                            src="admin-blogify/images/logout.jpg"/></a>
                            </div>
                            <div class="login-5">Log out</div>
                        </div>
                    </td>
                </tr>
    </h4></table>
    </div>

<?php

} else {

    ?>
    <h1 class="login-9">HTML to CMS in seconds!</h1>

    <form method=POST action="login.php">
        <table class="login-first">
            <tr>
                <td>
                    <input class="login-second" type=text name="login" value="Username">
                </td>
            </tr>
            <tr>
                <td>
                    <input class="login-second" type=password name="password" value="Password">
                </td>
            </tr>
            <tr class="login-third">
                <td>
                    <input class="login-fourth" type=submit value="SUBMIT">
                </td>
            </tr>
        </TABLE>
        <br>
    </form>

    <?php
    // die("You have no permission to use this page.");

}
?>
    <div class="dloads-clear"></div>
    </div>

    </div>

    </div>
<?php
include_once('footer.php'); // Require the HTML footer.
