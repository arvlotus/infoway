<?php

$pageInfo = array(
    'title' => 'Listagem de Cursos',
    'description' => 'Visualize e gerencie os cursos.',
    'pageName' => 'courses',
);

include_once('../components/admin/header.php');

include_once('../helpers/database.php');

$connection = connectDatabase();

$query = "SELECT * FROM courses";

$result = mysqli_query($connection, $query);

$courses = array();

if (mysqli_num_rows($result) > 0) {
    $courses = mysqli_fetch_all($result, MYSQLI_ASSOC);
}

?>


<!-- Conteúdo do dashboard -->
<main class="container py-5">
    <div class="row">
        <!-- Sidebar do dashboard -->
        <div class="col-md-3">
            <?php
            include_once('../components/admin/menu_sidebar.php');
            ?>
        </div>
        <!-- Main do dashboard -->
        <section class="col-md-9">
            <h2><?= $pageInfo['title'] ?></h2>
            <p><?= $pageInfo['description'] ?></p>
            <a href="create_course.php" class="btn btn-success my-2 my-sm-0 text-light">
                Adicionar um novo curso
            </a>
            <hr>

            <?php if (isset($_SESSION['message'])) { ?>
                <div class="alert alert-<?= $_SESSION['message_type'] ?>" role="alert">
                    <?php echo $_SESSION['message']; ?>
                </div>
            <?php unset($_SESSION['message']);
            } ?>


            <div class="card-alunos">
                <div class="card-body">
                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th>Imagem</th>
                                <th>Título</th>
                                <th>Descrição</th>
                                <th>Preço</th>
                                <th>Professor</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php foreach ($courses as $course) { ?>

                                <tr>
                                    <td>
                                    <img src="../<?= $course['image']; ?>" alt="Imagem Existente" class="mt-2"
                                style="max-width: 100px;">
                                    </td>
                                    <td>
                                        <?php echo $course['title']; ?>
                                    </td>
                                    <td>
                                        <?php echo $course['content']; ?>
                                    </td>
                                    <td>
                                        <?php echo $course['price']; ?>
                                    </td>
                                    <td>
                                        <?php echo $course['teacher']; ?>
                                    </td>
                                    <td>
                                    <div class="dropdown">
                                            <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                                Ações
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <li>
                                                    <a class="dropdown-item" href="edit_course.php?course_id=<?= $course['id'] ?>"><i class="bi bi-pencil-square"></i>
                                                        Editar</a>
                                                </li>

                                                <li>
                                                    <a class="dropdown-item text-danger" href="requests/request_delete_courses.php?course_id=<?= $course['id'] ?>"><i class="bi bi-trash-fill"></i>
                                                        Excluir</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            <?php } ?>
                            <!-- Adicione mais linhas conforme necessário -->
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</main>

<?php
$currentPage = 'courses';
include_once('../components/admin/footer.php');
?>