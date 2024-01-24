<?php

include_once('../helpers/isActivePage.php');

?>
<?php
if ($_SESSION['user_level'] == 'Professor') {
?>
    <div class="list-group">
        <span href="profile.php" class="list-group-item fw-bold">
            Minha área
        </span>
        <a href="profile.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'profile') ?>"><i class="bi bi-person-gear"></i> Perfil</a>
        <a href="forumpost.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'posts') ?>"><i class="bi bi-stickies"></i> Fórum</a>
    </div>

<?php
}
?>

<?php
if ($_SESSION['user_level'] == 'Admin' || $_SESSION['user_level'] == 'Aluno') {

?>

    <div class="list-group">
        <span href="profile.php" class="list-group-item fw-bold">
            Minha área
        </span>
        <a href="profile.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'profile') ?>"><i class="bi bi-person-gear"></i> Perfil</a>
        <a href="meucurso.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'course') ?>"><i class="bi bi-mortarboard"></i> Meus Cursos</a>
        <a href="forumpost.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'posts') ?>"><i class="bi bi-stickies"></i> Fórum</a>
    </div>

<?php
}
?>

<?php
if ($_SESSION['user_level'] == 'Admin') {
?>
    <div class="list-group mt-4">
        <span href="profile.php" class="list-group-item fw-bold">
            Administração
        </span>
        <a href="student.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'student') ?>"><i class="bi bi-people"></i> Gerenciar Alunos</a>
        <a href="courses.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'courses') ?>"><i class="bi bi-journals"></i> Gerenciar Cursos</a>
        <a href="banners.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'banners') ?>"><i class="bi bi-images"></i> Gerenciar Banners</a>
        <a href="posts.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'posts') ?>"><i class="bi bi-stickies"></i> Gerenciar Postagens</a>
    </div>
<?php
}
?>