<?php

include_once('../helpers/isActivePage.php');

?>
<?php
if ($_SESSION['user_level'] == 'teacher') {
?>
    <div class="list-group">
        <span href="profile.php" class="list-group-item fw-bold">
            Minha área
        </span>
        <a href="profile.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'profile') ?>"><i class="bi bi-person-gear"></i> Perfil</a>
        <a href="posts.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'posts') ?>"><i class="bi bi-stickies"></i> Publicações</a>
    </div>

<?php
}
?>

<?php
if ($_SESSION['user_level'] == 'admin' || $_SESSION['user_level'] == 'student') {

?>

    <div class="list-group">
        <span href="profile.php" class="list-group-item fw-bold">
            Minha área
        </span>
        <a href="profile.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'profile') ?>"><i class="bi bi-person-gear"></i> Perfil</a>
        <a href="meucurso.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'course') ?>"><i class="bi bi-mortarboard"></i> Meus Cursos</a>
        <a href="posts.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'posts') ?>"><i class="bi bi-stickies"></i> Publicações</a>
    </div>

<?php
}
?>

<?php
if ($_SESSION['user_level'] == 'admin') {
?>
    <div class="list-group mt-4">
        <span href="profile.php" class="list-group-item fw-bold">
            Administração
        </span>
        <a href="student.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'student') ?>"><i class="bi bi-people"></i> Gerenciar Alunos</a>
        <a href="courses.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'courses') ?>"><i class="bi bi-journals"></i> Gerenciar Cursos</a>
        <a href="banners.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'banners') ?>"><i class="bi bi-images"></i> Gerenciar Banners</a>
    </div>
<?php
}
?>