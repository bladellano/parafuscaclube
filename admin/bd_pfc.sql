-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14/07/2019 às 22:15
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
(17, 0, 'Dia Mundial do Fusca - 23 de Junho de 2019', '2019-07-14 01:25:34');

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
(89, 'Nova noticia..', 'foto-unama (19).jpg', 'upload/foto-unama (19).jpg', 0, NULL, '2019-07-15 01:09:31');

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
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_noticias`
--

INSERT INTO `tb_noticias` (`idNoticia`, `tituloNoticia`, `conteudo`, `idUsuario`, `idFoto`, `idAlbum`, `idVideo`, `tipoNoticia`, `dataCaptura`, `status`) VALUES
(44, 'Nova noticia..', 'Novo conteudo...', NULL, 89, 17, 17, 'N', '2019-07-14 22:09:31', 1);

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
  `Id` int(11) NOT NULL
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
  ADD PRIMARY KEY (`idFoto`),
  ADD KEY `idAlbum` (`idAlbum`);

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
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_albuns`
--
ALTER TABLE `tb_albuns`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_videos`
--
ALTER TABLE `tb_videos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

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
