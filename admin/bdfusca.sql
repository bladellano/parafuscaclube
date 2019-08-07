-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 07/08/2019 às 06:46
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
(36, 0, '8º Encontro Passeio dia 21/04/2013', '2019-08-05 01:12:30'),
(37, 0, '9º Encontro Passeio Churrasco dia 19/05/2013', '2019-08-06 23:13:32'),
(38, 0, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '2019-08-06 23:13:49'),
(39, 0, '11º Encontro de Aniversário', '2019-08-06 23:24:13'),
(40, 0, '12º Encontro 15/09/2013', '2019-08-06 23:24:31'),
(41, 0, '15º Encontro no Restaurante Terra do Meio', '2019-08-06 23:27:54'),
(42, 0, '18º Encontro Arrecadação para Natal Solidário', '2019-08-06 23:28:09'),
(43, 0, 'Aniversário do Sr. Maurício 23/08/2013', '2019-08-06 23:40:14'),
(44, 0, 'Confraternização de Natal 2015', '2019-08-06 23:40:30'),
(45, 0, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE JESUS', '2019-08-06 23:43:18'),
(46, 0, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 2014', '2019-08-06 23:43:24'),
(47, 0, 'Dia Mundial do Fusca 22/06/2014', '2019-08-06 23:46:58'),
(48, 0, 'Encontro de Carros Antigos', '2019-08-06 23:47:08'),
(49, 0, 'II Encontro Pará Fusca Clube em Castanhal/PA', '2019-08-06 23:58:57'),
(50, 0, 'III ENCONTRO DE CASTANHAL', '2019-08-06 23:59:48'),
(51, 0, 'IV Encontro Castanhal', '2019-08-07 00:01:21'),
(52, 0, 'Quarto Encontro Castanhal', '2019-08-07 00:07:22'),
(53, 0, 'Album Diversos I ', '2019-08-07 00:30:07'),
(54, 0, 'Album Diversos II', '2019-08-07 00:44:22');

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
(230, '8º Encontro Passeio dia 21/04/2013', '01.jpg', 'upload/img_5d478298c8c84.jpg', 1, 36, '2019-08-05 01:12:56'),
(231, '9º Encontro Passeio Churrasco dia 19/05/2013', '01.jpg', 'upload/img_5d4a0b73193d1.jpg', 1, 37, '2019-08-06 23:21:23'),
(232, '9º Encontro Passeio Churrasco dia 19/05/2013', '02.jpg', 'upload/img_5d4a0b733367c.jpg', 1, 37, '2019-08-06 23:21:23'),
(233, '9º Encontro Passeio Churrasco dia 19/05/2013', '03.jpg', 'upload/img_5d4a0b73410ce.jpg', 1, 37, '2019-08-06 23:21:23'),
(234, '9º Encontro Passeio Churrasco dia 19/05/2013', '04.jpg', 'upload/img_5d4a0b734eb7c.jpg', 1, 37, '2019-08-06 23:21:23'),
(235, '9º Encontro Passeio Churrasco dia 19/05/2013', '05.jpg', 'upload/img_5d4a0b735c7ba.jpg', 1, 37, '2019-08-06 23:21:23'),
(236, '9º Encontro Passeio Churrasco dia 19/05/2013', '06.jpg', 'upload/img_5d4a0b736a143.jpg', 1, 37, '2019-08-06 23:21:23'),
(237, '9º Encontro Passeio Churrasco dia 19/05/2013', '07.jpg', 'upload/img_5d4a0b737a796.jpg', 1, 37, '2019-08-06 23:21:23'),
(238, '9º Encontro Passeio Churrasco dia 19/05/2013', '08.jpg', 'upload/img_5d4a0b738828d.jpg', 1, 37, '2019-08-06 23:21:23'),
(239, '9º Encontro Passeio Churrasco dia 19/05/2013', '09.jpg', 'upload/img_5d4a0b7395dd6.jpg', 1, 37, '2019-08-06 23:21:23'),
(240, '9º Encontro Passeio Churrasco dia 19/05/2013', '10.jpg', 'upload/img_5d4a0b73a6473.jpg', 1, 37, '2019-08-06 23:21:23'),
(241, '9º Encontro Passeio Churrasco dia 19/05/2013', '11.jpg', 'upload/img_5d4a0b73b6c01.jpg', 1, 37, '2019-08-06 23:21:23'),
(242, '9º Encontro Passeio Churrasco dia 19/05/2013', '12.jpg', 'upload/img_5d4a0b73c72c8.jpg', 1, 37, '2019-08-06 23:21:23'),
(243, '9º Encontro Passeio Churrasco dia 19/05/2013', '13.jpg', 'upload/img_5d4a0b73d4d8e.jpg', 1, 37, '2019-08-06 23:21:23'),
(244, '9º Encontro Passeio Churrasco dia 19/05/2013', '14.jpg', 'upload/img_5d4a0b73e2797.jpg', 1, 37, '2019-08-06 23:21:23'),
(245, '9º Encontro Passeio Churrasco dia 19/05/2013', '15.jpg', 'upload/img_5d4a0b73f09b1.jpg', 1, 37, '2019-08-06 23:21:24'),
(246, '9º Encontro Passeio Churrasco dia 19/05/2013', '16.jpg', 'upload/img_5d4a0b740a2a8.jpg', 1, 37, '2019-08-06 23:21:24'),
(247, '9º Encontro Passeio Churrasco dia 19/05/2013', '17.jpg', 'upload/img_5d4a0b7415184.jpg', 1, 37, '2019-08-06 23:21:24'),
(248, '9º Encontro Passeio Churrasco dia 19/05/2013', '18.jpg', 'upload/img_5d4a0b7422cad.jpg', 1, 37, '2019-08-06 23:21:24'),
(249, '9º Encontro Passeio Churrasco dia 19/05/2013', '19.jpg', 'upload/img_5d4a0b7430736.jpg', 1, 37, '2019-08-06 23:21:24'),
(250, '9º Encontro Passeio Churrasco dia 19/05/2013', '20.jpg', 'upload/img_5d4a0b743b6c7.jpg', 1, 37, '2019-08-06 23:21:24'),
(251, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '01.jpg', 'upload/img_5d4a0be703fb3.jpg', 1, 38, '2019-08-06 23:23:19'),
(252, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '02.jpg', 'upload/img_5d4a0be72139d.jpg', 1, 38, '2019-08-06 23:23:19'),
(253, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '03.jpg', 'upload/img_5d4a0be7319bd.jpg', 1, 38, '2019-08-06 23:23:19'),
(254, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '04.jpg', 'upload/img_5d4a0be73f403.jpg', 1, 38, '2019-08-06 23:23:19'),
(255, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '05.jpg', 'upload/img_5d4a0be752608.jpg', 1, 38, '2019-08-06 23:23:19'),
(256, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '06.jpg', 'upload/img_5d4a0be760028.jpg', 1, 38, '2019-08-06 23:23:19'),
(257, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '07.jpg', 'upload/img_5d4a0be76da3d.jpg', 1, 38, '2019-08-06 23:23:19'),
(258, '10º Encontro no Dia Mundial do Fusca 23/06/2013', '08.jpg', 'upload/img_5d4a0be77b4f3.jpg', 1, 38, '2019-08-06 23:23:19'),
(259, '11º Encontro de Aniversário', '01.jpg', 'upload/img_5d4a0cb163b96.jpg', 1, 39, '2019-08-06 23:26:41'),
(260, '11º Encontro de Aniversário', '02.jpg', 'upload/img_5d4a0cb181aab.jpg', 1, 39, '2019-08-06 23:26:41'),
(261, '11º Encontro de Aniversário', '03.jpg', 'upload/img_5d4a0cb18f516.jpg', 1, 39, '2019-08-06 23:26:41'),
(262, '11º Encontro de Aniversário', '04.jpg', 'upload/img_5d4a0cb19a4a2.jpg', 1, 39, '2019-08-06 23:26:41'),
(263, '11º Encontro de Aniversário', '05.jpg', 'upload/img_5d4a0cb1aab58.jpg', 1, 39, '2019-08-06 23:26:41'),
(264, '11º Encontro de Aniversário', '06.jpg', 'upload/img_5d4a0cb1bde1c.jpg', 1, 39, '2019-08-06 23:26:41'),
(265, '11º Encontro de Aniversário', '07.jpg', 'upload/img_5d4a0cb1cb832.jpg', 1, 39, '2019-08-06 23:26:41'),
(266, '11º Encontro de Aniversário', '08.jpg', 'upload/img_5d4a0cb1dbeb6.jpg', 1, 39, '2019-08-06 23:26:41'),
(267, '11º Encontro de Aniversário', '09.jpg', 'upload/img_5d4a0cb1e99be.jpg', 1, 39, '2019-08-06 23:26:41'),
(268, '11º Encontro de Aniversário', '10.jpg', 'upload/img_5d4a0cb203990.jpg', 1, 39, '2019-08-06 23:26:42'),
(269, '11º Encontro de Aniversário', '11.jpg', 'upload/img_5d4a0cb2114a8.jpg', 1, 39, '2019-08-06 23:26:42'),
(270, '11º Encontro de Aniversário', '12.jpg', 'upload/img_5d4a0cb21ee83.jpg', 1, 39, '2019-08-06 23:26:42'),
(271, '11º Encontro de Aniversário', '13.jpg', 'upload/img_5d4a0cb229e81.jpg', 1, 39, '2019-08-06 23:26:42'),
(272, '12º Encontro 15/09/2013', '01.jpg', 'upload/img_5d4a0cc11230d.jpg', 1, 40, '2019-08-06 23:26:57'),
(273, '12º Encontro 15/09/2013', '02.jpg', 'upload/img_5d4a0cc121274.jpg', 1, 40, '2019-08-06 23:26:57'),
(274, '12º Encontro 15/09/2013', '03.jpg', 'upload/img_5d4a0cc12ed27.jpg', 1, 40, '2019-08-06 23:26:57'),
(275, '12º Encontro 15/09/2013', '04.jpg', 'upload/img_5d4a0cc13c6e5.jpg', 1, 40, '2019-08-06 23:26:57'),
(276, '12º Encontro 15/09/2013', '05.jpg', 'upload/img_5d4a0cc1551c5.jpg', 1, 40, '2019-08-06 23:26:57'),
(277, '12º Encontro 15/09/2013', '06.jpg', 'upload/img_5d4a0cc16008e.jpg', 1, 40, '2019-08-06 23:26:57'),
(278, '15º Encontro no Restaurante Terra do Meio', '01.jpg', 'upload/img_5d4a0d327e0fe.jpg', 1, 41, '2019-08-06 23:28:50'),
(279, '15º Encontro no Restaurante Terra do Meio', '02.jpg', 'upload/img_5d4a0d3299bd1.jpg', 1, 41, '2019-08-06 23:28:50'),
(280, '15º Encontro no Restaurante Terra do Meio', '03.jpg', 'upload/img_5d4a0d32a8987.jpg', 1, 41, '2019-08-06 23:28:50'),
(281, '15º Encontro no Restaurante Terra do Meio', '04.jpg', 'upload/img_5d4a0d32b392a.jpg', 1, 41, '2019-08-06 23:28:50'),
(282, '15º Encontro no Restaurante Terra do Meio', '05.jpg', 'upload/img_5d4a0d32c139b.jpg', 1, 41, '2019-08-06 23:28:50'),
(283, '15º Encontro no Restaurante Terra do Meio', '06.jpg', 'upload/img_5d4a0d32ceec0.jpg', 1, 41, '2019-08-06 23:28:50'),
(284, '18º Encontro Arrecadação para Natal Solidário', '01.jpg', 'upload/img_5d4a0d4171a30.jpg', 1, 42, '2019-08-06 23:29:05'),
(285, '18º Encontro Arrecadação para Natal Solidário', '02.jpg', 'upload/img_5d4a0d417f9f0.jpg', 1, 42, '2019-08-06 23:29:05'),
(286, '18º Encontro Arrecadação para Natal Solidário', '03.jpg', 'upload/img_5d4a0d418d40f.jpg', 1, 42, '2019-08-06 23:29:05'),
(287, '18º Encontro Arrecadação para Natal Solidário', '04.jpg', 'upload/img_5d4a0d4198a76.jpg', 1, 42, '2019-08-06 23:29:05'),
(288, '18º Encontro Arrecadação para Natal Solidário', '05.jpg', 'upload/img_5d4a0d41a65ac.jpg', 1, 42, '2019-08-06 23:29:05'),
(289, '18º Encontro Arrecadação para Natal Solidário', '06.jpg', 'upload/img_5d4a0d41b412e.jpg', 1, 42, '2019-08-06 23:29:05'),
(290, '18º Encontro Arrecadação para Natal Solidário', '07.jpg', 'upload/img_5d4a0d41c4706.jpg', 1, 42, '2019-08-06 23:29:05'),
(291, '18º Encontro Arrecadação para Natal Solidário', '08.jpg', 'upload/img_5d4a0d41d4f02.jpg', 1, 42, '2019-08-06 23:29:05'),
(292, '18º Encontro Arrecadação para Natal Solidário', '09.jpg', 'upload/img_5d4a0d41e292d.jpg', 1, 42, '2019-08-06 23:29:05'),
(293, '18º Encontro Arrecadação para Natal Solidário', '10.jpg', 'upload/img_5d4a0d41ed98e.jpg', 1, 42, '2019-08-06 23:29:05'),
(294, '18º Encontro Arrecadação para Natal Solidário', '11.jpg', 'upload/img_5d4a0d420709d.jpg', 1, 42, '2019-08-06 23:29:06'),
(295, '18º Encontro Arrecadação para Natal Solidário', '12.jpg', 'upload/img_5d4a0d4212003.jpg', 1, 42, '2019-08-06 23:29:06'),
(296, '18º Encontro Arrecadação para Natal Solidário', '13.jpg', 'upload/img_5d4a0d421cf1b.jpg', 1, 42, '2019-08-06 23:29:06'),
(297, '18º Encontro Arrecadação para Natal Solidário', '14.jpg', 'upload/img_5d4a0d4227fda.jpg', 1, 42, '2019-08-06 23:29:06'),
(298, 'Aniversário do Sr. Maurício 23/08/2013', '01.jpg', 'upload/img_5d4a1009a98cc.jpg', 1, 43, '2019-08-06 23:40:57'),
(299, 'Aniversário do Sr. Maurício 23/08/2013', '02.jpg', 'upload/img_5d4a1009bd80c.jpg', 1, 43, '2019-08-06 23:40:57'),
(300, 'Aniversário do Sr. Maurício 23/08/2013', '03.jpg', 'upload/img_5d4a1009cb2fb.jpg', 1, 43, '2019-08-06 23:40:57'),
(301, 'Aniversário do Sr. Maurício 23/08/2013', '04.jpg', 'upload/img_5d4a1009d69c0.jpg', 1, 43, '2019-08-06 23:40:57'),
(302, 'Aniversário do Sr. Maurício 23/08/2013', '05.jpg', 'upload/img_5d4a1009e4537.jpg', 1, 43, '2019-08-06 23:40:57'),
(303, 'Aniversário do Sr. Maurício 23/08/2013', '06.jpg', 'upload/img_5d4a1009ef4b4.jpg', 1, 43, '2019-08-06 23:40:57'),
(304, 'Aniversário do Sr. Maurício 23/08/2013', '07.jpg', 'upload/img_5d4a100a08d12.jpg', 1, 43, '2019-08-06 23:40:58'),
(305, 'Aniversário do Sr. Maurício 23/08/2013', '08.jpg', 'upload/img_5d4a100a1be8b.jpg', 1, 43, '2019-08-06 23:40:58'),
(306, 'Aniversário do Sr. Maurício 23/08/2013', '09.jpg', 'upload/img_5d4a100a2f275.jpg', 1, 43, '2019-08-06 23:40:58'),
(307, 'Aniversário do Sr. Maurício 23/08/2013', '10.jpg', 'upload/img_5d4a100a424c2.jpg', 1, 43, '2019-08-06 23:40:58'),
(308, 'Aniversário do Sr. Maurício 23/08/2013', '11.jpg', 'upload/img_5d4a100a4ff60.jpg', 1, 43, '2019-08-06 23:40:58'),
(309, 'Confraternização de Natal 2015', '01.jpg', 'upload/img_5d4a103166741.jpg', 1, 44, '2019-08-06 23:41:37'),
(310, 'Confraternização de Natal 2015', '02.jpg', 'upload/img_5d4a103176d55.jpg', 1, 44, '2019-08-06 23:41:37'),
(311, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '01.jpg', 'upload/img_5d4a10ac42b3b.jpg', 1, 45, '2019-08-06 23:43:40'),
(312, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '02.jpg', 'upload/img_5d4a10ac51737.jpg', 1, 45, '2019-08-06 23:43:40'),
(313, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '03.jpg', 'upload/img_5d4a10ac6cabc.jpg', 1, 45, '2019-08-06 23:43:40'),
(314, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '04.jpg', 'upload/img_5d4a10ac7d089.jpg', 1, 45, '2019-08-06 23:43:40'),
(315, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '05.jpg', 'upload/img_5d4a10ac8d7f8.jpg', 1, 45, '2019-08-06 23:43:40'),
(316, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '06.jpg', 'upload/img_5d4a10ac9b1d8.jpg', 1, 45, '2019-08-06 23:43:40'),
(317, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '07.jpg', 'upload/img_5d4a10aca60ea.jpg', 1, 45, '2019-08-06 23:43:40'),
(318, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '08.jpg', 'upload/img_5d4a10acb10dc.jpg', 1, 45, '2019-08-06 23:43:40'),
(319, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '09.jpg', 'upload/img_5d4a10acbeb4d.jpg', 1, 45, '2019-08-06 23:43:40'),
(320, '21º ENCONTRO AÇÃO SOCIAL CRECHE LAR CORDEIRINHO DE', '10.jpg', 'upload/img_5d4a10accf1d6.jpg', 1, 45, '2019-08-06 23:43:40'),
(321, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '01.jpg', 'upload/img_5d4a10bf9e997.jpg', 1, 46, '2019-08-06 23:43:59'),
(322, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '02.jpg', 'upload/img_5d4a10bfaca0d.jpg', 1, 46, '2019-08-06 23:43:59'),
(323, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '03.jpg', 'upload/img_5d4a10bfc291f.jpg', 1, 46, '2019-08-06 23:43:59'),
(324, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '04.jpg', 'upload/img_5d4a10bfd6141.jpg', 1, 46, '2019-08-06 23:43:59'),
(325, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '05.jpg', 'upload/img_5d4a10bfe1098.jpg', 1, 46, '2019-08-06 23:43:59'),
(326, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '06.jpg', 'upload/img_5d4a10bfebff7.jpg', 1, 46, '2019-08-06 23:43:59'),
(327, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '07.jpg', 'upload/img_5d4a10c0058ec.jpg', 1, 46, '2019-08-06 23:44:00'),
(328, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '08.jpg', 'upload/img_5d4a10c0108ca.jpg', 1, 46, '2019-08-06 23:44:00'),
(329, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '09.jpg', 'upload/img_5d4a10c01e3eb.jpg', 1, 46, '2019-08-06 23:44:00'),
(330, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '10.jpg', 'upload/img_5d4a10c02929c.jpg', 1, 46, '2019-08-06 23:44:00'),
(331, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '11.jpg', 'upload/img_5d4a10c036d6f.jpg', 1, 46, '2019-08-06 23:44:00'),
(332, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '12.jpg', 'upload/img_5d4a10c044831.jpg', 1, 46, '2019-08-06 23:44:00'),
(333, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '13.jpg', 'upload/img_5d4a10c057a68.jpg', 1, 46, '2019-08-06 23:44:00'),
(334, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '14.jpg', 'upload/img_5d4a10c065585.jpg', 1, 46, '2019-08-06 23:44:00'),
(335, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '15.jpg', 'upload/img_5d4a10c073110.jpg', 1, 46, '2019-08-06 23:44:00'),
(336, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '16.jpg', 'upload/img_5d4a10c080bb9.jpg', 1, 46, '2019-08-06 23:44:00'),
(337, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '17.jpg', 'upload/img_5d4a10c08e67a.jpg', 1, 46, '2019-08-06 23:44:00'),
(338, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '18.jpg', 'upload/img_5d4a10c09c194.jpg', 1, 46, '2019-08-06 23:44:00'),
(339, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '19.jpg', 'upload/img_5d4a10c0a9cf0.jpg', 1, 46, '2019-08-06 23:44:00'),
(340, '21º ENCONTRO COMEMORAÇÃO DIA NACIONAL DO FUSCA 201', '20.jpg', 'upload/img_5d4a10c0b7910.jpg', 1, 46, '2019-08-06 23:44:00'),
(341, 'Dia Mundial do Fusca 22/06/2014', '01.jpg', 'upload/img_5d4a1191be204.jpg', 1, 47, '2019-08-06 23:47:29'),
(342, 'Dia Mundial do Fusca 22/06/2014', '02.jpg', 'upload/img_5d4a1191cdfdb.jpg', 1, 47, '2019-08-06 23:47:29'),
(343, 'Dia Mundial do Fusca 22/06/2014', '03.jpg', 'upload/img_5d4a1191d9038.jpg', 1, 47, '2019-08-06 23:47:29'),
(344, 'Dia Mundial do Fusca 22/06/2014', '04.jpg', 'upload/img_5d4a1191e6ad1.jpg', 1, 47, '2019-08-06 23:47:29'),
(345, 'Dia Mundial do Fusca 22/06/2014', '05.jpg', 'upload/img_5d4a11920b12a.jpg', 1, 47, '2019-08-06 23:47:30'),
(346, 'Dia Mundial do Fusca 22/06/2014', '06.jpg', 'upload/img_5d4a119218bd0.jpg', 1, 47, '2019-08-06 23:47:30'),
(347, 'Dia Mundial do Fusca 22/06/2014', '07.jpg', 'upload/img_5d4a119226737.jpg', 1, 47, '2019-08-06 23:47:30'),
(348, 'Dia Mundial do Fusca 22/06/2014', '08.jpg', 'upload/img_5d4a1192315f3.jpg', 1, 47, '2019-08-06 23:47:30'),
(349, 'Dia Mundial do Fusca 22/06/2014', '09.jpg', 'upload/img_5d4a11923f176.jpg', 1, 47, '2019-08-06 23:47:30'),
(350, 'Dia Mundial do Fusca 22/06/2014', '10.jpg', 'upload/img_5d4a11924f6e7.jpg', 1, 47, '2019-08-06 23:47:30'),
(351, 'Dia Mundial do Fusca 22/06/2014', '11.jpg', 'upload/img_5d4a11925a721.jpg', 1, 47, '2019-08-06 23:47:30'),
(352, 'Encontro de Carros Antigos', '01.jpg', 'upload/img_5d4a1335deaf4.jpg', 1, 48, '2019-08-06 23:54:29'),
(353, 'Encontro de Carros Antigos', '02.jpg', 'upload/img_5d4a1335f05f8.jpg', 1, 48, '2019-08-06 23:54:29'),
(354, 'Encontro de Carros Antigos', '03.jpg', 'upload/img_5d4a133607339.jpg', 1, 48, '2019-08-06 23:54:30'),
(355, 'Encontro de Carros Antigos', '04.jpg', 'upload/img_5d4a133614e3e.jpg', 1, 48, '2019-08-06 23:54:30'),
(356, 'Encontro de Carros Antigos', '05.jpg', 'upload/img_5d4a13362289c.jpg', 1, 48, '2019-08-06 23:54:30'),
(357, 'Encontro de Carros Antigos', '06.jpg', 'upload/img_5d4a13362d890.jpg', 1, 48, '2019-08-06 23:54:30'),
(358, 'Encontro de Carros Antigos', '07.jpg', 'upload/img_5d4a13363b28c.jpg', 1, 48, '2019-08-06 23:54:30'),
(359, 'Encontro de Carros Antigos', '08.jpg', 'upload/img_5d4a133648e06.jpg', 1, 48, '2019-08-06 23:54:30'),
(360, 'Encontro de Carros Antigos', '09.jpg', 'upload/img_5d4a133656843.jpg', 1, 48, '2019-08-06 23:54:30'),
(361, 'Encontro de Carros Antigos', '10.jpg', 'upload/img_5d4a1336643d2.jpg', 1, 48, '2019-08-06 23:54:30'),
(362, 'Encontro de Carros Antigos', '11.jpg', 'upload/img_5d4a13367ccc8.jpg', 1, 48, '2019-08-06 23:54:30'),
(363, 'Encontro de Carros Antigos', '12.jpg', 'upload/img_5d4a1336980d0.jpg', 1, 48, '2019-08-06 23:54:30'),
(364, 'Encontro de Carros Antigos', '13.jpg', 'upload/img_5d4a1336ab2da.jpg', 1, 48, '2019-08-06 23:54:30'),
(365, 'Encontro de Carros Antigos', '14.jpg', 'upload/img_5d4a1336d403d.jpg', 1, 48, '2019-08-06 23:54:30'),
(366, 'Encontro de Carros Antigos', '15.jpg', 'upload/img_5d4a1336e45f1.jpg', 1, 48, '2019-08-06 23:54:30'),
(367, 'Encontro de Carros Antigos', '16.jpg', 'upload/img_5d4a133706356.jpg', 1, 48, '2019-08-06 23:54:31'),
(368, 'Encontro de Carros Antigos', '17.jpg', 'upload/img_5d4a133713cbb.jpg', 1, 48, '2019-08-06 23:54:31'),
(369, 'Encontro de Carros Antigos', '18.jpg', 'upload/img_5d4a13371f3c8.jpg', 1, 48, '2019-08-06 23:54:31'),
(370, 'Encontro de Carros Antigos', '19.jpg', 'upload/img_5d4a13372a2f3.jpg', 1, 48, '2019-08-06 23:54:31'),
(371, 'Encontro de Carros Antigos', '20.jpg', 'upload/img_5d4a1337400a9.jpg', 1, 48, '2019-08-06 23:54:31'),
(372, 'II Encontro Pará Fusca Clube em Castanhal/PA', '01.jpg', 'upload/img_5d4a14545091e.jpg', 1, 49, '2019-08-06 23:59:16'),
(373, 'II Encontro Pará Fusca Clube em Castanhal/PA', '02.jpg', 'upload/img_5d4a14546a428.jpg', 1, 49, '2019-08-06 23:59:16'),
(374, 'II Encontro Pará Fusca Clube em Castanhal/PA', '03.jpg', 'upload/img_5d4a1454753a7.jpg', 1, 49, '2019-08-06 23:59:16'),
(375, 'II Encontro Pará Fusca Clube em Castanhal/PA', '04.jpg', 'upload/img_5d4a1454802db.jpg', 1, 49, '2019-08-06 23:59:16'),
(376, 'II Encontro Pará Fusca Clube em Castanhal/PA', '05.jpg', 'upload/img_5d4a14548ddf3.jpg', 1, 49, '2019-08-06 23:59:16'),
(377, 'II Encontro Pará Fusca Clube em Castanhal/PA', '06.jpg', 'upload/img_5d4a1454a3b7c.jpg', 1, 49, '2019-08-06 23:59:16'),
(378, 'II Encontro Pará Fusca Clube em Castanhal/PA', '07.jpg', 'upload/img_5d4a1454aea90.jpg', 1, 49, '2019-08-06 23:59:16'),
(379, 'II Encontro Pará Fusca Clube em Castanhal/PA', '08.jpg', 'upload/img_5d4a1454c1bb2.jpg', 1, 49, '2019-08-06 23:59:16'),
(380, 'II Encontro Pará Fusca Clube em Castanhal/PA', '09.jpg', 'upload/img_5d4a1454d78ad.jpg', 1, 49, '2019-08-06 23:59:16'),
(381, 'III ENCONTRO DE CASTANHAL', '01.jpg', 'upload/img_5d4a148ba3c7a.jpg', 1, 50, '2019-08-07 00:00:11'),
(382, 'III ENCONTRO DE CASTANHAL', '02.jpg', 'upload/img_5d4a148bba317.jpg', 1, 50, '2019-08-07 00:00:11'),
(383, 'III ENCONTRO DE CASTANHAL', '03.jpg', 'upload/img_5d4a148bc5175.jpg', 1, 50, '2019-08-07 00:00:11'),
(384, 'III ENCONTRO DE CASTANHAL', '04.jpg', 'upload/img_5d4a148bd2cc4.jpg', 1, 50, '2019-08-07 00:00:11'),
(385, 'III ENCONTRO DE CASTANHAL', '05.jpg', 'upload/img_5d4a148bddb13.jpg', 1, 50, '2019-08-07 00:00:11'),
(386, 'III ENCONTRO DE CASTANHAL', '06.jpg', 'upload/img_5d4a148bf388f.jpg', 1, 50, '2019-08-07 00:00:12'),
(387, 'III ENCONTRO DE CASTANHAL', '07.jpg', 'upload/img_5d4a148c1ab28.jpg', 1, 50, '2019-08-07 00:00:12'),
(388, 'III ENCONTRO DE CASTANHAL', '08.jpg', 'upload/img_5d4a148c2dd8d.jpg', 1, 50, '2019-08-07 00:00:12'),
(389, 'III ENCONTRO DE CASTANHAL', '09.jpg', 'upload/img_5d4a148c43ab1.jpg', 1, 50, '2019-08-07 00:00:12'),
(390, 'III ENCONTRO DE CASTANHAL', '10.jpg', 'upload/img_5d4a148c51627.jpg', 1, 50, '2019-08-07 00:00:12'),
(391, 'III ENCONTRO DE CASTANHAL', '11.jpg', 'upload/img_5d4a148c5f13d.jpg', 1, 50, '2019-08-07 00:00:12'),
(392, 'IV Encontro Castanhal', '01.jpg', 'upload/img_5d4a14e2aac63.jpg', 1, 51, '2019-08-07 00:01:38'),
(393, 'IV Encontro Castanhal', '02.jpg', 'upload/img_5d4a14e2c041e.jpg', 1, 51, '2019-08-07 00:01:38'),
(394, 'IV Encontro Castanhal', '03.jpg', 'upload/img_5d4a14e2cdeb6.jpg', 1, 51, '2019-08-07 00:01:38'),
(395, 'IV Encontro Castanhal', '04.jpg', 'upload/img_5d4a14e2db9eb.jpg', 1, 51, '2019-08-07 00:01:38'),
(396, 'IV Encontro Castanhal', '05.jpg', 'upload/img_5d4a14e2e3dfc.jpg', 1, 51, '2019-08-07 00:01:38'),
(397, 'IV Encontro Castanhal', '06.jpg', 'upload/img_5d4a14e2ec24c.jpg', 1, 51, '2019-08-07 00:01:38'),
(398, 'IV Encontro Castanhal', '07.jpg', 'upload/img_5d4a14e302f03.jpg', 1, 51, '2019-08-07 00:01:39'),
(399, 'IV Encontro Castanhal', '08.jpg', 'upload/img_5d4a14e30de32.jpg', 1, 51, '2019-08-07 00:01:39'),
(400, 'IV Encontro Castanhal', '09.jpg', 'upload/img_5d4a14e318e40.jpg', 1, 51, '2019-08-07 00:01:39'),
(401, 'IV Encontro Castanhal', '10.jpg', 'upload/img_5d4a14e323d7b.jpg', 1, 51, '2019-08-07 00:01:39'),
(402, 'IV Encontro Castanhal', '11.jpg', 'upload/img_5d4a14e32ec9c.jpg', 1, 51, '2019-08-07 00:01:39'),
(403, 'IV Encontro Castanhal', '12.jpg', 'upload/img_5d4a14e33a355.jpg', 1, 51, '2019-08-07 00:01:39'),
(404, 'Quarto Encontro Castanhal', '01.jpg', 'upload/img_5d4a16587be90.jpg', 1, 52, '2019-08-07 00:07:52'),
(405, 'Quarto Encontro Castanhal', '02.jpg', 'upload/img_5d4a16588d466.jpg', 1, 52, '2019-08-07 00:07:52'),
(406, 'Quarto Encontro Castanhal', '03.jpg', 'upload/img_5d4a16589dadd.jpg', 1, 52, '2019-08-07 00:07:52'),
(407, 'Quarto Encontro Castanhal', '04.jpg', 'upload/img_5d4a1658ae0be.jpg', 1, 52, '2019-08-07 00:07:52'),
(408, 'Quarto Encontro Castanhal', '05.jpg', 'upload/img_5d4a1658b902d.jpg', 1, 52, '2019-08-07 00:07:52'),
(409, 'Quarto Encontro Castanhal', '06.jpg', 'upload/img_5d4a1658c3fea.jpg', 1, 52, '2019-08-07 00:07:52'),
(410, 'Quarto Encontro Castanhal', '07.jpg', 'upload/img_5d4a1658ceedb.jpg', 1, 52, '2019-08-07 00:07:52'),
(411, 'Quarto Encontro Castanhal', '08.jpg', 'upload/img_5d4a1658d9e2b.jpg', 1, 52, '2019-08-07 00:07:52'),
(412, 'Quarto Encontro Castanhal', '09.jpg', 'upload/img_5d4a1658f27b0.jpg', 1, 52, '2019-08-07 00:07:53'),
(413, 'Quarto Encontro Castanhal', '10.jpg', 'upload/img_5d4a165916e50.jpg', 1, 52, '2019-08-07 00:07:53'),
(414, 'Quarto Encontro Castanhal', '11.jpg', 'upload/img_5d4a165927469.jpg', 1, 52, '2019-08-07 00:07:53'),
(415, 'Quarto Encontro Castanhal', '12.jpg', 'upload/img_5d4a1659324f7.jpg', 1, 52, '2019-08-07 00:07:53'),
(416, 'Album Diversos I ', 'IMG_20150209_192703511.jpg', 'upload/img_5d4a1b9e210e0.jpg', NULL, 53, '2019-08-07 00:30:22'),
(417, 'Album Diversos I ', 'IMG_20150222_165912956.jpg', 'upload/img_5d4a1b9e3bac2.jpg', NULL, 53, '2019-08-07 00:30:22'),
(418, 'Album Diversos I ', 'IMG_20150222_165938447.jpg', 'upload/img_5d4a1b9e82502.jpg', NULL, 53, '2019-08-07 00:30:22'),
(419, 'Album Diversos I ', 'IMG_20150222_165941298.jpg', 'upload/img_5d4a1b9ec0e24.jpg', NULL, 53, '2019-08-07 00:30:23'),
(420, 'Album Diversos I ', 'IMG_20150422_081750739.jpg', 'upload/img_5d4a1b9f2397f.jpg', NULL, 53, '2019-08-07 00:30:23'),
(421, 'Album Diversos I ', 'IMG_20150425_115346566.jpg', 'upload/img_5d4a1b9f72677.jpg', NULL, 53, '2019-08-07 00:30:23'),
(422, 'Album Diversos I ', 'IMG_20150425_120511507.jpg', 'upload/img_5d4a1b9f906ac.jpg', NULL, 53, '2019-08-07 00:30:23'),
(423, 'Album Diversos I ', 'IMG_20150425_120513267.jpg', 'upload/img_5d4a1b9fa62c5.jpg', NULL, 53, '2019-08-07 00:30:23'),
(424, 'Album Diversos I ', 'IMG_20150425_120535834.jpg', 'upload/img_5d4a1b9fbc13b.jpg', NULL, 53, '2019-08-07 00:30:24'),
(425, 'Album Diversos I ', 'IMG_20150425_121017815.jpg', 'upload/img_5d4a1ba009285.jpg', NULL, 53, '2019-08-07 00:30:24'),
(426, 'Album Diversos I ', 'IMG_20150425_121512722.jpg', 'upload/img_5d4a1ba01ef85.jpg', NULL, 53, '2019-08-07 00:30:24'),
(427, 'Album Diversos I ', 'IMG_20150425_121525528.jpg', 'upload/img_5d4a1ba060bdd.jpg', NULL, 53, '2019-08-07 00:30:24'),
(428, 'Album Diversos I ', 'IMG_20150425_121545769.jpg', 'upload/img_5d4a1ba0a1fcf.jpg', NULL, 53, '2019-08-07 00:30:24'),
(429, 'Album Diversos I ', 'IMG_20150425_121548741.jpg', 'upload/img_5d4a1ba0ddd04.jpg', NULL, 53, '2019-08-07 00:30:25'),
(430, 'Album Diversos I ', 'IMG_20150425_121622076.jpg', 'upload/img_5d4a1ba12830c.jpg', NULL, 53, '2019-08-07 00:30:25'),
(431, 'Album Diversos I ', 'IMG_20150425_121638593.jpg', 'upload/img_5d4a1ba16407b.jpg', NULL, 53, '2019-08-07 00:30:25'),
(432, 'Album Diversos I ', 'IMG_20150425_135429491.jpg', 'upload/img_5d4a1ba19fd8f.jpg', NULL, 53, '2019-08-07 00:30:25'),
(433, 'Album Diversos I ', 'IMG_20150425_135442107.jpg', 'upload/img_5d4a1ba1de661.jpg', NULL, 53, '2019-08-07 00:30:26'),
(434, 'Album Diversos I ', 'IMG_20150425_135504207.jpg', 'upload/img_5d4a1ba225f10.jpg', NULL, 53, '2019-08-07 00:30:26'),
(435, 'Album Diversos I ', 'IMG_20150425_135531839.jpg', 'upload/img_5d4a1ba2673f2.jpg', NULL, 53, '2019-08-07 00:30:26'),
(474, 'Album Diversos II', 'IMG-20150919-WA0086.jpg', 'upload/img_5d4a2a7bc791a.jpg', 1, 54, '2019-08-07 01:33:47'),
(475, 'Album Diversos II', 'IMG-20150919-WA0192.jpg', 'upload/img_5d4a2a87ba143.jpg', 1, 54, '2019-08-07 01:33:59');

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
  `idUsuario` int(11) DEFAULT NULL,
  `dataCaptura` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `tb_videos`
--

INSERT INTO `tb_videos` (`idVideo`, `tituloVideo`, `codVideo`, `urlVideo`, `idUsuario`, `dataCaptura`) VALUES
(1, 'Pará Fusca Clube Dia Nacional do Fusca 2014', 'hLeoKS3FUc8', 'https://www.youtube.com/watch?v=hLeoKS3FUc8', 1, '2019-08-04 16:38:39'),
(2, 'Pará Fusca Clube Dia Nacional do Fusca 2014 IV', 'Bp5AZDWZDJE', 'https://www.youtube.com/watch?v=Bp5AZDWZDJE', 1, '2019-08-04 16:39:35'),
(3, 'Pará Fusca Clube Dia Nacional do Fusca 2014 III', '5xKrsnx2h-4', 'https://www.youtube.com/watch?v=5xKrsnx2h-4', 1, '2019-08-04 16:40:03'),
(4, 'Pará Fusca Clube IV Encontro Castanhal Part, 1', 'icDObRrRxv0', 'https://www.youtube.com/watch?v=icDObRrRxv0', 1, '2019-08-04 16:40:24'),
(5, 'Pará Fusca Clube IV Encontro Castanhal Part, 2', 'KCYvzBnUabs', 'https://www.youtube.com/watch?v=KCYvzBnUabs', 1, '2019-08-04 16:40:47'),
(6, 'Clube Antigos Pará - Encontro no Gramado 2 (13/12/2014)', 'SDpSx-KBXP4', 'https://www.youtube.com/watch?v=SDpSx-KBXP4', 1, '2019-08-04 16:41:27'),
(7, 'Pará Fusca Clube e Carros Antigos do Pará', 'ttpnWrc417M', 'https://www.youtube.com/watch?v=ttpnWrc417M', 1, '2019-08-04 16:41:55'),
(8, 'Oliveira Joias Natal 2014 Part 01', 'Q5236z-bEQY', 'https://www.youtube.com/watch?v=Q5236z-bEQY', 1, '2019-08-04 16:42:14'),
(9, 'Oliveira Joias Natal 2014 Part 02', 'P9iuMfuy6IA', 'https://www.youtube.com/watch?v=P9iuMfuy6IA', 1, '2019-08-04 16:42:54'),
(10, 'Oliveira Joias - Album da Mamãe Noel 2014', '90gOkKaVTaM', 'https://www.youtube.com/watch?v=90gOkKaVTaM', 1, '2019-08-04 16:43:12'),
(11, 'Pará Fusca Clube - Dia Nacional do Fusca 2015 Parte 01', 'i6PBeuouxKU&t=4', 'https://www.youtube.com/watch?v=i6PBeuouxKU&t=4s', 1, '2019-08-04 16:44:09'),
(12, 'Pará Fusca Clube - Dia Nacional do Fusca 2015 Parte 02', '-96Le5XuALA&t=2', 'https://www.youtube.com/watch?v=-96Le5XuALA&t=2s', 1, '2019-08-04 16:44:38'),
(13, 'Pará Fusca Clube 7º Encontro Passeio 2ª Parte', 'RYvBbYM8uJU', 'https://www.youtube.com/watch?v=RYvBbYM8uJU', 1, '2019-08-04 16:47:00'),
(14, 'Pará Fusca Clube 4º Encontro Passeio', 'HUKlV3XW2O8', 'https://www.youtube.com/watch?v=HUKlV3XW2O8', 1, '2019-08-04 16:47:18'),
(15, 'Pará Fusca Clube no Dia Nacional do Fusca', 'q_O0Z48m5SU', 'https://www.youtube.com/watch?v=q_O0Z48m5SU', 1, '2019-08-04 16:47:39'),
(16, 'Pará Fusca Clube 3º Encontro Passeio e Feijoada', 'yfeP3jOy5Xo', 'https://www.youtube.com/watch?v=yfeP3jOy5Xo', 1, '2019-08-04 16:48:29'),
(17, 'Pará Fusca Clube 1º Encontro', 'NZAZi-118kE', 'https://www.youtube.com/watch?v=NZAZi-118kE', 1, '2019-08-04 16:48:52'),
(18, 'Pará Fusca Clube - 9º Encontro Passeio com Churrasco', 'QweUutqchHs', 'https://www.youtube.com/watch?v=QweUutqchHs', 1, '2019-08-04 16:49:25'),
(19, 'Natal Solidário Pará Fusca Clube - Vila da Barca', 'Asmf_Jnda88', 'https://www.youtube.com/watch?v=Asmf_Jnda88', 1, '2019-08-04 16:49:46'),
(20, 'Encontro Praça Amazonas Junho 2019 1', 'XFX1a-CpY90', 'https://www.youtube.com/watch?v=XFX1a-CpY90', 1, '2019-08-06 19:19:20'),
(21, 'Encontro Praça Amazonas Junho 2019 2', 'Oeim6qOz2eg', 'https://www.youtube.com/watch?v=Oeim6qOz2eg', 1, '2019-08-06 19:24:37'),
(22, 'Encontro Praça Amazonas Junho 2019 3', 'EhswX-Ur5c0', 'https://www.youtube.com/watch?v=EhswX-Ur5c0', 1, '2019-08-06 19:27:14'),
(23, 'Encontro Praça Amazonas Junho 2019 5', 'Ymyze7Aohqk', 'https://www.youtube.com/watch?v=Ymyze7Aohqk', 1, '2019-08-06 19:31:31'),
(24, 'Encontro Praça Amazonas Junho 2019 6', 'kdXhpC6O0pk', 'https://www.youtube.com/watch?v=kdXhpC6O0pk', 1, '2019-08-06 19:34:37'),
(25, 'Encontro Praça Amazonas Junho 2019 7', 'S5SqJ7JXYbY', 'https://www.youtube.com/watch?v=S5SqJ7JXYbY&feature=youtu.be', 1, '2019-08-06 19:38:21'),
(26, 'Encontro Praça Amazonas Junho 2019 9', 'tk2Ja47OYcw', 'https://www.youtube.com/watch?v=tk2Ja47OYcw', 1, '2019-08-06 19:41:23'),
(27, 'Encontro Praça Amazonas Junho 2019 10', '1yZ4y0i_LMA', 'https://www.youtube.com/watch?v=1yZ4y0i_LMA', 1, '2019-08-06 19:42:30'),
(29, 'Encontro Praça Amazonas Junho 2019 12', 'jOOnFyCCTao', 'https://www.youtube.com/watch?v=jOOnFyCCTao', 1, '2019-08-06 19:44:03'),
(30, 'Encontro Praça Amazonas Junho 2019 13', 'cKjtZjHYUrI', 'https://www.youtube.com/watch?v=cKjtZjHYUrI', 1, '2019-08-06 19:44:48'),
(31, 'Encontro Praça Amazonas Junho 2019 14', '4_W8OMjRIFs', 'https://www.youtube.com/watch?v=4_W8OMjRIFs', 1, '2019-08-06 19:45:46'),
(32, 'Encontro Praça Amazonas Junho 2019 15', 'dwvATHsOfqY', 'https://www.youtube.com/watch?v=dwvATHsOfqY', 1, '2019-08-06 19:46:17'),
(33, 'Encontro Praça Amazonas Junho 2019 16', '7F5738HnElI', 'https://www.youtube.com/watch?v=7F5738HnElI', 1, '2019-08-06 19:48:16'),
(35, 'Encontro Praça Amazonas Junho 2019 18', '9lItfVXY2UM', 'https://www.youtube.com/watch?v=9lItfVXY2UM', 1, '2019-08-06 19:51:52'),
(36, 'Encontro Praça Amazonas Junho 2019 19', 'Jzx9D37Gztg', 'https://www.youtube.com/watch?v=Jzx9D37Gztg', 1, '2019-08-06 19:53:07'),
(37, 'Encontro Praça Amazonas Junho 2019 21', 'cwo8n-8u1yQ', 'https://www.youtube.com/watch?v=cwo8n-8u1yQ', 1, '2019-08-06 19:54:00'),
(38, 'Encontro Praça Amazonas Junho 2019 22', 'iZyDwz_KQD4', 'https://www.youtube.com/watch?v=iZyDwz_KQD4', 1, '2019-08-06 19:57:00'),
(39, 'Encontro 1 24/04/2015', 'Bj25jIBwHEA', 'https://www.youtube.com/watch?v=Bj25jIBwHEA&feature=youtu.be', 1, '2019-08-06 22:47:33'),
(40, 'Encontro 2 24/04/2015', 'U7hSEPvDauQ', 'https://www.youtube.com/watch?v=U7hSEPvDauQ', 1, '2019-08-06 22:48:17'),
(41, 'Encontro 3 24/04/2015', 'ZiuZSQ_DONM', 'https://www.youtube.com/watch?v=ZiuZSQ_DONM', 1, '2019-08-06 22:48:42'),
(42, 'Encontro 4 24/04/2015', '9nNuRHE7tJg', 'https://www.youtube.com/watch?v=9nNuRHE7tJg', 1, '2019-08-06 22:49:11');

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
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `idFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

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
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
