-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/01/2024 às 08:07
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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
(8, 'infobasica', 'src/img/banners/65b0b396d0ac9_INFORMÁTICA BÁSICA.png', '2024-01-24 06:52:06'),
(9, 'java', 'src/img/banners/65b0b3bcc20ef_JAVASCRIPT.png', '2024-01-24 06:52:44'),
(10, 'logicaprg', 'src/img/banners/65b0b49a3ed66_LÓGICA DE PROGRAMAÇÃO.png', '2024-01-24 06:56:26'),
(11, 'php', 'src/img/banners/65b0b4ac4d835_PHP POO.png', '2024-01-24 06:56:44'),
(12, 'hardware', 'src/img/banners/65b0b4bc4d27d_HARDWARE.png', '2024-01-24 06:57:00'),
(13, 'html', 'src/img/banners/65b0b4c72ed53_HTMLCSSJAVA.jpeg', '2024-01-24 06:57:11');

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
(10, 'Hardware', '<p>\r\nNeste curso, você irá aprender todo fundamento tecnico para instalação e reparos de dispositivos\r\nde hardware e Software, e soluções de problemas mais comuns.\r\n</p>\r\n<p>\r\nO que você irá aprender:\r\n</p>\r\n      <ul>\r\n        <li>\r\n          Manutenção preventiva e corretiva\r\n        </li>\r\n        <li>\r\n          Bancada de teste com periféricos\r\n        </li>\r\n        <li>\r\n          Formatação e instalação de sistemas\r\n        </li>\r\n        <li>\r\n          Manutenção preventiva e corretiva\r\n        </li>\r\n        <li>\r\n          E muito mais...\r\n        </li>\r\n      </ul>', 'src/img/coursesHARDWARE.png', 'R$457,99', 'Nietzche'),
(11, 'Lógica de Progamação', '<p>Neste curso, vamos apresentar conceitos de programa&ccedil;&atilde;o para voc&ecirc; iniciar sua vida profissional em uma das &aacute;reas mais bem pagas atualmente, incluindo uma introdu&ccedil;&atilde;o ao desenvolvimento de projetos profissionais utilizando a linguagem de programa&ccedil;&atilde;o com o conceito de orienta&ccedil;&atilde;o a objetos por meio da l&oacute;gica.</p>\r\n<p>O que voc&ecirc; vai aprender:</p>\r\n<ul>\r\n<li><strong>Algoritmos:</strong> Aprendizado sobre algoritmos, que s&atilde;o sequ&ecirc;ncias de passos bem definidos para realizar uma tarefa ou resolver um problema.</li>\r\n<li><strong>Vari&aacute;veis e Tipos de Dados:</strong> Compreens&atilde;o de como armazenar e manipular dados usando vari&aacute;veis e tipos de dados, como inteiros, n&uacute;meros de ponto flutuante, strings,</li>\r\n<li><strong>Estruturas de Controle:</strong> Estudo de estruturas de controle de fluxo, incluindo condicionais (if, else) e loops (for, while), que c</li>\r\n</ul>', 'src/img/courses/coursesLÓGICA DE PROGRAMAÇÃO.png', '$225,00', 'Felipe Campos'),
(12, 'Informática Básica', '<p>Curso de Inform&aacute;tica B&aacute;sica, projetado para fornecer a voc&ecirc; as habilidades essenciais necess&aacute;rias para navegar com confian&ccedil;a no mundo digital.</p>\r\n<p>O que voc&ecirc; vai aprender:</p>\r\n<ul>\r\n<li><strong>Introdu&ccedil;&atilde;o &agrave; Inform&aacute;tica</strong> Entenda o que &eacute; inform&aacute;tica e sua import&acirc;ncia na sociedade moderna. Familiarize-se com os componentes b&aacute;sicos de um computador. Explore diferentes tipos de dispositivos, desde desktops at&eacute; dispositivos m&oacute;veis.</li>\r\n<li><strong>Sistema Operacional:</strong> Aprenda a utilizar sistemas operacionais comuns, como Windows e Linux. Navegue pelo ambiente de trabalho e gerencie arquivos de forma eficiente. Personalize configura&ccedil;&otilde;es para atender &agrave;s suas prefer&ecirc;ncias.</li>\r\n<li><strong>Navega&ccedil;&atilde;o na Internet:</strong> Explore os fundamentos da navega&ccedil;&atilde;o na web. Utilize motores de busca para encontrar in', 'src/img/courses/coursesINFORMÁTICA BÁSICA.png', '$219,99', 'Majin Boo'),
(13, 'Javascript Avançado', '<p>Javascript avan&ccedil;ado &eacute; um dos conhecimentos mais desejados pelas empresas, e elas est&atilde;o literalmente disputando por profissionais que saibam usa-lo. Ainda assim muitas empresas t&ecirc;m dificuldades em encontrar pessoas qualificadas.</p>\r\n<ul>\r\n<li>Poder&aacute; criar aplica&ccedil;&otilde;es web interativas e din&acirc;micas que podem ser acessadas por milh&otilde;es de pessoas em todo o mundo</li>\r\n<li>JavaScript aprofundado</li>\r\n<li>Refer&ecirc;ncias API Web, etc</li>\r\n</ul>', 'src/img/courses/coursesJAVASCRIPT.png', '$375,99', 'Superman'),
(14, 'PHP POO', '<p>Aprenda a desenvolver explica&ccedil;&atilde;o do web utilizando a fun&ccedil;&atilde;o PHP. &Eacute; um curso indicado para quem deseja iniciar um carreira na &aacute;rea de programa&ccedil;&atilde;o, com uma linguagem de facil aprendizagem. <br>A POO promove a reutiliza&ccedil;&atilde;o de c&oacute;digo, modularidade, legibilidade e manutenibilidade do c&oacute;digo, sendo suportada pela linguagem PHP dentre outras.</p>\r\n<p>O que voc&ecirc; vai aprender:</p>\r\n<ul>\r\n<li>Estrutura de codigo</li>\r\n<li>Intera&ccedil;&atilde;o com banco de dados</li>\r\n<li>Linguagem de marca&ccedil;&atilde;o de conte&uacute;do</li>\r\n<li>E muito mais...</li>\r\n</ul>', 'src/img/courses/coursesPHP POO.png', 'R$552,00', 'Matheus Teixeira'),
(15, 'HTML, CSS, Java', '<p>Neste curso, voc&ecirc; ir&aacute; aprender os fundamentos para trabalhar com o desenvolvimento para a Web, aprendendo a usar HTML, CSS e JavaScript para criar sites e aplicativos da Web, que s&atilde;o utilizados nos aplicativos nativos e executados em seu navegador de Internet.</p>\r\n<ul>\r\n<li>Com o Word, voc&ecirc; pode criar qualquer tipo de documento que envolva textos, quadrinhos, revistas, panfletos, jornais, etc. Al&eacute;m disso, voc&ecirc; pode enriquecer o seu documento, utilizando tabelas, gr&aacute;ficos, imagens, &iacute;ndices e muitos outros recursos.</li>\r\n<li>Quando se trata de planilhas eletr&ocirc;nicas, o Excel &eacute;, sem d&uacute;vida, um dos programas mais utilizados no mundo! Essa ferramenta &eacute; cheia de funcionalidades que facilitam muito o uso de c&aacute;lculos matem&aacute;ticos.</li>\r\n<li>Com o PowerPoint, voc&ecirc; pode criar e gerenciar uma apresenta&ccedil;&atilde;o trabalhando com elementos gr&aacute;ficos</li>\r\n</ul>', 'src/img/courses/coursesHTML5.png', '$225,00', 'Abacate');

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
(11, 16, '123', '<p>12334</p>', '', 0, '2024-01-24 05:30:18'),
(12, 15, '123', '<p>12335551</p>', '', 0, '2024-01-24 06:33:53');

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
  `level` enum('Aluno','Admin','Professor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `about`, `password`, `cpf`, `created_at`, `level`) VALUES
(15, 'Gabriel', 'gabriel@1.com', 'src/img/profile/307181519_181964981062869_3980220049479438323_n.jpg', 'Dev Junior', '$2y$10$hL76cqzZtBMI3Gozm0setOTTLsNDdDkSi7odqcgwrRaUk0i/txcoO', 0, '2024-01-13 17:18:01', 'Admin'),
(16, 'Alice', 'alice@alice.com', 'https://th.bing.com/th/id/OIP.e0Pn4g0z3Xwpa3wmRmifDgAAAA?rs=1&pid=ImgDetMain', '', '$2y$10$1ptnDJsEoIdYqb/ljdSlSu.VdvknH19uz0ZUYb1vUdElMfzKtQOzK', 0, '2024-01-13 17:18:16', 'Aluno');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
