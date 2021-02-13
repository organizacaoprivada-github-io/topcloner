<?php
if (ISSET($_SESSION['my_blogger_id']) && ISSET($_SESSION['blogger_login']) && ISSET($_SESSION['blogger_password'])) {

    $command_sef = "SELECT sef from blog_sef";
    $result_sef = mysqli_query($db, $command_sef);
    $row = mysqli_fetch_assoc($result_sef);
    ?>
    <nav id="nav">
        <ul>
            <li>
                <a href="blog_add.php">Add Posts</a>
            </li>
            <li><a href="blog_my.php">Edit Posts</a></li>
            <li><a href="categories.php">Categories</a></li>
            <li class="break"><a href="settings.php">Settings</a></li>
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
                <a href="index.php">Blog</a>

            </li>
            <li>
                <a href="about.php">About</a>
            </li>
            <li class="break">
                <a href="help.php">Demo</a>
            </li>
            <li><a href="help.php">Help</a>
                <ul>
                    <li><a href="help.php#setup">Setup Files</a></li>
                    <li><a href="help.php#create">Create a Simple Post</a></li>
                    <li><a href="help.php#video">Create a Simple Video Post</a></li>
                    <li><a href="help.php#edit">Edit a Post</a></li>
                    <li><a href="help.php#delete">Delete a Post</a></li>
                    <li><a href="help.php#upload">Upload Images</a></li>
                    <li><a href="help.php#comments">Manage Comments</a></li>
                    <li><a href="help.php#sef">Manage SEF URLs</a></li>
                </ul>
            </li>
            <li><a href="login.php">Login</a></li>
        </ul>
    </nav>
<?php
}
