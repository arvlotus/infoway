-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/01/2024 às 06:45
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
(11, 'Lógica de Progamação', '<p>\r\n        Neste curso, vamos apresentar conceitos de programação para você iniciar sua vida profissional em uma das áreas mais bem pagas atualmente,\r\n        incluindo uma introdução ao desenvolvimento de projetos profissionais utilizando a linguagem de programação\r\n        com o conceito de orientação a objetos por meio da lógica.\r\n      </p>\r\n      <p>\r\n        O que você vai aprender:\r\n      </p>\r\n      <ul>\r\n        <li>\r\n          <strong>Algoritmos:</strong> Aprendizado sobre algoritmos, que são sequências de passos bem definidos para realizar uma tarefa ou resolver um problema.\r\n        </li>\r\n        <li>\r\n          <strong>Variáveis e Tipos de Dados:</strong> Compreensão de como armazenar e manipular dados usando variáveis e tipos de dados, como inteiros, números de ponto flutuante, strings,\r\n        </li>\r\n        <li>\r\n          <strong>Estruturas de Controle:</strong> Estudo de estruturas de controle de fluxo, incluindo condicionais (if, else) e loops (for, while), que c', 'src/img/courses/65ac24b661eaa_LÓGICA DE PROGRAMAÇÃO.png', '$225,00', 'Felipe Campos'),
(12, 'Informática Básica', '<p>\r\n        Curso de Informática Básica, projetado para fornecer a você as habilidades essenciais necessárias para navegar com confiança no mundo digital. \r\n      </p>\r\n      <p>\r\n        O que você vai aprender:\r\n      </p>\r\n      <ul>\r\n        <li>\r\n          <strong>Introdução à Informática</strong> Entenda o que é informática e sua importância na sociedade moderna.\r\nFamiliarize-se com os componentes básicos de um computador.\r\nExplore diferentes tipos de dispositivos, desde desktops até dispositivos móveis.\r\n        </li>\r\n        <li>\r\n          <strong>Sistema Operacional:</strong> Aprenda a utilizar sistemas operacionais comuns, como Windows e Linux.\r\nNavegue pelo ambiente de trabalho e gerencie arquivos de forma eficiente.\r\nPersonalize configurações para atender às suas preferências.\r\n        </li>\r\n        <li>\r\n          <strong>Navegação na Internet:</strong> Explore os fundamentos da navegação na web.\r\nUtilize motores de busca para encontrar informações relevantes.\r\nCompree', 'src/img/courses/65ac24f400102_INFORMÁTICA BÁSICA.png', '$219,99', 'Majin Boo'),
(13, 'Javascript Avançado', '<p>\r\n        Javascript avançado é um dos conhecimentos mais desejados pelas empresas,\r\n        e elas estão literalmente disputando por profissionais que saibam usa-lo.\r\n        Ainda assim muitas empresas têm dificuldades em encontrar pessoas qualificadas.</p>\r\n      <ul>\r\n        <li>\r\n          Poderá criar aplicações web interativas e dinâmicas que podem ser acessadas por milhões de pessoas em todo o mundo</li>\r\n        <li>\r\n          JavaScript aprofundado\r\n        </li>\r\n        <li>\r\n          Referências API Web, etc\r\n        </li>\r\n      </ul>', 'src/img/courses/65ac25221edbe_JAVASCRIPT.png', '$375,99', 'Superman'),
(14, 'PHP POO', '<p>\r\n        Aprenda a desenvolver explicação do web utilizando a função PHP.\r\n        É um curso indicado para quem deseja iniciar um carreira na área de programação,\r\n        com uma linguagem de facil aprendizagem. <br> A POO promove a reutilização de código, modularidade,\r\n        legibilidade e manutenibilidade do código, sendo suportada pela linguagem PHP dentre outras.\r\n      </p>\r\n      <p>O que você vai aprender: </p>\r\n      <ul>\r\n        <li>\r\n          Estrutura de codigo\r\n        </li>\r\n        <li>\r\n          Interação com banco de dados\r\n        </li>\r\n        <li>\r\n          Linguagem de marcação de conteúdo\r\n        </li>\r\n        <li>\r\n          E muito mais...\r\n        </li>\r\n      </ul>', 'src/img/courses/65ac255655e26_PHP POO.png', 'R$552,00', 'Matheus Teixeira'),
(15, 'HTML, CSS, Java', '<p>\r\n        Neste curso, você irá aprender os fundamentos para trabalhar com o desenvolvimento para a Web,\r\n        aprendendo a usar HTML, CSS e JavaScript para criar sites e aplicativos da Web,\r\n        que são utilizados nos aplicativos nativos e executados em seu navegador de Internet.\r\n      </p>\r\n      <ul>\r\n        <li>\r\n          Com o Word, você pode criar qualquer tipo de documento que envolva textos, quadrinhos, revistas, panfletos,\r\n          jornais, etc. Além disso, você pode enriquecer o seu documento, utilizando tabelas, gráficos, imagens, índices\r\n          e muitos outros recursos.\r\n        </li>\r\n        <li>\r\n          Quando se trata de planilhas eletrônicas, o Excel é, sem dúvida, um dos programas mais utilizados no mundo!\r\n          Essa ferramenta é cheia de funcionalidades que facilitam muito o uso de cálculos matemáticos.\r\n        </li>\r\n        <li>\r\n          Com o PowerPoint, você pode criar e gerenciar uma apresentação trabalhando com elementos gráficos\r\n', 'src/img/courses/65ac26282d453_HTML5.png', '$225,00', 'Abacate');

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
(11, 16, '123', '<p>123</p>', '', 0, '2024-01-24 05:30:18');

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
(15, 'Gabriel', 'gabriel@1.com', 'src/img/profile/6O7a0Y2.png', '484848', '$2y$10$hL76cqzZtBMI3Gozm0setOTTLsNDdDkSi7odqcgwrRaUk0i/txcoO', 0, '2024-01-13 17:18:01', 'Admin'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
