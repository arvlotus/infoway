<?php
session_start();

include_once('../../helpers/database.php');

$course_id = $_GET['course_id'];
$connection = connectDatabase();

$query = "SELECT * FROM courses WHERE id = '$course_id'";
$result = mysqli_query($connection, $query);

if (mysqli_num_rows($result) > 0) {
    $delete_query = "DELETE FROM courses WHERE id = '$course_id'";
    $delete_result = mysqli_query($connection, $delete_query);

    if ($delete_result) {
        $_SESSION['message'] = "O Curso foi deletado com sucesso.";
        $_SESSION['message_type'] = "success";
        header("Location: ../courses.php");
    }
}
?>