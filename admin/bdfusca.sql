-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Ago-2019 às 14:24
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdfusca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_albuns`
--

CREATE TABLE `tb_albuns` (
  `idAlbum` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT '0',
  `nomeAlbum` varchar(100) DEFAULT NULL,
  `dataCaptura` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_albuns`
--

INSERT INTO `tb_albuns` (`idAlbum`, `idUsuario`, `nomeAlbum`, `dataCaptura`) VALUES
(28, 0, 'Imagens da Bros NXR 2011', '2019-08-02 12:15:02'),
(29, 0, 'Para Fusca Clube', '2019-08-02 12:15:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fotos`
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
-- Extraindo dados da tabela `tb_fotos`
--

INSERT INTO `tb_fotos` (`idFoto`, `tituloFoto`, `nomeFoto`, `urlFoto`, `idUsuario`, `idAlbum`, `dataCaptura`) VALUES
(150, 'Fotos da Moto', 'IMG_20180819_080122.jpg', 'upload/img_5d442977619a7.jpg', 1, 28, '2019-08-02 12:15:52'),
(151, 'Fotos da Moto', 'IMG_20180819_080143.jpg', 'upload/img_5d442978ea968.jpg', 1, 28, '2019-08-02 12:15:53'),
(152, 'Fotos da Moto', 'IMG_20180819_080150.jpg', 'upload/img_5d44297a9ac70.jpg', 1, 28, '2019-08-02 12:15:55'),
(153, 'Fotos da Moto', 'IMG_20180819_080211.jpg', 'upload/img_5d44297b956b8.jpg', 1, 28, '2019-08-02 12:15:56'),
(154, 'Fotos da Moto', 'IMG_20180819_080227.jpg', 'upload/img_5d44297ca4d0d.jpg', 1, 28, '2019-08-02 12:15:57'),
(155, 'Fotos da Moto', 'IMG_20180819_080232.jpg', 'upload/img_5d44297d9766b.jpg', 1, 28, '2019-08-02 12:15:58'),
(156, '123', 'IMG_20180819_080122.jpg', 'upload/img_5d44299729a68.jpg', 1, 28, '2019-08-02 12:16:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_membros`
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
-- Extraindo dados da tabela `tb_membros`
--

INSERT INTO `tb_membros` (`idMembro`, `nomeMembro`, `userMembro`, `passMembro`, `anoFusca`, `foto`, `thumb_foto`, `dataCaptura`, `dataModificado`, `status`) VALUES
(23, 'Luanne Figueiredo', 'luanne.silva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1988, 'upload/img_5d3e4d7a32397.jpeg', 'upload/thumbnail_img_5d3e4d7a32397.jpeg', '2019-07-28 22:35:54', NULL, 1),
(25, 'Caio Dellano', 'caio.silva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1998, 'upload/img_5d3edde5dd480.jpg', 'upload/thumbnail_img_5d3edde5dd480.jpg', '2019-07-29 08:52:06', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_newsletter`
--

CREATE TABLE `tb_newsletter` (
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_noticias`
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
-- Extraindo dados da tabela `tb_noticias`
--

INSERT INTO `tb_noticias` (`idNoticia`, `tituloNoticia`, `conteudo`, `idUsuario`, `imagem`, `thumb_imagem`, `idAlbum`, `idVideo`, `tipoNoticia`, `dataCaptura`, `dataModificado`, `status`) VALUES
(8, 'Brasil joga mal e não consegue acesso.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>', NULL, 'upload/img_5d43833ce5157.jpg', 'upload/thumbnail_img_5d43833ce5157.jpg', 25, 0, 'N', '2019-08-01 21:26:37', NULL, 1),
(20, 'Com foto', '<p>Lorem</p>', NULL, 'upload/img_5d43878246d74.jpg', 'upload/thumbnail_img_5d43878246d74.jpg', 0, 0, 'N', '2019-08-01 21:44:51', NULL, 1),
(24, 'Teste pela seduc com foto', '<p>Lorem</p>', NULL, 'upload/img_5d44289e4e757.jpg', 'upload/thumbnail_img_5d44289e4e757.jpg', 0, 0, 'N', '2019-08-02 09:12:15', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
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
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`idUsuario`, `nome`, `sobrenome`, `email`, `username`, `password`, `status`, `dataCaptura`) VALUES
(1, 'Caio', 'Silva', 'bladellano@gmail.com', 'caiosilva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, '2019-07-26 00:05:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_videos`
--

CREATE TABLE `tb_videos` (
  `idVideo` int(11) NOT NULL,
  `tituloVideo` varchar(180) NOT NULL,
  `codVideo` varchar(15) NOT NULL,
  `urlVideo` varchar(220) DEFAULT NULL,
  `dataCaptura` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_albuns`
--
ALTER TABLE `tb_albuns`
  ADD PRIMARY KEY (`idAlbum`);

--
-- Indexes for table `tb_fotos`
--
ALTER TABLE `tb_fotos`
  ADD PRIMARY KEY (`idFoto`);

--
-- Indexes for table `tb_membros`
--
ALTER TABLE `tb_membros`
  ADD PRIMARY KEY (`idMembro`);

--
-- Indexes for table `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tb_noticias`
--
ALTER TABLE `tb_noticias`
  ADD PRIMARY KEY (`idNoticia`);

--
-- Indexes for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `tb_videos`
--
ALTER TABLE `tb_videos`
  ADD PRIMARY KEY (`idVideo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_albuns`
--
ALTER TABLE `tb_albuns`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tb_membros`
--
ALTER TABLE `tb_membros`
  MODIFY `idMembro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_videos`
--
ALTER TABLE `tb_videos`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
