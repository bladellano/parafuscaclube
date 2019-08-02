-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 01/08/2019 às 22:06
-- Versão do servidor: 10.1.40-MariaDB
-- Versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdfusca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_albuns`
--

CREATE TABLE `tb_albuns` (
  `idAlbum` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT '0',
  `nomeAlbum` varchar(100) DEFAULT NULL,
  `dataCaptura` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_albuns`
--

INSERT INTO `tb_albuns` (`idAlbum`, `idUsuario`, `nomeAlbum`, `dataCaptura`) VALUES
(25, 0, 'Album teste', '2019-07-29 01:16:25'),
(27, 0, 'Album teste seduc', '2019-07-30 11:00:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_fotos`
--

CREATE TABLE `tb_fotos` (
  `idFoto` int(11) NOT NULL,
  `tituloFoto` varchar(50) DEFAULT NULL,
  `nomeFoto` varchar(100) NOT NULL DEFAULT '',
  `urlFoto` varchar(150) NOT NULL DEFAULT '',
  `idUsuario` int(11) DEFAULT '0',
  `idAlbum` int(11) DEFAULT NULL,
  `dataCaptura` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_fotos`
--

INSERT INTO `tb_fotos` (`idFoto`, `tituloFoto`, `nomeFoto`, `urlFoto`, `idUsuario`, `idAlbum`, `dataCaptura`) VALUES
(142, 'Varios 3', 'WhatsApp Image 2019-07-14 at 3.45.15 PM.jpeg', 'upload/img_5d3e4cb11d271.jpeg', 0, 25, '2019-07-29 01:32:33'),
(143, 'Varios', 'WhatsApp Image 2019-07-14 at 3.45.16 PM.jpeg', 'upload/img_5d3e4cb13b263.jpeg', 0, 25, '2019-07-29 01:32:33'),
(145, 'TesteFoto', 'WhatsApp Image 2019-07-14 at 3.45.17 PM.jpeg', 'upload/img_5d3e4d4100f75.jpeg', 0, 25, '2019-07-29 01:34:57'),
(147, 'Teste Session', 'IMG_20180611_231125.jpg', 'upload/img_5d3f9ae8f094e.jpg', 1, 25, '2019-07-30 01:18:33'),
(149, 'Noticia sem album', 'IMG_20180819_080402.jpg', 'upload/IMG_20180819_080402.jpg', 0, 0, '2019-07-30 11:06:09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_membros`
--

CREATE TABLE `tb_membros` (
  `idMembro` int(11) NOT NULL,
  `nomeMembro` varchar(50) NOT NULL,
  `userMembro` varchar(50) NOT NULL,
  `passMembro` varchar(100) NOT NULL,
  `anoFusca` int(4) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `thumb_foto` varchar(100) DEFAULT NULL,
  `dataCaptura` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataModificado` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_membros`
--

INSERT INTO `tb_membros` (`idMembro`, `nomeMembro`, `userMembro`, `passMembro`, `anoFusca`, `foto`, `thumb_foto`, `dataCaptura`, `dataModificado`, `status`) VALUES
(23, 'Luanne Figueiredo', 'luanne.silva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1988, 'upload/img_5d3e4d7a32397.jpeg', 'upload/thumbnail_img_5d3e4d7a32397.jpeg', '2019-07-28 22:35:54', NULL, 1),
(25, 'Caio Dellano', 'caio.silva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1998, 'upload/img_5d3edde5dd480.jpg', 'upload/thumbnail_img_5d3edde5dd480.jpg', '2019-07-29 08:52:06', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_newsletter`
--

CREATE TABLE `tb_newsletter` (
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_noticias`
--

CREATE TABLE `tb_noticias` (
  `idNoticia` int(11) NOT NULL,
  `tituloNoticia` varchar(220) NOT NULL,
  `conteudo` text NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `thumb_imagem` varchar(200) DEFAULT NULL,
  `idAlbum` int(11) DEFAULT NULL,
  `idVideo` int(11) DEFAULT NULL,
  `tipoNoticia` char(1) DEFAULT NULL COMMENT 'A = agenda, E = evento e N = notícia',
  `dataCaptura` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataModificado` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_noticias`
--

INSERT INTO `tb_noticias` (`idNoticia`, `tituloNoticia`, `conteudo`, `idUsuario`, `imagem`, `thumb_imagem`, `idAlbum`, `idVideo`, `tipoNoticia`, `dataCaptura`, `dataModificado`, `status`) VALUES
(6, 'Titulo', 'Conteudo', NULL, 'upload/img_5d4381215429d.jpg', 'upload/thumbnail_img_5d4381215429d.jpg', 27, 0, 'N', '2019-08-01 21:17:37', NULL, 1),
(7, 'Bolo', 'Receita', NULL, 'upload/img_5d4381a6b3297.jpg', 'upload/thumbnail_img_5d4381a6b3297.jpg', 27, 0, 'N', '2019-08-01 21:19:51', NULL, 1),
(8, 'Brasil joga mal e não consegue acesso.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>', NULL, 'upload/img_5d43833ce5157.jpg', 'upload/thumbnail_img_5d43833ce5157.jpg', 25, 0, 'N', '2019-08-01 21:26:37', NULL, 1),
(20, 'Com foto', '<p>Lorem</p>', NULL, 'upload/img_5d43878246d74.jpg', 'upload/thumbnail_img_5d43878246d74.jpg', 0, 0, 'N', '2019-08-01 21:44:51', NULL, 1),
(21, 'ggg', '<p>ggg</p>', NULL, 'upload/', 'upload/thumbnail_', 0, 0, 'N', '2019-08-01 21:45:54', NULL, 1),
(22, 'asdasd', '<p>asdasd</p>', NULL, 'upload/', 'upload/thumbnail_', 0, 0, 'N', '2019-08-01 21:53:31', NULL, 1),
(23, 'Com foto de novo...', '<p>Lorem</p>', NULL, 'upload/img_5d438a879e59b.jpg', 'upload/thumbnail_img_5d438a879e59b.jpg', 0, 0, 'N', '2019-08-01 21:57:43', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `sobrenome` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `dataCaptura` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`idUsuario`, `nome`, `sobrenome`, `email`, `username`, `password`, `status`, `dataCaptura`) VALUES
(1, 'Caio', 'Silva', 'bladellano@gmail.com', 'caiosilva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, '2019-07-26 00:05:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_videos`
--

CREATE TABLE `tb_videos` (
  `idVideo` int(11) NOT NULL,
  `tituloVideo` varchar(180) NOT NULL,
  `codVideo` varchar(15) NOT NULL,
  `urlVideo` varchar(220) DEFAULT NULL,
  `dataCaptura` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_albuns`
--
ALTER TABLE `tb_albuns`
  ADD PRIMARY KEY (`idAlbum`);

--
-- Índices de tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  ADD PRIMARY KEY (`idFoto`);

--
-- Índices de tabela `tb_membros`
--
ALTER TABLE `tb_membros`
  ADD PRIMARY KEY (`idMembro`);

--
-- Índices de tabela `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `tb_noticias`
--
ALTER TABLE `tb_noticias`
  ADD PRIMARY KEY (`idNoticia`);

--
-- Índices de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Índices de tabela `tb_videos`
--
ALTER TABLE `tb_videos`
  ADD PRIMARY KEY (`idVideo`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_albuns`
--
ALTER TABLE `tb_albuns`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de tabela `tb_membros`
--
ALTER TABLE `tb_membros`
  MODIFY `idMembro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_videos`
--
ALTER TABLE `tb_videos`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
