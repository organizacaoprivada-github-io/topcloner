<?php
if (ISSET($_SESSION['my_blogger_id']) && ISSET($_SESSION['blogger_login']) && ISSET($_SESSION['blogger_password'])) {

    ?>
    <nav id="nav">
        <ul>
            <li>
                <a href="login.php">Add Pages</a>
            </li>
            <li><a href="edit.php">Edit Pages</a></li>
            <li><a href="make_html.php">Make HTML</a></li>
            <li class="break"><a href="make_zip.php">Make Zip</a></li>
            <li><a href="help.php">Help</a></li>
            <li><a href="logout.php">Logout</a></li>
        </ul>
    </nav>
<?php
} else {
    ?>
    <!-- Nav -->
    <nav id="nav">
        <ul>
            <li>
                <a href="static.php">Home</a>
            </li>
            <li>
                <a href="http://codecanyon.net/user/kelchuk/portfolio">Order</a>

            </li>
            <li>
                <a href="about.php">About</a>
            </li>
            <li class="break">
                <a href="../demo/static.php">Demo</a>
            </li>
            <li><a href="help.php">Help</a>

            </li>
            <li><a href="login.php">Login</a></li>
        </ul>
    </nav>
<?php
}
