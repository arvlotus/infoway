<?php

$pageInfo = array(
    'title' => 'Tela de pagamento - Inforway',
    'description' => 'Efetue seu pagamento!.',
    'pageName' => 'pay',
);

$pageName = $pageInfo['pageName'];
include_once(__DIR__ . '/components/public/header.php');

include_once('helpers/database.php');

$connection = connectDatabase();

if (isset($_GET['course_id'])) {
    $course_id = $_GET['course_id'];
} else {
    // Se nenhum ID foi fornecido, redirecione para uma página de erro ou para a lista de posts
    header("Location: ../404.php");
    exit();
}

$query = "SELECT * FROM courses WHERE id = '$course_id'";

$result = mysqli_query($connection, $query);

$courses = array();

if (mysqli_num_rows($result) > 0) {
    $courses = mysqli_fetch_all($result, MYSQLI_ASSOC);
}

?>

<!-- Area de pagamento -->

<main class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card-pay">
                <h2 class="text-center mt-5">
                    Área de pagamento
                </h2>
                <form action="requests/request_buy.php" method="POST" enctype="multipart/form-data">

                    <div class="mb-3">
                        <label for="number" class="form-label">Número do Cartão:</label>
                        <input type="text" class="form-control" style="width: 550px;" id="number" name="number" required>
                    </div>

                    <div class="mb-3">
                        <label for="number" class="form-label">CVC:</label>
                        <input type="text" class="form-control" style="width: 200px; display: inline-block;" id="number" name="number" required>

                        <label for="validade" class="form-label">Validade:</label>
                        <input type="month" style="width: 200px; display: inline-block;" class="form-control" id="validade" name="validade" required pattern="[0-9]{4}-[0-9]{2}" min="2024-01" max="2030-12">
                    </div>

                    <div class="mb-3">
                        <?php foreach ($courses as $course) { ?>
                            <div class="mb-3">
                                <label for="text" class="form-label">Valor: <?php echo $course['price']; ?> </label>
                            </div>
                            <div class="mb-3">
                                <label for="text" class="form-label">Professor: <?php echo $course['teacher']; ?> </label>
                            </div>
                        <?php } ?>
                        <label class="mb-3" for="cartão">Escolha a Bandeira do Seu Cartão:</label>
                        <br>
                        <label class="mb-3">
                            <input type="radio" name="opcao" value="opcao1"> <img class="w-25" src="src/img/mastercard.png" alt="mastercard">
                        </label>
                        <br>
                        <label class="mb-3">
                            <input type="radio" name="opcao" value="opcao2"> <img style="width: 65px;" src="src/img/visa.jpg" alt="visa">
                        </label>
                        <br>
                        <label class="mb-3">
                            <input type="radio" name="opcao" value="opcao3"> <img style="width: 65px;" src="src/img/cielo.jpeg" alt="mastercard">
                        </label>
                        <div class="justify-content-center">
                            <button type="submit" class="btn btn-crs justify-content-center">Comprar</button>
                        </div>
                        <?php foreach ($courses as $course) { ?>
                        <input type="hidden" name="courses" value="<?php echo $course['title']; ?>">
                        <?php } ?>
                </form>
            </div>
        </div>
    </div>
</main>