<?php
session_start();

include_once ('../helpers/database.php');

$connection = connectDatabase();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_id = $_SESSION['user_id'];
    $courses = $_POST['courses'];

    $courses = mysqli_real_escape_string($connection, $courses);

    $query = "INSERT INTO purchases (user_id, course_id) VALUES ('$user_id', '$courses')";

    if (mysqli_query($connection, $query)) {
        header('Location: ../cursos.php');
    }
}
mysqli_close($connection);
