<?php
session_start();


include_once('../../helpers/database.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_id = $_POST["user_id"];
    $name = $_POST["name"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    
    $connection = connectDatabase();

    $name = mysqli_real_escape_string($connection, $_POST['name']);
    $email = mysqli_real_escape_string($connection, $_POST['email']);
    $password = mysqli_real_escape_string($connection, $_POST['password']);

    $hashed_password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // Adiciona os outros campos à query
    $query = "UPDATE users SET name = '$name', email = '$email', password = '$hashed_password', WHERE id = '$user_id'";
    
    if (mysqli_query($connection, $query)) {
        $_SESSION['message'] = 'Aluno editado com sucesso.';
        $_SESSION['message_type'] = 'success';
    } else {
        $_SESSION['message'] = 'Erro ao aluno o perfil.';
        $_SESSION['message_type'] = 'error';
    }

    header("Location: ../student.php");
    
    mysqli_close($connection);
}
?>
