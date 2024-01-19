<?php
session_start();

include_once('../../helpers/database.php');

$icon_id = $_GET['icon_id'];
$connection = connectDatabase();

$query = "SELECT * FROM icons WHERE id = '$icon_id'";
$result = mysqli_query($connection, $query);

if (mysqli_num_rows($result) > 0) {
    $delete_query = "DELETE FROM icons WHERE id = '$icon_id'";
    $delete_result = mysqli_query($connection, $delete_query);

    if ($delete_result) {
        $_SESSION['message'] = "O icone foi deletado com sucesso.";
        $_SESSION['message_type'] = "success";
        header("Location: ../icons.php");
    }
}
?>