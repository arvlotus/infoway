<?php
session_start();

include_once ('../helpers/database.php');

$connection = connectDatabase();

if (isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $courses = $_POST['courses'];

    $courses = mysqli_real_escape_string($connection, $courses);

    $query = "UPDATE users SET courses = '$courses' WHERE id = $user_id";

    $result = mysqli_query($connection, $query);

    if (mysqli_query($connection, $query)) {
        header('Location: ../cursos.php');
    }
}
mysqli_close($connection);
