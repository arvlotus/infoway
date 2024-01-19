-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/01/2024 às 17:51
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
  `content` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `price` varchar(225) NOT NULL,
  `teacher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `courses`
--

INSERT INTO `courses` (`id`, `title`, `content`, `image`, `price`, `teacher`) VALUES
(4, 'Hardware', 'asdasd', 'src/img/courses/65a6a4ee0c3e9_HARDWARE.png', '$225', ''),
(5, 'Lógica Progamação', 'asdasd', 'src/img/courses/65a6a501e9bb5_LÓGICA DE PROGRAMAÇÃO.png', '$225,00', ''),
(6, 'Informática Basica', 'dasdasd', 'src/img/courses/65a6a5172d31f_INFORMÁTICA BÁSICA.png', '$225,00', ''),
(7, 'Javascript Avançado', '123123', 'src/img/courses/65a6a52db1ac9_JAVASCRIPT.png', '$225,00', ''),
(8, 'HTML CSS JAVA', '12123', 'src/img/courses/65a6a53b9b6cb_HTMLCSSJAVA.jpeg', '$225,00', ''),
(9, 'PHP POO', '123123', 'src/img/courses/65a6a548866fd_PHP POO.png', '$225,00', '');

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
(5, 5, 'Dicas para cuidar das plantas', 'Regue as plantas regularmente e coloque-as em um local com luz solar.', '', 0, '2023-12-12 21:40:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `course_id`) VALUES
(11, '15', 'Informática Basica'),
(12, '15', 'Javascript Avançado');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
