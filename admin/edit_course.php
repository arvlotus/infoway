<?php

include_once('../helpers/database.php');

// Verifica se um ID de post foi passado via GET
if (isset($_GET['course_id'])) {
    $course_id = $_GET['course_id'];
} else {
    // Se nenhum ID foi fornecido, redirecione para uma página de erro ou para a lista de posts
    header("Location: ../404.php");
    exit();
}

// Conecta-se ao banco de dados
$connection = connectDatabase();

// Obtém os dados do post existente
$query = "SELECT title, content, image, price, teacher FROM courses WHERE id = '$course_id'";
$result = mysqli_query($connection, $query);

// Verifica se o post existe
if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $existing_title = $row['title'];
    $existing_content = $row['content'];
    $existing_price = $row['price'];
    $existing_teacher = $row['teacher'];
    $existing_image = $row['image'];
} else {
    // Se o post não existir, redirecione para uma página de erro ou para a lista de posts
    header("Location: ../404.php");
    exit();
}

// Informações da página
$pageInfo = array(
    'title' => 'Editar Curso',
    'description' => 'Edite o curso existente.',
    'pageName' => 'edit_course',
);

include_once('../components/admin/header.php');
?>

<!-- Conteúdo do dashboard -->
<main class="container py-5">
    <div class="row">
        <!-- Sidebar do dashboard -->
        <div class="col-md-3">
            <?php include_once('../components/admin/menu_sidebar.php'); ?>
        </div>
        <!-- Main do dashboard -->
        <section class="col-md-9">
            <h2><?= $pageInfo['title'] ?></h2>
            <p><?= $pageInfo['description'] ?></p>
            <hr>
            <div class="card-alunos">
                <div class="card-body">
                    <?php if (isset($_SESSION['message'])) { ?>
                        <div class="alert alert-<?= $_SESSION['message_type'] ?>" role="alert">
                            <?= $_SESSION['message']; ?>
                        </div>
                    <?php unset($_SESSION['message']); } ?>
                    <form action="requests/request_edit_course.php" method="post" enctype="multipart/form-data">
                        <!-- Adiciona um campo oculto para enviar o ID do post -->
                        <input type="hidden" name="course_id" value="<?= $course_id ?>">
                        <div class="form-group">
                            <label for="title">Título do Curso</label>
                            <!-- Preenche o campo com o título existente -->
                            <input type="text" class="form-control" id="title" name="title"
                                value="<?= $existing_title ?>">
                        </div>
                        <div class="form-group">
                            <label for="content">Descrição do Curso</label>
                            <!-- Preenche o campo com o título existente -->
                            <textarea class="form-control" id="content" rows="5" required name="content"><?= $existing_content ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="content">Preço do Curso</label>
                            <!-- Preenche o campo com o título existente -->
                            <input type="text" class="form-control" id="price" name="price"
                                value="<?= $existing_price?>">
                        </div>
                        <div class="form-group">
                            <label for="content">Professor do Curso</label>
                            <!-- Preenche o campo com o título existente -->
                            <input type="text" class="form-control" id="teacher" name="teacher"
                                value="<?= $existing_teacher?>">
                        </div>
                        <div class="form-group">
                            <label for="image">Imagem do Curso</label>
                            <input type="file" class="form-control-file mt-3" id="image" name="image" accept="image/*">

                            <div>
                                <!-- Exibe a imagem existente para referência -->
                                <img src="../<?= $existing_image ?>" alt="Imagem Existente" class="img-thumbnail mt-2"
                                    style="max-width: 200px;">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary mt-3">Salvar Alterações</button>
                    </form>
                </div>
            </div>
        </section>
    </div>
</main>

<?php
$currentPage = 'edit_banner';
include_once('../components/admin/footer.php');
?>
