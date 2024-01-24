<?php
session_start();

include_once('../../helpers/database.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtém os dados do formulário
    $post_id = $_POST["post_id"];
    $title = $_POST["title"];
    $content = $_POST["content"];

    $connection = connectDatabase();

    // Usar prepared statements para proteger contra SQL injection
    $title = mysqli_real_escape_string($connection, $title);
    $content = mysqli_real_escape_string($connection, $content);

    // Atualizar os dados do post no banco de dados
    $query = "UPDATE posts SET title = '$title', content = '$content' WHERE id = '$post_id'";
    if (mysqli_query($connection, $query)) {
        $_SESSION['message'] = 'Post editado com sucesso.';
        $_SESSION['message_type'] = 'success';
    } else {
        $_SESSION['message'] = 'Erro ao editar o post.';
        $_SESSION['message_type'] = 'danger';
    }
}

// Redirecionar de volta para a página de edição ou para a lista de posts
header("Location: ../posts.php");
exit();
