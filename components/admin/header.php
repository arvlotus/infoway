<?php
function isActivepage($currentPage, $pageName)
{
  if ($currentPage == $pageName) {
    return 'active';
  }
  return '';
}
?>



<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>
    <?= $currentPage == 'index' ? 'Infoway - Pagina Inicial' : ''; ?>
    <?= $currentPage == 'sobre' ? 'Infoway - Sobre' : ''; ?>
    <?= $currentPage == 'cursos' ? 'Infoway - Cursos' : ''; ?>
  </title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
  <link rel="stylesheet" href="./css/infoway.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">

</head>

<nav class="navbar navbar-expand-lg bg-custom mb-5">
  <div class="container">
    <a class="navbar-brand" href="index.php">
      <img src="css/Infoway/INFORWAY.PNG" alt="logoinfo" width="55" height="50">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item <?php echo isActivepage($currentPage, 'index'); ?>">
          <a class="nav-link active" href="index.php"><i class="bi bi-house p-2"></i>
            Pagina Inicial
          </a>
        </li>
        <li class="nav-item <?php echo isActivepage($currentPage, 'sobre'); ?>">
          <a class="nav-link" href="sobre.php"><i class="bi bi-info"></i>
            Sobre
          </a>
        </li>
        <li class="nav-item <?php echo isActivepage($currentPage, 'cursos'); ?>">
          <a class="nav-link" href="cursos.php"><i class="bi bi-book p-2"></i>
            Cursos
          </a>
        </li>
      </ul>
    </div>
    <div class="reglogin ml-auto">
      <form class="form-inline my-2 my-lg-0">
        <a class="btn btn-custom" href="register.php">
          Registre-se
        </a>
        <a class="btn btn-custom" href="register.php">
          Logar
        </a>
      </form>
    </div>
  </div>
</nav>

<body>