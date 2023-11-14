-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2023 a las 02:32:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecuadorian_Sign_Language_base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracter`
--

CREATE TABLE `caracter` (
  `id_caracter` int(11) NOT NULL,
  `caracter` varchar(2) NOT NULL,
  `video` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `caracter`
--

INSERT INTO `caracter` (`id_caracter`, `caracter`, `video`) VALUES
(1, '0', '0.webm'),
(2, '1', '1.webm'),
(3, '2', '2.webm'),
(4, '3', '3.webm'),
(5, '4', '4.webm'),
(6, '5', '5.webm'),
(7, '6', '6.webm'),
(8, '7', '7.webm'),
(9, '8', '8.webm'),
(10, '9', '9.webm'),
(11, 'a', 'a.webm'),
(12, 'á', 'a.webm'),
(13, 'b', 'b.webm'),
(14, 'c', 'c.webm'),
(15, 'd', 'd.webm'),
(16, 'e', 'e.webm'),
(17, 'é', 'e.webm'),
(18, 'f', 'f.webm'),
(19, 'g', 'g.webm'),
(20, 'h', 'h.webm'),
(21, 'i', 'i.webm'),
(22, 'í', 'i.webm'),
(23, 'j', 'j.webm'),
(24, 'k', 'k.webm'),
(25, 'l', 'l.webm'),
(26, 'm', 'm.webm'),
(27, 'n', 'n.webm'),
(28, 'ñ', 'n.webm'),
(29, 'o', 'o.webm'),
(30, 'ó', 'o.webm'),
(31, 'p', 'p.webm'),
(32, 'q', 'q.webm'),
(33, 'r', 'r.webm'),
(34, 's', 's.webm'),
(35, 't', 't.webm'),
(36, 'u', 'u.webm'),
(37, 'ú', 'u.webm'),
(38, 'v', 'v.webm'),
(39, 'w', 'w.webm'),
(40, 'x', 'x.webm'),
(41, 'y', 'y.webm'),
(42, 'z', 'z.webm'),
(43, '{', '{.webm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabra`
--

CREATE TABLE `palabra` (
  `id_palabra` int(11) NOT NULL,
  `palabra` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `palabra`
--

INSERT INTO `palabra` (`id_palabra`, `palabra`, `descripcion`, `video`) VALUES
(1, 'aceptar', 'aceptar', 'ACEPTAR.webm'),
(2, 'acusar', 'acusar', 'ACUSAR.webm'),
(3, 'agalla', 'agalla', 'AGALLA.webm'),
(4, 'aguila', 'aguila', 'AGUILA.webm'),
(5, 'albañil', 'albañil', 'ALBAÑIL.webm'),
(6, 'amadecasa', 'amadecasa', 'AMADECASA.webm'),
(7, 'amasar', 'amasar', 'AMASAR.webm'),
(8, 'anfibio', 'anfibio', 'ANFIBIO.webm'),
(9, 'ansiosa', 'ansiosa', 'ANSIOSA.webm'),
(10, 'ansioso', 'ansioso', 'ANSIOSO.webm'),
(11, 'armadillo', 'armadillo', 'ARMADILLO.webm'),
(12, 'asi', 'asi', 'ASI.webm'),
(13, 'atraves', 'atraves', 'ATRAVES.webm'),
(14, 'atropellar', 'atropellar', 'ATROPELLAR.webm'),
(15, 'automático', 'automático', 'AUTOMÁTICO.webm'),
(16, 'axila', 'axila', 'AXILA.webm'),
(17, 'bachillerato', 'bachillerato', 'BACHILLERATO.webm'),
(18, 'barbon', 'barbon', 'BARBON.webm'),
(19, 'barrer', 'barrer', 'BARRER.webm'),
(20, 'bebé', 'bebé', 'BEBÉ.webm'),
(21, 'billetera', 'billetera', 'BILLETERA.webm'),
(22, 'bisexual', 'bisexual', 'BISEXUAL.webm'),
(23, 'blanca', 'blanca', 'BLANCA.webm'),
(24, 'blanco', 'blanco', 'BLANCO.webm'),
(25, 'bobo', 'bobo', 'BOBO.webm'),
(26, 'bocacerrada', 'bocacerrada', 'BOCACERRADA.webm'),
(27, 'boda', 'boda', 'BODA.webm'),
(28, 'bolsadevalores', 'bolsadevalores', 'BOLSADEVALORES.webm'),
(29, 'bolsillo', 'bolsillo', 'BOLSILLO.webm'),
(30, 'bondad', 'bondad', 'BONDAD.webm'),
(31, 'bondadoso', 'bondadoso', 'BONDADOSO.webm'),
(32, 'bostezo', 'bostezo', 'BOSTEZO.webm'),
(33, 'buena', 'buena', 'BUENA.webm'),
(34, 'bueno', 'bueno', 'BUENO.webm'),
(35, 'buenprovecho', 'buenprovecho', 'BUENPROVECHO.webm'),
(36, 'cachetada', 'cachetada', 'CACHETADA.webm'),
(37, 'caducada', 'caducada', 'CADUCADA.webm'),
(38, 'caducado', 'caducado', 'CADUCADO.webm'),
(39, 'calculadora', 'calculadora', 'CALCULADORA.webm'),
(40, 'carajo', 'carajo', 'CARAJO.webm'),
(41, 'carrera', 'carrera', 'CARRERA.webm'),
(42, 'carretera', 'carretera', 'CARRETERA.webm'),
(43, 'carton', 'carton', 'CARTON.webm'),
(44, 'casa', 'casa', 'CASA.webm'),
(45, 'caspa', 'caspa', 'CASPA.webm'),
(46, 'causa', 'causa', 'CAUSA.webm'),
(47, 'cementerio', 'cementerio', 'CEMENTERIO.webm'),
(48, 'centro', 'centro', 'CENTRO.webm'),
(49, 'cepillo', 'cepillo', 'CEPILLO.webm'),
(50, 'chef', 'chef', 'CHEF.webm'),
(51, 'chequera', 'chequera', 'CHEQUERA.webm'),
(52, 'chismosa', 'chismosa', 'CHISMOSA.webm'),
(53, 'chismoso', 'chismoso', 'CHISMOSO.webm'),
(54, 'chocolate', 'chocolate', 'CHOCOLATE.webm'),
(55, 'cilantro', 'cilantro', 'CILANTRO.webm'),
(56, 'colchon', 'colchon', 'COLCHON.webm'),
(57, 'comadre', 'comadre', 'COMADRE.webm'),
(58, 'comoestá', 'comoestá', 'COMOESTÁ.webm'),
(59, 'comparar', 'comparar', 'COMPARAR.webm'),
(60, 'compartir', 'compartir', 'COMPARTIR.webm'),
(61, 'comportamiento', 'comportamiento', 'COMPORTAMIENTO.webm'),
(62, 'compromiso', 'compromiso', 'COMPROMISO.webm'),
(63, 'comunidad', 'comunidad', 'COMUNIDAD.webm'),
(64, 'conmuchogusto', 'conmuchogusto', 'CONMUCHOGUSTO.webm'),
(65, 'consulado', 'consulado', 'CONSULADO.webm'),
(66, 'contenta', 'contenta', 'CONTENTA.webm'),
(67, 'contento', 'contento', 'CONTENTO.webm'),
(68, 'contra', 'contra', 'CONTRA.webm'),
(69, 'contraparte', 'contraparte', 'CONTRAPARTE.webm'),
(70, 'cooperar', 'cooperar', 'COOPERAR.webm'),
(71, 'copiar', 'copiar', 'COPIAR.webm'),
(72, 'corazon', 'corazon', 'CORAZON.webm'),
(73, 'cordillera', 'cordillera', 'CORDILLERA.webm'),
(74, 'corrección', 'corrección', 'CORRECCIÓN.webm'),
(75, 'corrector', 'corrector', 'CORRECTOR.webm'),
(76, 'corregir', 'corregir', 'CORREGIR.webm'),
(77, 'cosa', 'cosa', 'COSA.webm'),
(78, 'coser', 'coser', 'COSER.webm'),
(79, 'costurera', 'costurera', 'COSTURERA.webm'),
(80, 'costurero', 'costurero', 'COSTURERO.webm'),
(81, 'cruzarlaspiernas', 'cruzarlaspiernas', 'CRUZARLASPIERNAS.webm'),
(82, 'cuerpo', 'cuerpo', 'CUERPO.webm'),
(83, 'culantro', 'culantro', 'CULANTRO.webm'),
(84, 'culpa', 'culpa', 'CULPA.webm'),
(85, 'culpable', 'culpable', 'CULPABLE.webm'),
(86, 'cumplida', 'cumplida', 'CUMPLIDA.webm'),
(87, 'cumplido', 'cumplido', 'CUMPLIDO.webm'),
(88, 'cumplir', 'cumplir', 'CUMPLIR.webm'),
(89, 'debajo', 'debajo', 'DEBAJO.webm'),
(90, 'dedicacion', 'dedicacion', 'DEDICACION.webm'),
(91, 'defrente', 'defrente', 'DEFRENTE.webm'),
(92, 'dejar', 'dejar', 'DEJAR.webm'),
(93, 'delgada', 'delgada', 'DELGADA.webm'),
(94, 'delgado', 'delgado', 'DELGADO.webm'),
(95, 'delito', 'delito', 'DELITO.webm'),
(96, 'despacio', 'despacio', 'DESPACIO.webm'),
(97, 'despedir', 'despedir', 'DESPEDIR.webm'),
(98, 'desvio', 'desvio', 'DESVIO.webm'),
(99, 'diapositiva', 'diapositiva', 'DIAPOSITIVA.webm'),
(100, 'disculpa', 'disculpa', 'DISCULPA.webm'),
(101, 'disfrutar', 'disfrutar', 'DISFRUTAR.webm'),
(102, 'dividirseelgasto', 'dividirseelgasto', 'DIVIDIRSEELGASTO.webm'),
(103, 'division', 'division', 'DIVISION.webm'),
(104, 'doblar', 'doblar', 'DOBLAR.webm'),
(105, 'docente', 'docente', 'DOCENTE.webm'),
(106, 'ecuavoley', 'ecuavoley', 'ECUAVOLEY.webm'),
(107, 'embrague', 'embrague', 'EMBRAGUE.webm'),
(108, 'emocion', 'emocion', 'EMOCION.webm'),
(109, 'empleadadomestica', 'empleadadomestica', 'EMPLEADADOMESTICA.webm'),
(110, 'empujar', 'empujar', 'EMPUJAR.webm'),
(111, 'encaminarse', 'encaminarse', 'ENCAMINARSE.webm'),
(112, 'encebollado', 'encebollado', 'ENCEBOLLADO.webm'),
(113, 'encima', 'encima', 'ENCIMA.webm'),
(114, 'enfermo', 'enfermo', 'ENFERMO.webm'),
(115, 'enfocar', 'enfocar', 'ENFOCAR.webm'),
(116, 'enfocarse', 'enfocarse', 'ENFOCARSE.webm'),
(117, 'enfoque', 'enfoque', 'ENFOQUE.webm'),
(118, 'enfrentar', 'enfrentar', 'ENFRENTAR.webm'),
(119, 'enfrente', 'enfrente', 'ENFRENTE.webm'),
(120, 'ensalada', 'ensalada', 'ENSALADA.webm'),
(121, 'entrar', 'entrar', 'ENTRAR.webm'),
(122, 'entregar', 'entregar', 'ENTREGAR.webm'),
(123, 'entusiasmarse', 'entusiasmarse', 'ENTUSIASMARSE.webm'),
(124, 'epoca', 'epoca', 'EPOCA.webm'),
(125, 'escalera', 'escalera', 'ESCALERA.webm'),
(126, 'escolar', 'escolar', 'ESCOLAR.webm'),
(127, 'espalda', 'espalda', 'ESPALDA.webm'),
(128, 'especialidad', 'especialidad', 'ESPECIALIDAD.webm'),
(129, 'especialista', 'especialista', 'ESPECIALISTA.webm'),
(130, 'especializarce', 'especializarce', 'ESPECIALIZARCE.webm'),
(131, 'espejo', 'espejo', 'ESPEJO.webm'),
(132, 'estafa', 'estafa', 'ESTAFA.webm'),
(133, 'estafador', 'estafador', 'ESTAFADOR.webm'),
(134, 'estafadora', 'estafadora', 'ESTAFADORA.webm'),
(135, 'estafar', 'estafar', 'ESTAFAR.webm'),
(136, 'estarhastalacoronilla', 'estarhastalacoronilla', 'ESTARHASTALACORONILLA.webm'),
(137, 'estrecho', 'estrecho', 'ESTRECHO.webm'),
(138, 'estupefacta', 'estupefacta', 'ESTUPEFACTA.webm'),
(139, 'etapa', 'etapa', 'ETAPA.webm'),
(140, 'eterna', 'eterna', 'ETERNA.webm'),
(141, 'eterno', 'eterno', 'ETERNO.webm'),
(142, 'excepcionalmente', 'excepcionalmente', 'EXCEPCIONALMENTE.webm'),
(143, 'exprimidor', 'exprimidor', 'EXPRIMIDOR.webm'),
(144, 'fábrica', 'fábrica', 'FÁBRICA.webm'),
(145, 'fabricar', 'fabricar', 'FABRICAR.webm'),
(146, 'facil', 'facil', 'FACIL.webm'),
(147, 'factura', 'factura', 'FACTURA.webm'),
(148, 'falda', 'falda', 'FALDA.webm'),
(149, 'fanesca', 'fanesca', 'FANESCA.webm'),
(150, 'feliz', 'feliz', 'FELIZ.webm'),
(151, 'fin', 'fin', 'FIN.webm'),
(152, 'florero', 'florero', 'FLORERO.webm'),
(153, 'foca', 'foca', 'FOCA.webm'),
(154, 'fotocopiar', 'fotocopiar', 'FOTOCOPIAR.webm'),
(155, 'fracasar', 'fracasar', 'FRACASAR.webm'),
(156, 'fracaso', 'fracaso', 'FRACASO.webm'),
(157, 'freir', 'freir', 'FREIR.webm'),
(158, 'frente', 'frente', 'FRENTE.webm'),
(159, 'fritura', 'fritura', 'FRITURA.webm'),
(160, 'frontal', 'frontal', 'FRONTAL.webm'),
(161, 'fuera', 'fuera', 'FUERA.webm'),
(162, 'fumador', 'fumador', 'FUMADOR.webm'),
(163, 'fumadora', 'fumadora', 'FUMADORA.webm'),
(164, 'fusible', 'fusible', 'FUSIBLE.webm'),
(165, 'futuro', 'futuro', 'FUTURO.webm'),
(166, 'gastronomia', 'gastronomia', 'GASTRONOMIA.webm'),
(167, 'gatear', 'gatear', 'GATEAR.webm'),
(168, 'generosa', 'generosa', 'GENEROSA.webm'),
(169, 'generoso', 'generoso', 'GENEROSO.webm'),
(170, 'golpe', 'golpe', 'GOLPE.webm'),
(171, 'golpear', 'golpear', 'GOLPEAR.webm'),
(172, 'gracias', 'gracias', 'GRACIAS.webm'),
(173, 'grasa', 'grasa', 'GRASA.webm'),
(174, 'gratis', 'gratis', 'GRATIS.webm'),
(175, 'gritodeguerra', 'gritodeguerra', 'GRITODEGUERRA.webm'),
(176, 'grosero', 'grosero', 'GROSERO.webm'),
(177, 'guardarselainformación', 'guardarselainformación', 'GUARDARSELAINFORMACIÓN.webm'),
(178, 'guarderia', 'guarderia', 'GUARDERIA.webm'),
(179, 'guata', 'guata', 'GUATA.webm'),
(180, 'guitarra', 'guitarra', 'GUITARRA.webm'),
(181, 'heladodemáquina', 'heladodemáquina', 'HELADODEMÁQUINA.webm'),
(182, 'hipoacúsico', 'hipoacúsico', 'HIPOACÚSICO.webm'),
(183, 'humildad', 'humildad', 'HUMILDAD.webm'),
(184, 'humilde', 'humilde', 'HUMILDE.webm'),
(185, 'imitar', 'imitar', 'IMITAR.webm'),
(186, 'íntima', 'íntima', 'ÍNTIMA.webm'),
(187, 'íntimo', 'íntimo', 'ÍNTIMO.webm'),
(188, 'lactar', 'lactar', 'LACTAR.webm'),
(189, 'ladrillo', 'ladrillo', 'LADRILLO.webm'),
(190, 'lagartija', 'lagartija', 'LAGARTIJA.webm'),
(191, 'lanzada', 'lanzada', 'LANZADA.webm'),
(192, 'lanzado', 'lanzado', 'LANZADO.webm'),
(193, 'lavadora', 'lavadora', 'LAVADORA.webm'),
(194, 'levantar', 'levantar', 'LEVANTAR.webm'),
(195, 'levantarse', 'levantarse', 'LEVANTARSE.webm'),
(196, 'libro', 'libro', 'LIBRO.webm'),
(197, 'llamar', 'llamar', 'LLAMAR.webm'),
(198, 'llamarse', 'llamarse', 'LLAMARSE.webm'),
(199, 'llanura', 'llanura', 'LLANURA.webm'),
(200, 'llevar1', 'llevar1', 'LLEVAR1.webm'),
(201, 'loba', 'loba', 'LOBA.webm'),
(202, 'mamífero', 'mamífero', 'MAMÍFERO.webm'),
(203, 'menopausia', 'menopausia', 'MENOPAUSIA.webm'),
(204, 'mula', 'mula', 'MULA.webm'),
(205, 'nunca', 'nunca', 'NUNCA.webm'),
(206, 'oregano', 'oregano', 'OREGANO.webm'),
(207, 'palma', 'palma', 'PALMA.webm'),
(208, 'panela', 'panela', 'PANELA.webm'),
(209, 'pantufla', 'pantufla', 'PANTUFLA.webm'),
(210, 'pañal', 'pañal', 'PAÑAL.webm'),
(211, 'pañuelo', 'pañuelo', 'PAÑUELO.webm'),
(212, 'papa', 'papa', 'PAPA.webm'),
(213, 'parar', 'parar', 'PARAR.webm'),
(214, 'peces', 'peces', 'PECES.webm'),
(215, 'pedir', 'pedir', 'PEDIR.webm'),
(216, 'pegar', 'pegar', 'PEGAR.webm'),
(217, 'pelear', 'pelear', 'PELEAR.webm'),
(218, 'pena', 'pena', 'PENA.webm'),
(219, 'pendeja', 'pendeja', 'PENDEJA.webm'),
(220, 'perforadora', 'perforadora', 'PERFORADORA.webm'),
(221, 'periodista', 'periodista', 'PERIODISTA.webm'),
(222, 'pesame', 'pesame', 'PESAME.webm'),
(223, 'pesas', 'pesas', 'PESAS.webm'),
(224, 'pescado', 'pescado', 'PESCADO.webm'),
(225, 'piñata', 'piñata', 'PIÑATA.webm'),
(226, 'piston', 'piston', 'PISTON.webm'),
(227, 'propuesta', 'propuesta', 'PROPUESTA.webm'),
(228, 'psicologia', 'psicologia', 'PSICOLOGIA.webm'),
(229, 'quedice', 'quedice', 'QUEDICE.webm'),
(230, 'quemecuentas', 'quemecuentas', 'QUEMECUENTAS.webm'),
(231, 'quieto', 'quieto', 'QUIETO.webm'),
(232, 'quiza', 'quiza', 'QUIZA.webm'),
(233, 'remolque', 'remolque', 'REMOLQUE.webm'),
(234, 'respirar', 'respirar', 'RESPIRAR.webm'),
(235, 'sala', 'sala', 'SALA.webm'),
(236, 'salami', 'salami', 'SALAMI.webm'),
(237, 'saldeaqui', 'saldeaqui', 'SALDEAQUI.webm'),
(238, 'saludar', 'saludar', 'SALUDAR.webm'),
(239, 'saludo', 'saludo', 'SALUDO.webm'),
(240, 'seguridadaeroportuaria', 'seguridadaeroportuaria', 'SEGURIDADAEROPORTUARIA.webm'),
(241, 'servicio', 'servicio', 'SERVICIO.webm'),
(242, 'servilleta', 'servilleta', 'SERVILLETA.webm'),
(243, 'servir', 'servir', 'SERVIR.webm'),
(244, 'siesta', 'siesta', 'SIESTA.webm'),
(245, 'sindinero', 'sindinero', 'Sindinero.webm'),
(246, 'sobrina', 'sobrina', 'SOBRINA.webm'),
(247, 'sobrino', 'sobrino', 'SOBRINO.webm'),
(248, 'su', 'su', 'SU.webm'),
(249, 'subir', 'subir', 'SUBIR.webm'),
(250, 'suyo', 'suyo', 'SUYO.webm'),
(251, 'tacaña', 'tacaña', 'TACAÑA.webm'),
(252, 'tacaño', 'tacaño', 'TACAÑO.webm'),
(253, 'talvez', 'talvez', 'TALVEZ.webm'),
(254, 'tapar', 'tapar', 'TAPAR.webm'),
(255, 'taxi', 'taxi', 'TAXI.webm'),
(256, 'television', 'television', 'TELEVISION.webm'),
(257, 'temeraria', 'temeraria', 'TEMERARIA.webm'),
(258, 'temporal', 'temporal', 'TEMPORAL.webm'),
(259, 'terminar', 'terminar', 'TERMINAR.webm'),
(260, 'tienda', 'tienda', 'TIENDA.webm'),
(261, 'tocino', 'tocino', 'TOCINO.webm'),
(262, 'todo', 'todo', 'TODO.webm'),
(263, 'todoeldía', 'todoeldía', 'TODOELDÍA.webm'),
(264, 'tomar', 'tomar', 'TOMAR.webm'),
(265, 'torear', 'torear', 'TOREAR.webm'),
(266, 'torera', 'torera', 'TORERA.webm'),
(267, 'torero', 'torero', 'TORERO.webm'),
(268, 'torturar', 'torturar', 'TORTURAR.webm'),
(269, 'universidad', 'universidad', 'UNIVERSIDAD.webm'),
(270, 'usada', 'usada', 'USADA.webm'),
(271, 'usado', 'usado', 'USADO.webm'),
(272, 'usar', 'usar', 'USAR.webm'),
(273, 'utilizar', 'utilizar', 'UTILIZAR.webm'),
(274, 'vivienda', 'vivienda', 'VIVIENDA.webm'),
(275, 'yanomas', 'yanomas', 'YANOMAS.webm'),
(276, 'testeo', 'testeo', 'TESTEO.webm'),
(277, 'testeo1', 'testeo1', 'TESTEO1.webm'),
(278, 'testeo4', 'testeo4', 'TESTEO4.webm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'jcajasp2@est.ups.edu.ec', 'tesis.root1'),
(2, 'admin', 'jcajasp2@est.ups.edu.ec', 'tesis.root1'),
(3, 'admin', 'admin1', 'admin1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracter`
--
ALTER TABLE `caracter`
  ADD PRIMARY KEY (`id_caracter`);

--
-- Indices de la tabla `palabra`
--
ALTER TABLE `palabra`
  ADD PRIMARY KEY (`id_palabra`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracter`
--
ALTER TABLE `caracter`
  MODIFY `id_caracter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `palabra`
--
ALTER TABLE `palabra`
  MODIFY `id_palabra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
