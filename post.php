<?php

// Inclui o arquivo de conexão com o banco de dados
include_once('helpers/database.php');

// Conexão com o banco de dados
$connection = connectDatabase();

// Pegamos o ID da URL
$post_id = $_GET['post_id'];

// Validação para evitar injeção de SQL
$post_id = mysqli_real_escape_string($connection, $post_id);

// Query para selecionar o post acessado
$query = "SELECT 
    posts.title as title,
    posts.content as content,
    posts.image as image,
    posts.created_at as created_at,
    users.name as user_name,
    users.about as user_about,
    users.image as user_image
FROM posts
JOIN users ON users.id = posts.user_id
WHERE posts.id = '$post_id'";

// Execução da query para selecionar o post
$result = mysqli_query($connection, $query);

// Query para selecionar os comentários do post acessado
$queryComments = "SELECT 
    comments.id as id,
    comments.content as content,
    users.id as user_id,
    users.name as user_name,
    users.image as user_image
FROM comments
JOIN users ON users.id = comments.user_id
WHERE comments.post_id = '$post_id'";

// Execução da query para selecionar os comentários do post
$comments = mysqli_query($connection, $queryComments);

// Busca posts do mesmo autor ou, caso não tenha nenhum, busca posts aleatórios do banco
$querySimilarPosts = "SELECT
    posts.id as id,
    posts.title as title,
    posts.image as image,
    posts.created_at as created_at,
    users.name as user_name
FROM posts
JOIN users ON users.id = posts.user_id
WHERE posts.user_id = (SELECT user_id FROM posts WHERE id = '$post_id')
OR posts.id != '$post_id'
LIMIT 3";

// Execução da query para buscar posts relacionados
$similar_posts = mysqli_query($connection, $querySimilarPosts);

// Verifica se retornou algo
if (mysqli_num_rows($result) > 0) {
    // Transforma o resultado em um array associativo
    $row = mysqli_fetch_assoc($result);

    // Atribui valores às variáveis
    $title = $row['title'];
    $date = $row['created_at'];
    $content = $row['content'];
    $image = $row['image'];
    $user_name = $row['user_name'];
    $user_about = $row['user_about'];
    $user_image = $row['user_image'];
} else {
    // Se não retornou nada, redireciona para a página 404
    header('Location: 404.php');
}

// Informações da página para o SEO
$pageInfo = array(
    'title' => $title,
    'description' => substr($content, 0, 120),
    'pageName' => 'posts',
);

// Nome da página
$pageName = $pageInfo['pageName'];

// Inclui o cabeçalho da página
include_once(__DIR__ . '/components/public/header.php');
?>

<main class="container">

    <!-- Conteúdo do Post -->
    <section id="post" class="py-5">
        <div class="row">
            <div class="col-md-8 card-alunos">
                <div class="card-body">
                    <!-- Conteúdo do post -->
                    <img src="<?php echo $image; ?>" class="img-fluid" alt="<?php echo $title; ?>" title="<?php echo $title; ?>">
                    <h1 class="mt-4">
                        <?php echo $title; ?>
                    </h1>
                    <p class="text-muted">
                        <?php echo $date; ?>
                    </p>
                    <p>
                        <?php echo $content; ?>
                    </p>
                    <hr>

                    <!-- Compartilhamento nas Redes Sociais -->
                    <div class="mt-4">
                        <!-- Botão de curtir -->
                        <?php
                        $isLiked = false;

                        if (isset($_SESSION['user_id'])) {
                            $user_id = $_SESSION['user_id'];

                            $query = "SELECT * FROM likes WHERE post_id = '$post_id' AND user_id = '$user_id'";

                            $result = mysqli_query($connection, $query);

                            if (mysqli_num_rows($result) > 0) {
                                $isLiked = true;
                            } else {
                                $isLiked = false;
                            }
                        }
                        ?>

                        <?php if ($isLiked) { ?>
                            <a href="requests/posts/deslike_post.php?post_id=<?php echo $post_id ?>" class="btn btn-secondary">
                                <i class="bi bi-heart"></i>
                                Remover curtida
                            </a>
                        <?php } else { ?>
                            <a href="requests/posts/like_post.php?post_id=<?php echo $post_id ?>" class="btn btn-danger">
                                <i class="bi bi-heart"></i>
                                Curtir
                            </a>
                        <?php } ?>
                    </div>

                    <!-- Seção sobre o Autor -->
                    <div class="mt-4">
                        <h3>Sobre o Autor</h3>
                        <div class="media">
                            <img src="<?php echo $user_image; ?>" alt="<?php echo $user_name; ?>" class="mr-3 img-fluid rounded-circle" style="width: 100px;">
                            <div class="media-body">
                                <h4>
                                    <?php echo $user_name; ?>
                                </h4>
                                <p>
                                    <?php echo $user_about; ?>
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- Seção de Comentários -->
                    <div class="mt-4">
                        <h3>Comentários</h3>
                        <!-- Loop para exibir comentários -->
                        <?php while ($comment = mysqli_fetch_assoc($comments)) { ?>
                            <div class="media mt-4">
                                <img src="<?php echo $comment['user_image']; ?>" class="mr-3 img-fluid rounded-circle" alt="<?php echo $comment['user_name']; ?>" style="width: 50px;">
                                <div class="media-body">
                                    <h6>
                                        <?php echo $comment['user_name']; ?>
                                    </h6>
                                    <p>
                                        <?php echo $comment['content']; ?>
                                    </p>
                                </div>
                                <?php if (isset($_SESSION['user_id'])) { ?>
                                    <?php if ($_SESSION['user_id'] == $comment['user_id']) { ?>
                                        <a href="requests/comments/delete_comment.php?comment_id=<?php echo $comment['id']; ?>&post_id=<?php echo $post_id; ?>" class="btn btn-sm btn-danger ml-2">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    <?php } ?>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <!-- Mensagem se não houver comentários -->
                        <?php if (mysqli_num_rows($comments) == 0) { ?>
                            <div class="alert alert-info">
                                Nenhum comentário encontrado.
                            </div>
                        <?php } ?>
                    </div>

                    <!-- Formulário de Comentários -->
                    <hr>
                    <div class="mt-4">
                        <h3>Deixe seu comentário</h3>

                        <!-- Mensagem se o usuário não estiver logado -->
                        <?php
                        if (!isset($_SESSION['user_id'])) { ?>
                            <div class="alert alert-info">
                                Você precisa estar logado para comentar. <a href="login.php">Clique aqui</a> para
                                fazer login em sua conta.
                            </div>
                        <?php } else { ?>
                            <form action="requests/comments/create_comment.php" method="post">
                                <?php if (isset($_SESSION['message'])) { ?>
                                    <div class="alert alert-<?= $_SESSION['message_type'] ?>" role="alert">
                                        <?php echo $_SESSION['message']; ?>
                                    </div>
                                <?php unset($_SESSION['message']);
                                } ?>
                                <input type="hidden" name="post_id" value="<?php echo $post_id; ?>">
                                <div class="form-group">
                                    <p>
                                        Você está logado como <strong><?php echo $_SESSION['user_name']; ?></strong>.
                                    </p>
                                </div>
                                <div class="form-group mb-5">
                                    <label for="comment">Comentário</label>
                                    <textarea class="form-control" id="comment" name="comment" rows="3" placeholder="Digite seu comentário" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-dark">Enviar</button>
                            </form>
                        <?php } ?>
                    </div>

                </div>

            </div>
        </div>
    </section>
</main>

<?php
// Inclui o rodapé da página
include_once(__DIR__ . '/components/public/footer.php');
?>