<?php
session_start();

include_once ('../../helpers/database.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $title = $_POST['title'];

    //  Configuração para o upload da imagem
    $targetDir = "../../src/img/icons/";
    $randomName = uniqid() . "_" . basename($_FILES['image']['name']);
    $targetFile = $targetDir . $randomName;
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

    // Validação da imagem

    if(!getimagesize($_FILES['image']['tmp_name']) || file_exists($targetFile) || $_FILES['image']['size'] > 5000000){
        $_SESSION['message'] = "Desculpe, a sua imagem deve ter no máximo 5MB.";
        $_SESSION['message_type'] = "danger";
        $uploadOk = 0;
        header("Location: ../create_icon.php");
    }

    if($uploadOk == 1 && move_uploaded_file($_FILES['image']['tmp_name'], $targetFile)){
        // Conecta no banco de dados
        $connection = connectDatabase();
        
        $title = mysqli_real_escape_string($connection, $title);

        $image = "src/img/icons/" . $randomName;

        $query = "INSERT INTO icons (title, image) VALUES ('$title', '$image')";

        if(mysqli_query($connection, $query)){
            $_SESSION['message'] = "Seu icone foi inserido com sucesso";
            $_SESSION['message_type'] = "success";
            header("Location: ../icons.php");
        }else{
            $_SESSION['message'] = "Ocorreu um erro ao cadastrar seu icone";
            $_SESSION['message_type'] = "danger";
            header("Location: ../create_icon.php");
        }
    }




}