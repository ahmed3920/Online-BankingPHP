<?php
session_start();
if (isset($_SESSION['staff_login'])) {

    header('location:staff_profile.php');
}


?>
<?php
include 'db_connect.php';
if (isset($_POST['staff_login-btn'])) {

    if (!empty($_POST['staff_id']) && !empty($_POST['password'])) {

        $staff_id = $_POST['staff_id'];
        $password = $_POST['password'];


        $sql = "SELECT * FROM bank_staff where staff_id='" . $staff_id . "' and Password='" . $password . " ' ";
        $query = mysqli_query($conn, $sql);
        $numrows = mysqli_num_rows($query);
        if ($numrows != 0) {
            while ($row = mysqli_fetch_array($query)) {
                $dbstaff_id = $row['staff_id'];
                $dbpassword = $row['Password'];
            }
            if ($staff_id == $dbstaff_id && $password == $dbpassword) {
                $_SESSION['staff_login'] = true;
                $_SESSION['staff_name'] = $row['staff_name'];
                $_SESSION['staff_id'] = $row['staff_id'];
                date_default_timezone_set('Asia/Kolkata');
                $_SESSION['staff_last_login'] = date("d/m/y h:i:s A");
                header('location:staff_profile.php');
            }
        } else {

            echo '<script>alert("Incorrect Id/Password.")</script>';
        }
    } else {
        echo '<script>alert("All fields are required!")</script>';
    }
}



?>
<html>

<head>
    <title>Staff Page</title>

    <link rel="stylesheet" type="text/css" href="css/staff_login.css" />

</head>

<body>

    <?php include 'header.php' ?>
    <div class="staff_login_container">

        <form method="post">

            <br>
            <div class="formspace">
                <p class="formspace2">

                <div class="form">

                    <label class="login">Staff</label>
                    <div class="input_field">
                        <label class="userdetail">customer ID</label><br>
                        <input class="customer_id" type="text" name="staff_id" required /><br>
                        <label class="userdetail">Password</label><br>
                        <input class="password" type="password" name="password" required /><br>
                        <input class="login-btn" type="submit" name="staff_login-btn" value="LOGIN" /><br>
                        <a class="help"><label class="label_help">FORGET PASSWORD ?</label></a>
                        <img class="userloginimg" src="img/home-logo-hi.png" height="90px" width="90px">
                    </div>
                </div>
            </div>
    </div>
    </form>
    <br>

    <?php include 'footer.php' ?>
</body>

</html>