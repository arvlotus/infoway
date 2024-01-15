<?php

 $pageInfo = array(
  'title' => 'Cadastro - Inforway',
  'description' => 'Cadastre-se no Inforway.',
  'pageName' => 'register',
);

$pageName = $pageInfo['pageName'];
include_once(__DIR__ . '/components/public/header.php');
?>

<main class="container py-5">
  <div class="row justify-content-center">
    <div class="col-md-8 col-lg-6">
      <div class="card-regi"
        <div class="card-body-reg">
          <h2 class="text-center mb-4">Cadastre-se</h2>
          
          <!-- Formulário de Cadastro -->
          <form action="requests/register_post.php" method="POST">
            <div class="mb-3">
              <label for="name" class="form-label">Nome Completo</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Digite seu nome completo" required>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">E-mail</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="Digite seu email" required>
            </div>
            <div class="mb-3">
            <label for="cpf">CPF</label>
            <input type="cpf" class="form-control" id="cpf" name="cpf" placeholder="Digite seu CPF" required>
          </div>
            <div class="mb-3">
              <label for="password" class="form-label">Senha</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Digite sua senha" required>
            </div>
            <button type="submit" class="btn btn-secondary btn-block">Cadastrar</button>
          </form>
          
          <div class="text-center mt-3">
            <p>Já tem uma conta? <a href="login.php">Faça login aqui.</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</main>

<?php
  include_once(__DIR__ . '/components/public/footer.php');
?>
