-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24/07/2019 às 22:30
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
-- Banco de dados: `bd_pfc`
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
(17, 0, 'Dia Mundial do Fusca - 23 de Junho de 2019', '2019-07-14 01:25:34'),
(19, 0, 'Condominio', '2019-07-24 22:21:54'),
(20, 0, 'Bom Sucesso', '2019-07-24 22:22:05');

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
(89, 'Nova noticia', 'foto-unama (19).jpg', 'upload/foto-unama (19).jpg', 0, 17, '2019-07-15 01:09:31'),
(99, 'Teste de varias fotos', 'Desert.jpg', 'upload/Desert.jpg', 0, 17, '2019-07-15 11:40:46'),
(105, 'Rave II', 'IMG-20170920-WA0065.jpg', 'upload/IMG-20170920-WA0065.jpg', 0, 19, '2019-07-24 22:22:46'),
(122, 'HH', 'IMG_20170916_211906069_TOP.jpg', 'upload/IMG_20170916_211906069_TOP.jpg', 0, 0, '2019-07-24 23:14:27'),
(124, 'ASD', 'IMG_20170916_211906069_TOP.jpg', 'upload/IMG_20170916_211906069_TOP.jpg', 0, 17, '2019-07-24 23:15:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_membros`
--

CREATE TABLE `tb_membros` (
  `idMembro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `idFoto` int(11) DEFAULT NULL,
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

INSERT INTO `tb_noticias` (`idNoticia`, `tituloNoticia`, `conteudo`, `idUsuario`, `idFoto`, `idAlbum`, `idVideo`, `tipoNoticia`, `dataCaptura`, `dataModificado`, `status`) VALUES
(72, 'Lorem ipsum 233s', 'HH', NULL, 122, 0, 0, 'N', '2019-07-24 20:14:27', NULL, 1),
(74, 'Lorem ipsum 32', 'ASD', NULL, 124, 17, 0, 'N', '2019-07-24 20:15:09', NULL, 1);

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
  `password` varchar(25) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `dataCaptura` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Despejando dados para a tabela `tb_videos`
--

INSERT INTO `tb_videos` (`idVideo`, `tituloVideo`, `codVideo`, `urlVideo`, `dataCaptura`) VALUES
(1, 'Linux consumindo muita memória', 'BxrXzcB90Mg', 'https://www.youtube.com/watch?v=BxrXzcB90Mg&t=109s', '2019-07-15 08:32:35');

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
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de tabela `tb_membros`
--
ALTER TABLE `tb_membros`
  MODIFY `idMembro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_videos`
--
ALTER TABLE `tb_videos`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `tb_fotos`
--
ALTER TABLE `tb_fotos`
  ADD CONSTRAINT `tb_fotos_ibfk_1` FOREIGN KEY (`idAlbum`) REFERENCES `tb_albuns` (`idAlbum`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
