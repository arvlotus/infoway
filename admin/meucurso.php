<?php
$pageInfo = array(
    'title' => 'Meus Cursos',
    'description' => 'Visualize seus cursos ativos.',
    'pageName' => 'mycourses',
);

include_once('../helpers/database.php');

include_once('../components/admin/header.php');

$user_id = $_SESSION['user_id'];

$connection = connectDatabase();

// Selecionar cursos comprados pelo usuário
$query = "SELECT * FROM purchases";

$result = mysqli_query($connection, $query);

$mycourses = array();

if (mysqli_num_rows($result) > 0) {
    $mycourses = mysqli_fetch_all($result, MYSQLI_ASSOC);
}

?>

<main class="container py-5">
    <div class="row">
        <!-- Sidebar do dashboard -->
        <div class="col-md-3">
            <?php
            include_once('../components/admin/menu_sidebar.php');
            ?>
        </div>
        <section class="col-md-9">
            <h2><?= $pageInfo['title'] ?></h2>
            <p><?= $pageInfo['description'] ?></p>
            <div class="row">
                <?php foreach ($mycourses as $mycourse) { ?>
                    <div class="col-md-4">
                        <div class="card-mycourse">
                            <h4><?= $mycourse['course_id']; ?></h4>
                        </div>
                    </div>
                <?php } ?>
            </div>

        </section>
</main>

<?php
$currentPage = 'mycourses';
include_once('../components/admin/footer.php');
?>