-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 06/08/2019 às 06:29
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
(30, 0, '1º Encontro Realizado no dia 01/05/2012', '2019-08-05 00:58:47'),
(31, 0, '2º Encontro Passeio dia 20/07/2012', '2019-08-05 01:00:49'),
(32, 0, '4º Encontro Passeio dia 11/11/2012', '2019-08-05 01:00:55'),
(33, 0, '5º Encontro Passeio dia 20/01/2013', '2019-08-05 01:02:18'),
(34, 0, '6º Encontro Passeio dia 17/02/2013', '2019-08-05 01:02:30'),
(35, 0, '7º Encontro Doação dia 17/03/2013', '2019-08-05 01:09:19'),
(36, 0, '8º Encontro Passeio dia 21/04/2013', '2019-08-05 01:12:30');

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
(164, '1º Encontro Realizado no dia 1º de maio de 2012', '02.jpg', 'upload/img_5d477fa2eea63.jpg', 1, 30, '2019-08-05 01:00:19'),
(165, '1º Encontro Realizado no dia 1º de maio de 2012', '01.jpg', 'upload/img_5d477fa30d7e2.jpg', 1, 30, '2019-08-05 01:00:19'),
(166, '2º Encontro Passeio dia 20072012', '08.jpg', 'upload/img_5d477fe13feec.jpg', 1, 31, '2019-08-05 01:01:21'),
(167, '2º Encontro Passeio dia 20072012', '07.jpg', 'upload/img_5d477fe1526fb.jpg', 1, 31, '2019-08-05 01:01:21'),
(168, '2º Encontro Passeio dia 20072012', '06.jpg', 'upload/img_5d477fe16350f.jpg', 1, 31, '2019-08-05 01:01:21'),
(169, '2º Encontro Passeio dia 20072012', '05.jpg', 'upload/img_5d477fe173cd8.jpg', 1, 31, '2019-08-05 01:01:21'),
(170, '2º Encontro Passeio dia 20072012', '04.jpg', 'upload/img_5d477fe1817ae.jpg', 1, 31, '2019-08-05 01:01:21'),
(171, '2º Encontro Passeio dia 20072012', '03.jpg', 'upload/img_5d477fe191e00.jpg', 1, 31, '2019-08-05 01:01:21'),
(172, '2º Encontro Passeio dia 20072012', '02.jpg', 'upload/img_5d477fe1a4ebb.jpg', 1, 31, '2019-08-05 01:01:21'),
(173, '2º Encontro Passeio dia 20072012', '01.jpg', 'upload/img_5d477fe1b2920.jpg', 1, 31, '2019-08-05 01:01:21'),
(174, '4º Encontro Passeio dia 11/11/2012', '10.jpg', 'upload/img_5d478007c9529.jpg', 1, 32, '2019-08-05 01:01:59'),
(175, '4º Encontro Passeio dia 11/11/2012', '09.jpg', 'upload/img_5d478007d7df1.jpg', 1, 32, '2019-08-05 01:01:59'),
(176, '4º Encontro Passeio dia 11/11/2012', '08.jpg', 'upload/img_5d478007e592d.jpg', 1, 32, '2019-08-05 01:01:59'),
(177, '4º Encontro Passeio dia 11/11/2012', '07.jpg', 'upload/img_5d478007f3364.jpg', 1, 32, '2019-08-05 01:02:00'),
(178, '4º Encontro Passeio dia 11/11/2012', '06.jpg', 'upload/img_5d4780080f74e.jpg', 1, 32, '2019-08-05 01:02:00'),
(179, '4º Encontro Passeio dia 11/11/2012', '05.jpg', 'upload/img_5d4780081fe03.jpg', 1, 32, '2019-08-05 01:02:00'),
(180, '4º Encontro Passeio dia 11/11/2012', '04.jpg', 'upload/img_5d4780082ad4c.jpg', 1, 32, '2019-08-05 01:02:00'),
(181, '4º Encontro Passeio dia 11/11/2012', '03.jpg', 'upload/img_5d4780083e3fb.jpg', 1, 32, '2019-08-05 01:02:00'),
(182, '4º Encontro Passeio dia 11/11/2012', '02.jpg', 'upload/img_5d4780084ba1e.jpg', 1, 32, '2019-08-05 01:02:00'),
(183, '4º Encontro Passeio dia 11/11/2012', '01.jpg', 'upload/img_5d478008572f4.jpg', 1, 32, '2019-08-05 01:02:00'),
(184, '5º Encontro Passeio dia 20/01/2013', '26.jpg', 'upload/img_5d47805e4d214.jpg', 1, 33, '2019-08-05 01:03:26'),
(185, '5º Encontro Passeio dia 20/01/2013', '25.jpg', 'upload/img_5d47805e5ce82.jpg', 1, 33, '2019-08-05 01:03:26'),
(186, '5º Encontro Passeio dia 20/01/2013', '24.jpg', 'upload/img_5d47805e6a94e.jpg', 1, 33, '2019-08-05 01:03:26'),
(187, '5º Encontro Passeio dia 20/01/2013', '23.jpg', 'upload/img_5d47805e7845d.jpg', 1, 33, '2019-08-05 01:03:26'),
(188, '5º Encontro Passeio dia 20/01/2013', '22.jpg', 'upload/img_5d47805e90d3f.jpg', 1, 33, '2019-08-05 01:03:26'),
(189, '5º Encontro Passeio dia 20/01/2013', '21.jpg', 'upload/img_5d47805e9e72d.jpg', 1, 33, '2019-08-05 01:03:26'),
(190, '5º Encontro Passeio dia 20/01/2013', '20.jpg', 'upload/img_5d47805eac33e.jpg', 1, 33, '2019-08-05 01:03:26'),
(191, '5º Encontro Passeio dia 20/01/2013', '19.jpg', 'upload/img_5d47805ebc8d6.jpg', 1, 33, '2019-08-05 01:03:26'),
(192, '5º Encontro Passeio dia 20/01/2013', '18.jpg', 'upload/img_5d47805ecd073.jpg', 1, 33, '2019-08-05 01:03:26'),
(193, '5º Encontro Passeio dia 20/01/2013', '17.jpg', 'upload/img_5d47805edb376.jpg', 1, 33, '2019-08-05 01:03:26'),
(194, '5º Encontro Passeio dia 20/01/2013', '16.jpg', 'upload/img_5d47805ee8b69.jpg', 1, 33, '2019-08-05 01:03:26'),
(195, '5º Encontro Passeio dia 20/01/2013', '15.jpg', 'upload/img_5d47805f0276c.jpg', 1, 33, '2019-08-05 01:03:27'),
(196, '5º Encontro Passeio dia 20/01/2013', '14.jpg', 'upload/img_5d47805f10038.jpg', 1, 33, '2019-08-05 01:03:27'),
(197, '5º Encontro Passeio dia 20/01/2013', '13.jpg', 'upload/img_5d47805f1d956.jpg', 1, 33, '2019-08-05 01:03:27'),
(198, '5º Encontro Passeio dia 20/01/2013', '12.jpg', 'upload/img_5d47805f2df92.jpg', 1, 33, '2019-08-05 01:03:27'),
(199, '5º Encontro Passeio dia 20/01/2013', '11.jpg', 'upload/img_5d47805f3bac9.jpg', 1, 33, '2019-08-05 01:03:27'),
(200, '5º Encontro Passeio dia 20/01/2013', '10.jpg', 'upload/img_5d47805f4c0e2.jpg', 1, 33, '2019-08-05 01:03:27'),
(201, '5º Encontro Passeio dia 20/01/2013', '09.jpg', 'upload/img_5d47805f5c752.jpg', 1, 33, '2019-08-05 01:03:27'),
(202, '5º Encontro Passeio dia 20/01/2013', '08.jpg', 'upload/img_5d47805f6a314.jpg', 1, 33, '2019-08-05 01:03:27'),
(203, '5º Encontro Passeio dia 20/01/2013', '07.jpg', 'upload/img_5d47805f7a903.jpg', 1, 33, '2019-08-05 01:03:27'),
(204, '6º Encontro Passeio dia 17/02/2013', '09.jpg', 'upload/img_5d478193ddeda.jpg', 1, 34, '2019-08-05 01:08:35'),
(205, '6º Encontro Passeio dia 17/02/2013', '08.jpg', 'upload/img_5d478193eea26.jpg', 1, 34, '2019-08-05 01:08:36'),
(206, '6º Encontro Passeio dia 17/02/2013', '07.jpg', 'upload/img_5d478194081e9.jpg', 1, 34, '2019-08-05 01:08:36'),
(207, '6º Encontro Passeio dia 17/02/2013', '06.jpg', 'upload/img_5d47819415ceb.jpg', 1, 34, '2019-08-05 01:08:36'),
(208, '6º Encontro Passeio dia 17/02/2013', '05.jpg', 'upload/img_5d47819420c3e.jpg', 1, 34, '2019-08-05 01:08:36'),
(209, '6º Encontro Passeio dia 17/02/2013', '04.jpg', 'upload/img_5d478194312ab.jpg', 1, 34, '2019-08-05 01:08:36'),
(210, '6º Encontro Passeio dia 17/02/2013', '03.jpg', 'upload/img_5d478194446b2.jpg', 1, 34, '2019-08-05 01:08:36'),
(211, '6º Encontro Passeio dia 17/02/2013', '02.jpg', 'upload/img_5d47819454fd5.jpg', 1, 34, '2019-08-05 01:08:36'),
(212, '6º Encontro Passeio dia 17/02/2013', '01.jpg', 'upload/img_5d478194652d6.jpg', 1, 34, '2019-08-05 01:08:36'),
(213, '7º Encontro Doação dia 17/03/2013', '10.jpg', 'upload/img_5d4781e2d09bb.jpg', 1, 35, '2019-08-05 01:09:54'),
(214, '7º Encontro Doação dia 17/03/2013', '09.jpg', 'upload/img_5d4781e2dd89e.jpg', 1, 35, '2019-08-05 01:09:54'),
(215, '7º Encontro Doação dia 17/03/2013', '08.jpg', 'upload/img_5d4781e2eb558.jpg', 1, 35, '2019-08-05 01:09:54'),
(216, '7º Encontro Doação dia 17/03/2013', '07.jpg', 'upload/img_5d4781e304cec.jpg', 1, 35, '2019-08-05 01:09:55'),
(217, '7º Encontro Doação dia 17/03/2013', '06.jpg', 'upload/img_5d4781e312856.jpg', 1, 35, '2019-08-05 01:09:55'),
(218, '7º Encontro Doação dia 17/03/2013', '05.jpg', 'upload/img_5d4781e322dc9.jpg', 1, 35, '2019-08-05 01:09:55'),
(219, '7º Encontro Doação dia 17/03/2013', '04.jpg', 'upload/img_5d4781e333430.jpg', 1, 35, '2019-08-05 01:09:55'),
(220, '7º Encontro Doação dia 17/03/2013', '03.jpg', 'upload/img_5d4781e340f3a.jpg', 1, 35, '2019-08-05 01:09:55'),
(221, '7º Encontro Doação dia 17/03/2013', '02.jpg', 'upload/img_5d4781e34eb25.jpg', 1, 35, '2019-08-05 01:09:55'),
(222, '7º Encontro Doação dia 17/03/2013', '01.jpg', 'upload/img_5d4781e35c6a0.jpg', 1, 35, '2019-08-05 01:09:55'),
(223, '8º Encontro Passeio dia 21/04/2013', '08.jpg', 'upload/img_5d47829869b4b.jpg', 1, 36, '2019-08-05 01:12:56'),
(224, '8º Encontro Passeio dia 21/04/2013', '07.jpg', 'upload/img_5d47829876a1f.jpg', 1, 36, '2019-08-05 01:12:56'),
(225, '8º Encontro Passeio dia 21/04/2013', '06.jpg', 'upload/img_5d4782988454f.jpg', 1, 36, '2019-08-05 01:12:56'),
(226, '8º Encontro Passeio dia 21/04/2013', '05.jpg', 'upload/img_5d47829894d49.jpg', 1, 36, '2019-08-05 01:12:56'),
(227, '8º Encontro Passeio dia 21/04/2013', '04.jpg', 'upload/img_5d478298a52f5.jpg', 1, 36, '2019-08-05 01:12:56'),
(228, '8º Encontro Passeio dia 21/04/2013', '03.jpg', 'upload/img_5d478298b0293.jpg', 1, 36, '2019-08-05 01:12:56'),
(229, '8º Encontro Passeio dia 21/04/2013', '02.jpg', 'upload/img_5d478298bdd46.jpg', 1, 36, '2019-08-05 01:12:56'),
(230, '8º Encontro Passeio dia 21/04/2013', '01.jpg', 'upload/img_5d478298c8c84.jpg', 1, 36, '2019-08-05 01:12:56');

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
(26, 'Adiel', 'adiel', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473bc6b1912.jpeg', 'upload/thumbnail_img_5d473bc6b1912.jpeg', '2019-08-04 17:10:46', NULL, 1),
(27, 'Afonso Henrique', 'afonso.henrique', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473c0f0774c.jpeg', 'upload/thumbnail_img_5d473c0f0774c.jpeg', '2019-08-04 17:11:59', NULL, 1),
(28, 'Agenor', 'agenor', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473c36d8ce4.jpeg', 'upload/thumbnail_img_5d473c36d8ce4.jpeg', '2019-08-04 17:12:38', NULL, 1),
(29, 'Alex Carvalho', 'alex.carvalho', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473c4c69e64.jpeg', 'upload/thumbnail_img_5d473c4c69e64.jpeg', '2019-08-04 17:13:00', NULL, 1),
(30, 'Backenbauer', 'backenbauer', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473c699d41d.jpeg', 'upload/thumbnail_img_5d473c699d41d.jpeg', '2019-08-04 17:13:29', NULL, 1),
(31, 'Camargo', 'camargo', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473c80319c0.jpeg', 'upload/thumbnail_img_5d473c80319c0.jpeg', '2019-08-04 17:13:52', NULL, 1),
(32, 'Cristiane Paiva', 'cristiane.paiva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473ca056e84.jpeg', 'upload/thumbnail_img_5d473ca056e84.jpeg', '2019-08-04 17:14:24', NULL, 1),
(33, 'Edson Castro', 'edson.castro', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1983, 'upload/img_5d473cc517138.jpeg', 'upload/thumbnail_img_5d473cc517138.jpeg', '2019-08-04 17:15:01', NULL, 1),
(34, 'Edson Marata', 'edson.marata', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473cdc6804c.jpg', 'upload/thumbnail_img_5d473cdc6804c.jpg', '2019-08-04 17:15:24', NULL, 1),
(35, 'Everaldo', 'everaldo', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473ceb17534.jpeg', 'upload/thumbnail_img_5d473ceb17534.jpeg', '2019-08-04 17:15:39', NULL, 1),
(36, 'Fabrício', 'fabricio', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473d0315466.jpg', 'upload/thumbnail_img_5d473d0315466.jpg', '2019-08-04 17:16:03', NULL, 1),
(37, 'Fernando Albuquerque', 'fernando.albuquerque', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1982, 'upload/img_5d473d1cc87dc.jpeg', 'upload/thumbnail_img_5d473d1cc87dc.jpeg', '2019-08-04 17:16:28', NULL, 1),
(38, 'Lindomar', 'lindomar', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473d315afeb.jpeg', 'upload/thumbnail_img_5d473d315afeb.jpeg', '2019-08-04 17:16:49', NULL, 1),
(39, 'Luiz', 'luiz', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473d3cd1b06.jpeg', 'upload/thumbnail_img_5d473d3cd1b06.jpeg', '2019-08-04 17:17:00', NULL, 1),
(40, 'Mateus Ueoka', 'mateus.ueoka', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473d69430f2.jpeg', 'upload/thumbnail_img_5d473d69430f2.jpeg', '2019-08-04 17:17:45', NULL, 1),
(41, 'Mauro Nunes', 'mauro.nunes', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473d8060ac5.jpeg', 'upload/thumbnail_img_5d473d8060ac5.jpeg', '2019-08-04 17:18:08', NULL, 1),
(42, 'Oliveira', 'oliveira', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473d90e506f.jpeg', 'upload/thumbnail_img_5d473d90e506f.jpeg', '2019-08-04 17:18:24', NULL, 1),
(43, 'Silva', 'silva', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473d9b17192.jpeg', 'upload/thumbnail_img_5d473d9b17192.jpeg', '2019-08-04 17:18:35', NULL, 1),
(44, 'Solano', 'solano', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473da88549b.jpeg', 'upload/thumbnail_img_5d473da88549b.jpeg', '2019-08-04 17:18:48', NULL, 1),
(45, 'Thiago Peralta', 'thiago.peralta', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1973, 'upload/img_5d473dc85157c.jpeg', 'upload/thumbnail_img_5d473dc85157c.jpeg', '2019-08-04 17:19:20', NULL, 1),
(46, 'Yrapuan', 'yrapuan', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, 'upload/img_5d473dd4066c2.jpeg', 'upload/thumbnail_img_5d473dd4066c2.jpeg', '2019-08-04 17:19:32', NULL, 1);

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
(27, 'A lista só aumenta: Globo já perdeu 12 jornalistas em 2019', '<p>Ainda faltam quatro meses para o ano acabar, mas a Globo j&aacute; perdeu 12 jornalistas conhecidos pelo grande p&uacute;blico em 2019. A lista inclui rep&oacute;rteres esportivos, &acirc;ncoras de telejornais e at&eacute; apresentadores de atra&ccedil;&otilde;es com temas bem espec&iacute;ficos, como o &lsquo;<strong>Bem Estar</strong>&rsquo;, que abordava pautas de sa&uacute;de.</p>', NULL, 'upload/img_5d4639e9dc4d5.jpg', 'upload/thumbnail_img_5d4639e9dc4d5.jpg', 0, 0, 'N', '2019-08-03 22:50:33', NULL, 1),
(28, 'Anitta se arruma para show e faz piada: \\\'Cabelo de mentira, peito de mentira, boca de mentira\\\'', '<p>N&atilde;o se levar t&atilde;o a s&eacute;rio &eacute; uma das caracter&iacute;sticas marcantes de Anitta. Pouco antes de entrar no palco e colocar o p&uacute;blico para dan&ccedil;ar, a cantora registrou um pouco dos bastidores de seu show na Espanha e fez gra&ccedil;a com a pr&oacute;pria apar&ecirc;ncia.</p>', NULL, 'upload/img_5d46b382962d8.jpg', 'upload/thumbnail_img_5d46b382962d8.jpg', 0, 0, 'N', '2019-08-04 07:29:22', NULL, 1),
(30, 'Vasco busca renovação com maior promessa da base', '<p>Talles Magno tem feito bons treinos e impressionado no Vasco. Tanto que o clube j&aacute; trata o jogador como a maior promessa revelada por sua base nos &uacute;ltimos anos. E a luta atual &eacute; para conseguir renovar o contrato para que ele n&atilde;o seja negociado por um valor muito baixo.</p><p>Talles Magno tem feito bons treinos e impressionado no Vasco. Tanto que o clube j&aacute; trata o jogador como a maior promessa revelada por sua base nos &uacute;ltimos anos. E a luta atual &eacute; para conseguir renovar o contrato para que ele n&atilde;o seja negociado por um valor muito baixo.</p><p>Talles Magno tem feito bons treinos e impressionado no Vasco. Tanto que o clube j&aacute; trata o jogador como a maior promessa revelada por sua base nos &uacute;ltimos anos. E a luta atual &eacute; para conseguir renovar o contrato para que ele n&atilde;o seja negociado por um valor muito baixo.</p><p>Talles Magno tem feito bons treinos e impressionado no Vasco. Tanto que o clube j&aacute; trata o jogador como a maior promessa revelada por sua base nos &uacute;ltimos anos. E a luta atual &eacute; para conseguir renovar o contrato para que ele n&atilde;o seja negociado por um valor muito baixo.</p><p>Talles Magno tem feito bons treinos e impressionado no Vasco. Tanto que o clube j&aacute; trata o jogador como a maior promessa revelada por sua base nos &uacute;ltimos anos. E a luta atual &eacute; para conseguir renovar o contrato para que ele n&atilde;o seja negociado por um valor muito baixo.</p>', NULL, 'upload/img_5d46b76eeafd8.jpg', 'upload/thumbnail_img_5d46b76eeafd8.jpg', 0, 0, 'N', '2019-08-04 07:46:07', NULL, 1),
(31, 'Calcule se você entra na transição e escapa da reforma da Previdência', '<p content=\"SÃO PAULO, SP (FOLHAPRESS) - Simaria, 37, comemorou o batizado de seu caçula e dividiu a ocasião com seus seguidores nesta sexta-feira (2). Pawel, 4, é fruto do casamento da cantora com o empresário espanhol Vicente Escrig.\" data-reactid=\"22\" type=\"text\">S&Atilde;O PAULO, SP (FOLHAPRESS) - Simaria, 37, comemorou o batizado de seu ca&ccedil;ula e dividiu a ocasi&atilde;o com seus seguidores nesta sexta-feira (2).&nbsp;Pawel, 4, &eacute; fruto do casamento da cantora com o empres&aacute;rio espanhol&nbsp;Vicente Escrig.</p><p content=\'Em seu Instagram, Simaria publicou foto ao lado do marido e dos filhos. A cantora, que também é mãe de Giovanna, 7, agradeceu ao irmão e a cunhada pelo apadrinhamento do pequeno. \"Pawel veio com a missao de salvar minha vida. Agradeço a Deus todos os dias por esse presente, meu filho está blindando pelo amor de Cristo!\", disse. \' data-reactid=\"23\" type=\"text\">Em seu Instagram, Simaria publicou foto ao lado do marido e dos filhos. A cantora, que tamb&eacute;m &eacute; m&atilde;e de Giovanna, 7, agradeceu ao irm&atilde;o e a cunhada pelo apadrinhamento do pequeno. &quot;Pawel veio com a missao de salvar minha vida. Agrade&ccedil;o a Deus todos os dias por esse presente, meu filho est&aacute; blindando pelo amor de Cristo!&quot;, disse.&nbsp;</p><p content=\'Simaria e a irmã, Simone, 35, foram nomeadas em julho Embaixadoras da Festa de Barretos, ganhando o título de primeiras mulheres a exercerem a função. No entanto, a dupla garante não se sentir intimidada: \"Tenho certeza que faremos bonito e honraremos o posto\", disse Simone em uma entrevista à reportagem. \' data-reactid=\"24\" type=\"text\">Simaria e a irm&atilde;, Simone, 35, foram nomeadas em julho Embaixadoras da Festa de Barretos, ganhando o t&iacute;tulo de primeiras mulheres a exercerem a fun&ccedil;&atilde;o. No entanto, a dupla garante n&atilde;o se sentir intimidada: &quot;Tenho certeza que faremos bonito e honraremos o posto&quot;, disse Simone em uma entrevista &agrave; reportagem.&nbsp;</p>', NULL, 'upload/img_5d46bcff5b3f3.jpg', 'upload/thumbnail_img_5d46bcff5b3f3.jpg', 0, 0, 'A', '2019-08-04 08:09:51', NULL, 1),
(32, 'Encontro no Ver o Rio - 03/08/2019', '<p>O encontro ocorrer&aacute; a partir das 08h no Ver o Rio, traga seus amigos e familiares.</p>', NULL, 'upload/img_5d46bf2dd13fa.jpeg', 'upload/thumbnail_img_5d46bf2dd13fa.jpeg', 0, 0, 'A', '2019-08-04 08:19:09', NULL, 1);

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
-- Despejando dados para a tabela `tb_videos`
--

INSERT INTO `tb_videos` (`idVideo`, `tituloVideo`, `codVideo`, `urlVideo`, `dataCaptura`) VALUES
(1, 'Pará Fusca Clube Dia Nacional do Fusca 2014', 'hLeoKS3FUc8', 'https://www.youtube.com/watch?v=hLeoKS3FUc8', '2019-08-04 16:38:39'),
(2, 'Pará Fusca Clube Dia Nacional do Fusca 2014 IV', 'Bp5AZDWZDJE', 'https://www.youtube.com/watch?v=Bp5AZDWZDJE', '2019-08-04 16:39:35'),
(3, 'Pará Fusca Clube Dia Nacional do Fusca 2014 III', '5xKrsnx2h-4', 'https://www.youtube.com/watch?v=5xKrsnx2h-4', '2019-08-04 16:40:03'),
(4, 'Pará Fusca Clube IV Encontro Castanhal Part, 1', 'icDObRrRxv0', 'https://www.youtube.com/watch?v=icDObRrRxv0', '2019-08-04 16:40:24'),
(5, 'Pará Fusca Clube IV Encontro Castanhal Part, 2', 'KCYvzBnUabs', 'https://www.youtube.com/watch?v=KCYvzBnUabs', '2019-08-04 16:40:47'),
(6, 'Clube Antigos Pará - Encontro no Gramado 2 (13/12/2014)', 'SDpSx-KBXP4', 'https://www.youtube.com/watch?v=SDpSx-KBXP4', '2019-08-04 16:41:27'),
(7, 'Pará Fusca Clube e Carros Antigos do Pará', 'ttpnWrc417M', 'https://www.youtube.com/watch?v=ttpnWrc417M', '2019-08-04 16:41:55'),
(8, 'Oliveira Joias Natal 2014 Part 01', 'Q5236z-bEQY', 'https://www.youtube.com/watch?v=Q5236z-bEQY', '2019-08-04 16:42:14'),
(9, 'Oliveira Joias Natal 2014 Part 02', 'P9iuMfuy6IA', 'https://www.youtube.com/watch?v=P9iuMfuy6IA', '2019-08-04 16:42:54'),
(10, 'Oliveira Joias - Album da Mamãe Noel 2014', '90gOkKaVTaM', 'https://www.youtube.com/watch?v=90gOkKaVTaM', '2019-08-04 16:43:12'),
(11, 'Pará Fusca Clube - Dia Nacional do Fusca 2015 Parte 01', 'i6PBeuouxKU&t=4', 'https://www.youtube.com/watch?v=i6PBeuouxKU&t=4s', '2019-08-04 16:44:09'),
(12, 'Pará Fusca Clube - Dia Nacional do Fusca 2015 Parte 02', '-96Le5XuALA&t=2', 'https://www.youtube.com/watch?v=-96Le5XuALA&t=2s', '2019-08-04 16:44:38'),
(13, 'Pará Fusca Clube 7º Encontro Passeio 2ª Parte', 'RYvBbYM8uJU', 'https://www.youtube.com/watch?v=RYvBbYM8uJU', '2019-08-04 16:47:00'),
(14, 'Pará Fusca Clube 4º Encontro Passeio', 'HUKlV3XW2O8', 'https://www.youtube.com/watch?v=HUKlV3XW2O8', '2019-08-04 16:47:18'),
(15, 'Pará Fusca Clube no Dia Nacional do Fusca', 'q_O0Z48m5SU', 'https://www.youtube.com/watch?v=q_O0Z48m5SU', '2019-08-04 16:47:39'),
(16, 'Pará Fusca Clube 3º Encontro Passeio e Feijoada', 'yfeP3jOy5Xo', 'https://www.youtube.com/watch?v=yfeP3jOy5Xo', '2019-08-04 16:48:29'),
(17, 'Pará Fusca Clube 1º Encontro', 'NZAZi-118kE', 'https://www.youtube.com/watch?v=NZAZi-118kE', '2019-08-04 16:48:52'),
(18, 'Pará Fusca Clube - 9º Encontro Passeio com Churrasco', 'QweUutqchHs', 'https://www.youtube.com/watch?v=QweUutqchHs', '2019-08-04 16:49:25'),
(19, 'Natal Solidário Pará Fusca Clube - Vila da Barca', 'Asmf_Jnda88', 'https://www.youtube.com/watch?v=Asmf_Jnda88', '2019-08-04 16:49:46');

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
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT de tabela `tb_membros`
--
ALTER TABLE `tb_membros`
  MODIFY `idMembro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_noticias`
--
ALTER TABLE `tb_noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_videos`
--
ALTER TABLE `tb_videos`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
