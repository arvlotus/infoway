<?php

$pageInfo = array(
  'title' => 'Pagina inicial - Inforway',
  'description' => 'Seja bem-vindo(a) ao Inforway.',
  'pageName' => 'index',
);

$pageName = $pageInfo['pageName'];
include_once(__DIR__ . '/components/public/header.php');
?>

<div class="carouselfundo mt-5 mb-5">
  <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="src/img/HARDWARE.png" class="d-block w-100" alt="imagen1">
      </div>
      <div class="carousel-item">
        <img src="src/img/HTMLCSSJAVA.jpeg" class="d-block w-100" alt="imagen3">
      </div>
      <div class="carousel-item">
        <img src="src/img/JAVASCRIPT.png" class="d-block w-100" alt="imagen3">
      </div>
      <div class="carousel-item">
        <img src="src/img/PHP POO.png" class="d-block w-100" alt="imagen3">
      </div>
      <div class="carousel-item">
        <img src="src/img/INFORMÁTICA BÁSICA.png" class="d-block w-100" alt="imagen3">
      </div>
      <div class="carousel-item">
        <img src="src/img/LÓGICA DE PROGRAMAÇÃO.png" class="d-block w-100" alt="imagen3">
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="card-cursos col-md-4 mb-5">
    <h4>
      HTML5, CSS & JAVASCRIPT
    </h4>
    <div class="cursoimg">
      <img class="curso-img mb-2" src="src/img/ICONS/HTML5.png" alt="informaticabasica">
    </div>
    <p>
      Você irá aprender HTML, CSS e JavaScript e ultilizar para criar sites e aplicativos da Web
    </p>
  </div>
  <div class="card-cursos col-md-4 mb-5">
    <h4>
      Logica de programação
    </h4>
    <div class="cursoimg">
      <img class="curso-img mb-2" src="src/img/ICONS/LÓGICA DE PROGRAMAÇÃO.png" alt="informaticabasica">
    </div>
    <p>
    Neste curso, vamos apresentar conceitos de programação para você iniciar sua vida profissional.
    </p>
  </div>
  <div class="card-cursos col-md-4 mb-5">
    <h4>
      Informática básica
    </h4>
    <div class="cursoimg">
      <img class="curso-img mb-2" src="src/img/ICONS/INFORMÁTICA BÁSICA.png" alt="informaticabasica">
    </div>
    <p>
      A Informática básica te possibilita desenpenhar diferentes tarefas em diversos cargos.
    </p>
  </div>
</div>

<div class="ver-mais mb-5">
  <a href="cursos.php" style=" width :400px; " class="btn btn-index">
    <h1>Ver mais cursos</h1>
  </a>
</div>


<main class="container-index">

  <div class="textinicio">
    <p>Bem-vindo ao nosso universo digital onde a inovação encontra a informação!<br> No coração do ciberespaço,
      é com grande entusiasmo que recebemos você<br> em nosso site de informática, um espaço dedicado à descoberta
      e ao aprimoramento constante.<br> Prepare-se para uma imersão no universo fascinante da informática,<br>
      onde a cada clique uma nova porta se abre para possibilidades infinitas.<br> Estamos empolgados em tê-lo
      conosco nesta jornada eletrônica.</p>
    <form class="form-inline my-2 my-lg-0">
      <a class="btn btn-custom mt-3 mb-3" href="register.php">
        Junte-se a nós
      </a>
    </form>
  </div>

  <div class="imageinicio p-3">
    <img src="src/img/INFORWAY.png" alt="logo">
  </div>

</main>


<?php
include_once(__DIR__ . '/components/public/footer.php');
?>