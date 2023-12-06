<?php
include_once(__DIR__ . '/components/header.php');
?>


<section class="iniciofundo">
<main class="container">
    <h1 class="text-center mt-3 mb-1">Pagina Inicial</h1>
    <small class="form-text text-muted ">
      <h4 class="text-center mb-4">Cursos mais acessados no momento:</h4>
    </small>
  </main>
</section>

<section class="carouselfundo">
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="css/Infoway/HARDWARE.png" class="d-block w-50 mx-auto" alt="imagen1">
    </div>
    <div class="carousel-item">
      <img src="css/Infoway/JAVASCRIPT.png" class="d-block w-50 mx-auto" alt="imagen2">
    </div>
    <div class="carousel-item">
      <img src="css/Infoway/PHP POO.png" class="d-block w-50 mx-auto" alt="imagen3">
    </div>
    <div class="carousel-item">
      <img src="css/Infoway/HTMLCSSJAVA.jpeg" class="d-block w-50 mx-auto" alt="imagen3">
    </div>
    <div class="carousel-item">
      <img src="css/Infoway/INFORMATICABASICA.jpeg" class="d-block w-50 mx-auto" alt="imagen3">
    </div>
  </div>
</div>
</section>

<?php
include_once(__DIR__ . '/components/footer.php');
?>