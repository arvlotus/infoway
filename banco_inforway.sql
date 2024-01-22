-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/01/2024 às 23:53
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_inforway`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `created_at`) VALUES
(8, 'hardware', 'src/img/banners/65aeeb49d2844_HARDWARE.png', '2024-01-22 22:25:13'),
(9, 'lógica de programação', 'src/img/banners/65aeeb5c2b874_LÓGICA DE PROGRAMAÇÃO.png', '2024-01-22 22:25:32'),
(10, 'informática básica', 'src/img/banners/65aeeb6f125d3_INFORMÁTICA BÁSICA.png', '2024-01-22 22:25:51'),
(11, 'javascript', 'src/img/banners/65aeeb7a6c0bd_JAVASCRIPT.png', '2024-01-22 22:26:02'),
(12, 'html', 'src/img/banners/65aeeb8235d61_HTMLCSSJAVA.jpeg', '2024-01-22 22:26:10'),
(13, 'phppoo', 'src/img/banners/65aeeb90528f3_PHP POO.png', '2024-01-22 22:26:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`) VALUES
(1, 'Ótimo post!', 1, 1),
(2, 'Adorei as dicas!', 2, 2),
(3, 'Vou tentar fazer em casa', 3, 3),
(4, 'Muito útil, obrigado!', 4, 4),
(5, 'Excelente conteúdo', 5, 5),
(6, 'Parabéns pelo post', 1, 2),
(7, 'Muito bem explicado', 2, 3),
(8, 'Obrigado pelas dicas', 3, 4),
(9, 'Vou compartilhar com meus amigos', 4, 5),
(10, 'Continue assim!', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `price` varchar(225) NOT NULL,
  `teacher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `courses`
--

INSERT INTO `courses` (`id`, `title`, `content`, `image`, `price`, `teacher`) VALUES
(4, 'Informática Básica', '<p>A Inform&aacute;tica b&aacute;sica te possibilita desenpenhar diferentes tarefas em diversos cargos.<br>Dessa forma voc&ecirc; aumenta as possibilidades no mercado de trabalho</p>\r\n<ul>\r\n<li>Com o Word, voc&ecirc; pode criar qualquer tipo de documento que envolva textos, quadrinhos, revistas, panfletos, jornais, etc.<br>Al&eacute;m disso, voc&ecirc; pode enriquecer o seu documento, utilizando tabelas, gr&aacute;ficos, imagens, &iacute;ndices e muitos outros recursos.</li>\r\n<li>Quando se trata de planilhas eletr&ocirc;nicas, o Excel &eacute;, sem d&uacute;vida, um dos programas mais utilizados no mundo!<br>Essa ferramenta &eacute; cheia de funcionalidades que facilitam muito o uso de c&aacute;lculos matem&aacute;ticos.</li>\r\n<li>Com o PowerPoint, voc&ecirc; pode criar e gerenciar uma apresenta&ccedil;&atilde;o trabalhando com elementos gr&aacute;ficos</li>\r\n</ul>', 'src/img/coursescoursesINFORMÁTICA BÁSICA.png', '$225', 'Homem-Aranha'),
(5, 'Lógica Progamação', '<p>Neste curso, vamos apresentar conceitos de programa&ccedil;&atilde;o para voc&ecirc; iniciar sua vida profissional em uma das &aacute;reas mais bem pagas atualmente, incluindo uma introdu&ccedil;&atilde;o ao desenvolvimento de projetos profissionais utilizando a linguagem de programa&ccedil;&atilde;o com o conceito de orienta&ccedil;&atilde;o a objetos por meio da l&oacute;gica.</p>\r\n<pre class=\"a-b-r-La\">&nbsp;</pre>', 'src/img/coursescourses65ac24b661eaa_LÓGICA DE PROGRAMAÇÃO.png', '$225,00', 'Felipe Campos'),
(6, 'Hardware', '<p>Neste curso, voc&ecirc; ir&aacute; aprender todo fundamento tecnico para instala&ccedil;&atilde;o e reparos de dispositivos de hardware e Software, e solu&ccedil;&otilde;es de problemas mais comuns.</p>\r\n<p>O que voc&ecirc; ir&aacute; aprender:</p>\r\n<ul>\r\n<li>Manuten&ccedil;&atilde;o preventiva e corretiva</li>\r\n<li>Bancada de teste com perif&eacute;ricos</li>\r\n<li>Formata&ccedil;&atilde;o e instala&ccedil;&atilde;o de sistemas</li>\r\n<li>Manuten&ccedil;&atilde;o preventiva e corretiva</li>\r\n<li>E muito mais...</li>\r\n</ul>', 'src/img/coursescoursescoursesHARDWARE.png', '$225,00', 'Homem de Ferro'),
(7, 'Javascript Avançado', '<p class=\"a-b-r-La\">Javascript avan&ccedil;ado &eacute; um dos conhecimentos mais desejados pelas empresas, e elas est&atilde;o literalmente disputando por profissionais que saibam usa-lo. Ainda assim muitas empresas t&ecirc;m dificuldades em encontrar pessoas qualificadas.</p>\r\n<ul>\r\n<li>Poder&aacute; criar aplica&ccedil;&otilde;es web interativas e din&acirc;micas que podem ser acessadas por milh&otilde;es de pessoas em todo o mundo</li>\r\n<li>JavaScript aprofundado</li>\r\n<li>Refer&ecirc;ncias API Web, etc</li>\r\n</ul>', 'src/img/coursescoursesJAVASCRIPT.png', '$225,00', 'Gustavo Guanabara'),
(8, 'HTML CSS JAVA', '<p class=\"a-b-r-La\">Neste curso, voc&ecirc; ir&aacute; aprender os fundamentos para trabalhar com o desenvolvimento para a Web, aprendendo a usar HTML, CSS e JavaScript para criar sites e aplicativos da Web, que s&atilde;o utilizados nos aplicativos nativos e executados em seu navegador de Internet.</p>\r\n<p class=\"a-b-r-La\">Voc&ecirc; conhecer&aacute; o b&aacute;sico de um website e ferramentas que usar&aacute; para iniciar o desenvolvimento Web para trabalhar digitalmente, de forma &aacute;gil e segura. Os conhecimentos obtidos neste curso ser&atilde;o muito importantes para que voc&ecirc; possa ter um contexto para tomar decis&otilde;es sobre como construir seu site!</p>', 'src/img/coursescoursesHTML5.png', '$225,00', 'Superman'),
(9, 'PHP POO', '<p>Aprenda a desenvolver explica&ccedil;&atilde;o do web utilizando a fun&ccedil;&atilde;o PHP. &Eacute; um curso indicado para quem deseja iniciar um carreira na &aacute;rea de programa&ccedil;&atilde;o, com uma linguagem de facil aprendizagem.&nbsp;<br>A POO promove a reutiliza&ccedil;&atilde;o de c&oacute;digo, modularidade, legibilidade e manutenibilidade do c&oacute;digo, sendo suportada pela linguagem PHP dentre outras.</p>\r\n<p>O que voc&ecirc; vai aprender:</p>\r\n<ul>\r\n<li>Estrutura de codigo</li>\r\n</ul>\r\n<ul>\r\n<li>Intera&ccedil;&atilde;o com banco de dados</li>\r\n</ul>\r\n<ul>\r\n<li>Linguagem de marca&ccedil;&atilde;o de conte&uacute;do</li>\r\n</ul>\r\n<ul>\r\n<li>E muito mais...</li>\r\n</ul>', 'src/img/coursescoursesPHP POO.png', '$225,00', 'Fabiano Costa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 1, 3),
(7, 2, 4),
(8, 3, 4),
(9, 4, 5),
(10, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `image`, `views`, `created_at`) VALUES
(1, 1, 'Como fazer um bolo de cenoura', 'Misture os ingredientes e asse por 30 minutos.', '', 0, '2023-12-12 21:40:31'),
(2, 2, 'Dicas para estudar melhor', 'Faça resumos e revise o conteúdo com frequência.', '', 0, '2023-12-12 21:40:31'),
(3, 3, 'Receita de pão caseiro', 'Misture a farinha, o fermento e a água e deixe descansar por 1 hora.', '', 0, '2023-12-12 21:40:31'),
(4, 4, 'Como organizar sua rotina de trabalho', 'Faça uma lista de tarefas e priorize as mais importantes.', '', 0, '2023-12-12 21:40:31'),
(5, 5, 'Dicas para cuidar das plantas', 'Regue as plantas regularmente e coloque-as em um local com luz solar.', '', 0, '2023-12-12 21:40:31'),
(7, 15, 'Testando Curso', '<p>Testando Post</p>', 'src/img/posts/65aef11b47541_courses65ac24b661eaa_LÓGICA DE PROGRAMAÇÃO.png', 0, '2024-01-22 22:50:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'https://th.bing.com/th/id/OIP.e0Pn4g0z3Xwpa3wmRmifDgAAAA?rs=1&pid=ImgDetMain',
  `about` text NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `cpf` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `level` enum('student','admin','teacher') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `about`, `password`, `cpf`, `created_at`, `level`) VALUES
(15, 'Gabriel', 'gabriel@1.com', 'src/img/profile/307181519_181964981062869_3980220049479438323_n.png', '484848', '$2y$10$FgeRqA9Nr6NZhE0L8VDcierNkEUOSbSpdAPuYNvBY03QN5CGUGFsq', 0, '2024-01-13 17:18:01', 'admin'),
(16, 'Alice', 'alice@alice.com', 'https://th.bing.com/th/id/OIP.e0Pn4g0z3Xwpa3wmRmifDgAAAA?rs=1&pid=ImgDetMain', '', '$2y$10$7L7u62H4cebMUabW0hHYEu3wGtdcpBONfPFy3IGIeHDz4pEyVjGQW', 0, '2024-01-13 17:18:16', 'teacher');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
