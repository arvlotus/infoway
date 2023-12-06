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
  <title>Infoway</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/infoway.css">
</head>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container">
    <a class="navbar-brand" href="index.php">
      <img src="css/Infoway/INFORWAY.PNG" alt="logoinfo" width="90" height="90">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">
            Pagina Inicial
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="sobre.php">
            Sobre
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cursos.php">
            Cursos
          </a>
        </li>
      </ul>
      </div>
      <div class="reglogin">
      <form class="form-inline my-2 my-lg-0">
        <a class="btn btn-warning" href="register.php">
          Registre-se
        </a>
        <a class="btn btn-warning" href="register.php">
          Logar
        </a>
      </form>
    </div>
  </div>
</nav>

<body>