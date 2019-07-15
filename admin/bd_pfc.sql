-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Jul-2019 às 13:49
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
-- Database: `bd_pfc`
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
(17, 0, 'Dia Mundial do Fusca - 23 de Junho de 2019', '2019-07-14 01:25:34');

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
(89, 'Nova noticia..', 'foto-unama (19).jpg', 'upload/foto-unama (19).jpg', 0, 17, '2019-07-15 01:09:31'),
(90, 'Aniversário em casa II', 'Tulips.jpg', 'upload/Tulips.jpg', 0, 17, '2019-07-15 11:01:38'),
(91, 'Confra da Unama 3', 'Penguins.jpg', 'upload/Penguins.jpg', 0, 17, '2019-07-15 11:12:22'),
(92, 'Confra da Unama 3', 'Penguins.jpg', 'upload/Penguins.jpg', 0, 17, '2019-07-15 11:13:18'),
(96, 'Confra da Unama', 'Penguins.jpg', 'upload/Penguins.jpg', 0, 17, '2019-07-15 11:36:07'),
(98, 'Teste de varias fotos.', 'Chrysanthemum.jpg', 'upload/Chrysanthemum.jpg', 0, 17, '2019-07-15 11:40:46'),
(99, 'Teste de varias fotos.', 'Desert.jpg', 'upload/Desert.jpg', 0, 17, '2019-07-15 11:40:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_membros`
--

CREATE TABLE `tb_membros` (
  `idMembro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `idFoto` int(11) DEFAULT NULL,
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

INSERT INTO `tb_noticias` (`idNoticia`, `tituloNoticia`, `conteudo`, `idUsuario`, `idFoto`, `idAlbum`, `idVideo`, `tipoNoticia`, `dataCaptura`, `dataModificado`, `status`) VALUES
(44, 'Confra da Unama', 'Novo conteudo...', NULL, 89, 17, 17, 'N', '2019-07-14 22:09:31', NULL, 1),
(45, 'Aniversário em casa ', 'Lorem ipsum', NULL, 90, 17, 17, 'N', '2019-07-15 08:01:38', NULL, 1),
(52, 'Confra da Unama', 'teste', NULL, 96, 17, 1, 'N', '2019-07-15 08:36:07', NULL, 1);

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
  `password` varchar(25) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `dataCaptura` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Extraindo dados da tabela `tb_videos`
--

INSERT INTO `tb_videos` (`idVideo`, `tituloVideo`, `codVideo`, `urlVideo`, `dataCaptura`) VALUES
(1, 'Linux consumindo muita memória', 'BxrXzcB90Mg', 'https://www.youtube.com/watch?v=BxrXzcB90Mg&t=109s', '2019-07-15 08:32:35');

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
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `idAlbum` (`idAlbum`);

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
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tb_membros`
--
ALTER TABLE `tb_membros`
  MODIFY `idMembro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_videos`
--
ALTER TABLE `tb_videos`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  ADD CONSTRAINT `tb_fotos_ibfk_1` FOREIGN KEY (`idAlbum`) REFERENCES `tb_albuns` (`idAlbum`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
