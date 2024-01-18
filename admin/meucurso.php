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

$query = "SELECT
            courses.title as title,
            courses.content as content,
            courses.image as image,
            users.courses as user
          FROM courses
          JOIN users ON users.courses = courses.id
          WHERE users.id = '$user_id'";

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
                <?php foreach ($mycourses as $mycourse) {
                    if ($mycourse['user']> 0){  ?>
                    
                    <div class="card-curs col-md-9">
                        <h4>
                            <?php $mycourse['title']; ?>
                        </h4>
                        <div class="cursoimg">
                            <img class="curso-img mb-2" src=" <?php $mycourse['image']; ?> " alt="informaticabasica">
                        </div>
                        <p>
                            <?php $mycourse['content']; ?>
                        </p>
                        <div class="button mb-3">
                            <a type="button" class="btn btn-crs" href="detalhes.php?course_id=<?= $course['id'] ?>">Detalhes</a>
                        </div>
                    <?php }
                    } ?>
                    </div>
            </div>
        </section>
</main>

<?php
$currentPage = 'mycourses';
include_once('../components/admin/footer.php');
?>