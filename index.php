<?php
$currentPage = 'index';
include_once(__DIR__ . '/components/header.php');
?>

<section class="img1">
<div class="iniciofundo">

  
  <main class="container">
    
    <div class="textinicio">
      <p>Bem-vindo ao nosso universo digital onde a inovação encontra a informação!<br> No coração do ciberespaço,
      é com grande entusiasmo que recebemos você<br> em nosso site de informática, um espaço dedicado à descoberta
        e ao aprimoramento constante.<br> Prepare-se para uma imersão no universo fascinante da informática,<br>
        onde a cada clique uma nova porta se abre para possibilidades infinitas.<br> Estamos empolgados em tê-lo 
        conosco nesta jornada eletrônica.</p>
        <form class="form-inline my-2 my-lg-0">
          <a class="btn btn-custom mb-3" href="register.php">
            Junte-se a nós
          </a>
        </form>
    </div>

    
  </main>

  <div class="imageinicio p-3">
    <img src="css/Infoway/INFORWAY.png" alt="logo" class="w-75">
  </div>

</div>
</section>

<div class="textinicio2">
<h1 class="text-center mt-5">
  Cursos em alta:
</h1>
</div>

<section class="carouselfundo mt-5">
  <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="css/Infoway/HARDWARE.png" class="d-block w-100" alt="imagen1">
      </div>
      <div class="carousel-item">
        <img src="css/Infoway/JAVASCRIPT.png" class="d-block w-100" alt="imagen2">
      </div>
      <div class="carousel-item">
        <img src="css/Infoway/PHP POO.png" class="d-block w-100" alt="imagen3">
      </div>
      <div class="carousel-item">
        <img src="css/Infoway/HTMLCSSJAVA.jpeg" class="d-block w-100" alt="imagen3">
      </div>
      <div class="carousel-item">
        <img src="css/Infoway/INFORMATICABASICA.jpeg" class="d-block w-100" alt="imagen3">
      </div>
    </div>
  </div>
</section>

<?php
include_once(__DIR__ . '/components/footer.php');
?>