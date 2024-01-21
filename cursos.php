<?php

$pageInfo = array(
 'title' => 'Cursos - Inforway',
 'description' => 'Cursos do Inforway.',
 'pageName' => 'courses',
);

$pageName = $pageInfo['pageName'];
include_once(__DIR__ . '/components/public/header.php');

include_once('helpers/database.php');

$connection = connectDatabase();

$query ="SELECT * FROM courses";

$result = mysqli_query($connection, $query);

$courses = array();

if (mysqli_num_rows($result) > 0){
  $courses = mysqli_fetch_all($result, MYSQLI_ASSOC);
}

?>

<!-- Sobre -->

<main class="container-curso">
  <div class="textcurso mt-3 mb-5">
    <h1 class="mt-3">
      Cursos
    </h1>
  </div>
  <div class="row">
    <?php foreach($courses as $course) { ?>
    <div class="card-curs col-md-4 mb-5">
      <h4>
        <?php echo $course['title']; ?>
      </h4>
      <div class="cursoimg">
        <img class="curso-img mb-2" src="<?= $course['image']; ?> " alt="<?php $course['title']; ?>">
      </div>
        <?php echo $course['content']; ?>
      <div class="button mb-3">
        <?php
        if (!isset($_SESSION['user_id'])) {
        ?>
          <a type="button" class="btn btn-crs" href="login.php">Logar</a>
        <?php
        } else { ?>
            <a type="button" class="btn btn-crs" href="pagamento.php?course_id=<?php echo $course['id']; ?>">Comprar</a>
        <?php
        }
        ?>
      </div>
    </div>
   <?php } ?>
</main>


<?php
include_once(__DIR__ . '/components/public/footer.php');
?>