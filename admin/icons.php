<?php

$pageInfo = array(
    'title' => 'Listagem de Icones',
    'description' => 'Visualize e gerencie os icones do banco de dados.',
    'pageName' => 'icons',
);

include_once('../components/admin/header.php');

include_once('../helpers/database.php');

$connection = connectDatabase();

$query = "SELECT * FROM icons";

$result = mysqli_query($connection, $query);

$icons = array();

if (mysqli_num_rows($result) > 0) {
    $icons = mysqli_fetch_all($result, MYSQLI_ASSOC);
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
            <a href="create_icon.php" class="btn btn-success my-2 my-sm-0 text-light">
                Adicionar um novo icone
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
                                <th>Data de Registro</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php foreach ($icons as $icon) { ?>

                                <tr>
                                    <td>
                                    <img src="../<?= $icon['image']; ?>" alt="Imagem Existente" class="mt-2"
                                style="max-width: 100px;">
                                    </td>
                                    <td>
                                        <?php echo $icon['title']; ?>
                                    </td>
                                    <td>
                                        <?php echo date('d/m/Y', strtotime($icon['created_at'])); ?>
                                    </td>
                                    <td>
                                    <div class="dropdown">
                                            <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                                Ações
                                            </button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <li>
                                                    <a class="dropdown-item" href="edit_icon.php?icon_id=<?= $icon['id'] ?>"><i class="bi bi-pencil-square"></i>
                                                        Editar</a>
                                                </li>

                                                <li>
                                                    <a class="dropdown-item text-danger" href="requests/request_delete_icon.php?icon_id=<?= $icon['id'] ?>"><i class="bi bi-trash-fill"></i>
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
$currentPage = 'icons';
include_once('../components/admin/footer.php');
?>