<?php 

include_once('../helpers/isActivePage.php');

?>

<div class="list-group">
    <span href="profile.php" class="list-group-item fw-bold">
        Meu Aprendizado
    </span>
    <a href="profile.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'profile') ?>"><i class="bi bi-person-gear"></i> Perfil</a>
    <a href="meucurso.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'profile') ?>"><i class="bi bi-journals"></i> Meus Cursos</a>
</div>

<?php 
        if($_SESSION['user_level'] == 'admin'){
    ?>
    <div class="list-group mt-4">
    <span href="profile.php" class="list-group-item fw-bold">
        Administração
    </span>
        <a href="student.php" class="list-group-item list-group-item-action <?= isActivePage($currentPage, 'student') ?>"><i class="bi bi-people"></i> Gerenciar Alunos</a>
    </div>
<?php 
    }
?>

