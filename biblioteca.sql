-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2022 a las 20:03:24
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` bigint(5) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `code` varchar(70) COLLATE utf8_bin NOT NULL,
  `state` int(5) NOT NULL,
  `mail` varchar(200) COLLATE utf8_bin NOT NULL,
  `password` varchar(40) COLLATE utf8_bin NOT NULL,
  `type` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `name`, `lastname`, `code`, `state`, `mail`, `password`, `type`) VALUES
(1, '', '', '', 0, 'admin@gmail.com', '1234', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(5) NOT NULL,
  `name_career` varchar(100) COLLATE utf8_bin NOT NULL,
  `image` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `name_career`, `image`) VALUES
(1, 'Ing. Agroindustrial', 'assets/img/carreras/ing_transporte/ing_transporte.webp'),
(2, 'Ing. Sistemas', 'assets/img/carreras/ing_sistemas/ing_sistemas.webp'),
(3, 'Ing. Transporte', 'assets/img/carreras/ing_transporte/ing_transporte.webp'),
(4, 'Ing. Industrial', 'assets/img/carreras/ing_industrial/ing_industrial.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` bigint(5) NOT NULL,
  `name_specialty` varchar(60) COLLATE utf8_bin NOT NULL,
  `image` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_carrera` bigint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `name_specialty`, `image`, `id_carrera`) VALUES
(1, 'Bionegocios y manejo forestal', 'assets/img/carreras/ing_agroindustrial/bionegocios/bionegocios.webp', 1),
(2, 'Gestión de recursos hidrobiológicos', 'assets/img/carreras/ing_agroindustrial/gestion/gestion.webp', 1),
(3, 'Tópicos de modelos de gestión de la calidad', 'assets/img/carreras/ing_agroindustrial/topicos/topicos.webp', 1),
(4, 'Negocios agroindustriales', 'assets/img/carreras/ing_agroindustrial/negocios/negocios.webp', 1),
(5, 'Ingeniería de la calidad', 'assets/img/carreras/ing_industrial/ingenieria/ingenieria.webp', 4),
(6, 'Automatización de la manufactura', 'assets/img/carreras/ing_industrial/automatizacion/automatizacion.webp', 4),
(7, 'Producto y estrategia de producción', 'assets/img/carreras/ing_industrial/producto/producto.webp', 4),
(8, 'Mercado de capitales', 'assets/img/carreras/ing_industrial/mercado/mercado.webp', 4),
(9, 'Desarrollo de software', 'assets/img/carreras/ing_sistemas/desarrollo_software/desarrollo.webp', 2),
(10, 'Seguridad informática', 'assets/img/carreras/ing_sistemas/seguridad_informatica/seguridad.webp', 2),
(11, 'Gestor de sistemas de la información', 'assets/img/carreras/ing_sistemas/gestor_sistemas/gestor.webp', 2),
(12, 'Administrador de tecnologías de la información', 'assets/img/carreras/ing_sistemas/admin_tecnologias/admin.webp', 2),
(13, 'Tecnologías de transportes', 'assets/img/carreras/ing_transporte/tecnologias/tecnologias.webp', 3),
(14, 'Gestión de la calidad', 'assets/img/carreras/ing_transporte/gestion/gestion.webp', 3),
(15, 'Ingeniería de mantenimiento', 'assets/img/carreras/ing_transporte/ingenieria/ingenieria.webp', 3),
(16, 'Simulación de sistemas', 'assets/img/carreras/ing_transporte/simulacion/simulacion.webp', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` bigint(5) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_type_book` bigint(5) NOT NULL,
  `author` varchar(100) COLLATE utf8_bin NOT NULL,
  `source` varchar(50) COLLATE utf8_bin NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL,
  `image_book` varchar(200) COLLATE utf8_bin NOT NULL,
  `pdf` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_especialidad` bigint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `name`, `id_type_book`, `author`, `source`, `code`, `image_book`, `pdf`, `id_especialidad`) VALUES
(5, 'Indicadores para mejorar la gestión del riego en la empresa agroindustrial Ceballos', 2, 'Rafael Miguel Pacheco Moya', 'SCIELO', 'a_bio_art_1', 'assets/img/carreras/ing_agroindustrial/bionegocios/articulos/art_1.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/bionegocios/art_1.pdf', 1),
(6, 'Propuesta de Árbol Temático y Tecnológico sobre la Ingeniería Agroindustrial como Herramienta para u', 2, 'Jhon W. Zartha', 'SCIELO', 'a_bio_art_2', 'assets/img/carreras/ing_agroindustrial/bionegocios/articulos/art_2.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/bionegocios/art_2.pdf', 1),
(7, 'Optimización del plan operativo de producción en plantas de cárnicos', 2, 'Ms.C. Wuilper Zaldumbide Olalla', 'SCIELO', 'a_bio_art_3', 'assets/img/carreras/ing_agroindustrial/bionegocios/articulos/art_3.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/bionegocios/art_3.pdf', 1),
(8, 'Nueva oferta educativa como respuesta al desarrollo del país: Ingeniería Agroindustrial', 2, 'Tomás de Jesús Guzmán-Hernández', 'SCIELO', 'a_bio_art_4', 'assets/img/carreras/ing_agroindustrial/bionegocios/articulos/art_4.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/bionegocios/art_4.pdf', 1),
(9, 'Síntesis de acetato de n-butilo mediante un sistema de destilación reactiva a partir de un desecho a', 2, 'Vanessa Altomare', 'SCIELO', 'a_ges_art_1', 'assets/img/carreras/ing_agroindustrial/gestion/articulos/art_1.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/gestion/art_1.pdf', 2),
(10, 'Adaptación del programa de Lengua Española de la Universidad Pedagógica (UPEL) al curso de lenguaje y comunicación de la Universidad Lisandro Alvarado (UCLA)', 2, 'Oscar Albahaca', 'SCIELO', 'a_ges_art_2', 'assets/img/carreras/ing_agroindustrial/gestion/articulos/art_2.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/gestion/art_2.pdf', 2),
(11, 'Modelación matemática de la flotación de la maza superior de los molinos de caña de azúcar', 2, 'Mario Javier Cabello-Ulloa', 'SCIELO', 'a_ges_art_3', 'assets/img/carreras/ing_agroindustrial/gestion/articulos/art_3.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/gestion/art_3.pdf', 2),
(12, 'Rendimiento térmico de calderas bagaceras modernas en Tucumán, R. Argentina', 2, 'Federico J. Franck Colombres', 'SCIELO', 'a_ges_art_4', 'assets/img/carreras/ing_agroindustrial/gestion/articulos/art_4.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/gestion/art_4.pdf', 2),
(13, 'Supervivencia de bacterias fecales en lodos residuales deshidratados tratados con amoniaco', 2, 'J.M. Méndez', 'SCIELO', 'a_neg_art_1', 'assets/img/carreras/ing_agroindustrial/negocios/articulos/art_1.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/negocios/art_1.pdf', 4),
(14, 'Evaluación de la bioaccesibilidad de cadmio en formulaciones de chocolatería por digestión', 2, 'CRISTIAN-JAHIR, MURILLO-MÉNDEZ', 'SCIELO', 'a_neg_art_2', 'assets/img/carreras/ing_agroindustrial/negocios/articulos/art_2.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/negocios/art_2.pdf', 4),
(15, 'Identificación molecular de hongos filamentosos y su potencial biotecnológico', 2, 'LILIANA-YANET, SUÁREZ-CONTRERAS', 'SCIELO', 'a_neg_art_3', 'assets/img/carreras/ing_agroindustrial/negocios/articulos/art_3.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/negocios/art_3.pdf', 4),
(16, 'Propóleos de Nariño: Propiedades fisicoquímicas y actividad biológica', 2, 'GUILLERMO, SALAMANCA-GROSSO', 'SCIELO', 'a_neg_art_4', 'assets/img/carreras/ing_agroindustrial/negocios/articulos/art_4.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/negocios/art_4.pdf', 4),
(17, 'Obtención de nanoemulsiones de Cúrcuma longa l. y su aplicación en bebida acuosa', 2, 'VANESSA, CHICA-BARCO', 'SCIELO', 'a_top_art_1', 'assets/img/carreras/ing_agroindustrial/topicos/articulos/art_1.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/topicos/art_1.pdf', 3),
(18, 'Influencia de las enzimas coagulantes de la leche sobre la composición lipídica y propiedades organolépticas de quesos semi-madurados', 2, 'KAREN-GINETH, USGAME-FAGUA', 'SCIELO', 'a_top_art_2', 'assets/img/carreras/ing_agroindustrial/topicos/articulos/art_2.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/topicos/art_2.pdf', 3),
(19, 'Lipasa de semillas de Pachira speciosa inmovilizadas en esferas de quitosano: un sistema bio-catalítico reusable', 2, 'IVON-ESHER; VALENZUELA-JARAMILLO', 'SCIELO', 'a_top_art_3', 'assets/img/carreras/ing_agroindustrial/topicos/articulos/art_3.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/topicos/art_3.pdf', 3),
(20, 'Biotecnología en el Sector Agropecuario y Agroindustrial', 2, 'LINA-VANESSA; GONZÁLEZ-HOYOS', 'SCIELO', 'a_top_art_4', 'assets/img/carreras/ing_agroindustrial/topicos/articulos/art_4.webp', 'media/carreras/ing_agroindustrial/especialidades/articulos/topicos/art_4.pdf', 3),
(21, 'Introducción a la Ingeniería Agroindustrial', 1, 'Ingjulian', 'Ingjulian', 'a_bio_lib_1', 'assets/img/carreras/ing_agroindustrial/bionegocios/libros/libro_1.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/bionegocios/libro_1.pdf', 1),
(22, 'Agoindustria', 1, 'David Zarco Palacios', 'Universidad de Alicante', 'a_bio_lib_2', 'assets/img/carreras/ing_agroindustrial/bionegocios/libros/libro_2.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/bionegocios/libro_2.pdf', 1),
(23, 'Agroindustrias para el desarrollo', 1, 'Carlos Da Silva, Sergio Miranda y Doyle Baker', 'FAO', 'a_bio_lib_3', 'assets/img/carreras/ing_agroindustrial/bionegocios/libros/libro_3.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/bionegocios/libro_3.pdf', 1),
(24, 'Propuesta de Árbol Temático y Tecnológico sobre la Ingeniería Agroindustrial como Herramienta para un Estudio de Prospectiva', 1, 'Jhon W. Zartha, Verónica T. Álvarez, Juan C. Oviedo y Gina L. Orozco', 'Scientific Electronic Library Online', 'a_ges_lib_1', 'assets/img/carreras/ing_agroindustrial/gestion/libros/libro_1.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/gestion/libro_1.pdf', 2),
(25, 'Tecnologías de producción y agroindustria para el desarrollo', 1, 'UPCommons', 'UPCommons', 'a_ges_lib_2', 'assets/img/carreras/ing_agroindustrial/gestion/libros/libro_2.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/gestion/libro_2.pdf', 2),
(26, 'Agroindustria y concentración de la propiedad de la tierra', 1, 'Tomás Quevedo', 'Biblioteca CLACSO', 'a_ges_lib_3', 'assets/img/carreras/ing_agroindustrial/gestion/libros/libro_3.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/gestion/libro_3.pdf', 2),
(27, 'La agroindustria y viabilidad del sector agropecuario', 1, 'Elkin Alonso Cortés Marín', 'Redalyc', 'a_neg_lib_1', 'assets/img/carreras/ing_agroindustrial/negocios/libros/libro_1.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/negocios/libro_1.pdf', 4),
(28, 'Atlas de la Agroindustria', 1, 'Fundación Heinrich Böll', 'Fundación Heinrich Böll', 'a_neg_lib_2', 'assets/img/carreras/ing_agroindustrial/negocios/libros/libro_2.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/negocios/libro_2.pdf', 4),
(29, 'Gestión de Agronegocios en Empresas Asociativas Rurales', 1, 'IICA', 'IICA', 'a_neg_lib_3', 'assets/img/carreras/ing_agroindustrial/negocios/libros/libro_3.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/negocios/libro_3.pdf', 4),
(30, 'Práctica de Introdución a la Agroindustria', 1, 'Denis Edgardo Pérez', 'Ing. Jansy Villalta. Agroindustria, CURC', 'a_top_lib_1', 'assets/img/carreras/ing_agroindustrial/topicos/libros/libro_1.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/topicos/libro_1.pdf', 3),
(31, 'Agroindustria rural. Recursos técnicos y alimentación', 1, 'François Boucher y José Muchnik', 'IICA', 'a_top_lib_2', 'assets/img/carreras/ing_agroindustrial/topicos/libros/libro_2.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/topicos/libro_2.pdf', 3),
(32, 'Agroindustria y desarrollo en un territorio de posguerra en Colombia', 1, 'Felipe Echeverry', 'El Colegio de la Frontera del Norte', 'a_top_lib_3', 'assets/img/carreras/ing_agroindustrial/topicos/libros/libro_3.webp', 'media/carreras/ing_agroindustrial/especialidades/libros/topicos/libro_3.pdf', 3),
(33, 'Clusters Agroindustriales en Argentina: Influencia del Institucionalismo y del Capital Social', 3, 'Lorena Tedesco, Gabriela Cristiano', 'Redalyc', 'a_bio_rev_1', 'assets/img/carreras/ing_agroindustrial/bionegocios/revistas/rev_1.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/bionegocios/rev_1.pdf', 1),
(34, 'Potencial de residuos agroindustriales para la síntesis de Carbón Activado: una revisión', 3, 'M.V Vidal', 'Redalyc', 'a_bio_rev_2', 'assets/img/carreras/ing_agroindustrial/bionegocios/revistas/rev_2.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/bionegocios/rev_2.pdf', 1),
(35, 'Estrategias de comunicación institucional en organizaciones agroindustriales: caso UNICA', 3, 'Bryan Manuel Julca Briceño, Marcos Fava Neves', 'Redalyc', 'a_bio_rev_3', 'assets/img/carreras/ing_agroindustrial/bionegocios/revistas/rev_3.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/bionegocios/rev_3.pdf', 1),
(36, 'DESEMPEÑO COMPETITIVO DEL SECTOR AGROINDUSTRIAL EN EL ESTADO DE MICHOACÁN', 3, 'Odette V. Delfín Ortega, Joel Bonales Valencia', 'Redalyc', 'a_bio_rev_4', 'assets/img/carreras/ing_agroindustrial/bionegocios/revistas/rev_4.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/bionegocios/rev_4.pdf', 1),
(37, 'Residuos agroindustriales con potencial para la producción de metano mediante la digestión anaerobia', 3, 'María E. González-Sánchez, Sergio Pérez-Fabiel, Arnoldo Wong-Villarreal, Ricardo Bello-Mendoza, Gust', 'Redalyc', 'a_ges_rev_1', 'assets/img/carreras/ing_agroindustrial/gestion/revistas/rev_1.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/gestion/rev_1.pdf', 2),
(38, 'DESDE LA VOZ DE LAS MUJERES. INVISIBILIZACIÓN, APRENDIZAJE Y OFICIO DE LAS OBRERAS AGROINDUSTRIALES', 3, 'Maria Elena Mingo Acuña Anzorena', 'Redalyc', 'a_ges_rev_2', 'assets/img/carreras/ing_agroindustrial/gestion/revistas/rev_2.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/gestion/rev_2.pdf', 2),
(39, 'Contabilidad de gestión ambiental en empresas del sector agroindustrial', 3, 'Romer Alvarez', 'Redalyc', 'a_ges_rev_3', 'assets/img/carreras/ing_agroindustrial/gestion/revistas/rev_3.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/gestion/rev_3.pdf', 2),
(40, 'Evaluación del crecimiento y producción de Pleurotus ostreatus sobre diferentes residuos agroindustriales del departamento de Cundinamarca', 3, 'Claudia López-Rodríguez, Ricardo Hernández-Corredor, Christian Suárez-Franco, Marta Borrero', 'Redalyc', 'a_ges_rev_4', 'assets/img/carreras/ing_agroindustrial/gestion/revistas/rev_4.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/gestion/rev_4.pdf', 2),
(41, 'Evaluación de la producción del hongo Lentinula edodes Pegler en bloques sintéticos a base de residuos agroindustriales', 3, 'Valeska Villegas Escobar, Ana Milena Pérez, Clara Arredondo', 'Redalyc', 'a_neg_rev_1', 'assets/img/carreras/ing_agroindustrial/negocios/revistas/rev_1.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/negocios/rev_1.pdf', 4),
(42, 'Expansión E Internacionalización De Las Pymes Agroindustriales Colombianas', 3, 'David Guillermo Puyana Silva', 'Redalyc', 'a_neg_rev_2', 'assets/img/carreras/ing_agroindustrial/negocios/revistas/rev_2.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/negocios/rev_2.pdf', 4),
(43, 'Revalorización de descartes agroindustriales para la obtención de bioetanol', 3, 'Nora Aimaretti, Carolina Ybalo, Mercedes Escorcia, Agustín Codevilla', 'Redalyc', 'a_neg_rev_3', 'assets/img/carreras/ing_agroindustrial/negocios/revistas/rev_3.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/negocios/rev_3.pdf', 4),
(44, 'PERSPECTIVAS DE USO DE SUBPRODUCTOS AGROINDUSTRIALES PARA LA PRODUCCCIÓN DE BIOETANOL', 3, 'ANDREA MILENA SÁNCHEZ RIAÑO, CARLOS ANTONIO RIVERA BARRERO, ELIZABETH MURILLO PEREA', 'Redalyc', 'a_neg_rev_4', 'assets/img/carreras/ing_agroindustrial/negocios/revistas/rev_4.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/negocios/rev_4.pdf', 4),
(45, 'Aprovechamiento de residuos agroindustriales: Producción de biodiesel por transesterificación alcalina de aceite crudo de \"almendras\" de zapote mamey (Pouteria sapota)', 3, 'J. C. Laiz-Saldaña, R. Tovar-Miranda, M. C. Durán-de-Bazúa, J. A. Solís-Fuentes', 'Redalyc', 'a_top_rev_1', 'assets/img/carreras/ing_agroindustrial/topicos/revistas/rev_1.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/topicos/rev_1.pdf', 3),
(46, 'AGROINDUSTRIAL WASTE CELLULOSE USING FERMENTED BROTH OF WHITE ROT FUNGI', 3, 'M. Ramírez-Carmona, O. Muñóz-Blandón', 'Redalyc', 'a_top_rev_2', 'assets/img/carreras/ing_agroindustrial/topicos/revistas/rev_2.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/topicos/rev_2.pdf', 3),
(47, 'Empleo del residuo agroindustrial del plátano como sustituto parcial del feldespato en la formulación de pasta cerámica', 3, 'Jessica V Sánchez-Zúñiga', 'Redalyc', 'a_top_rev_3', 'assets/img/carreras/ing_agroindustrial/topicos/revistas/rev_3.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/topicos/rev_3.pdf', 3),
(48, 'El uso de residuales agroindustriales en la alimentación animal en Cuba: pasado, presente y futuro', 3, 'P. C. Martín', 'Redalyc', 'a_top_rev_4', 'assets/img/carreras/ing_agroindustrial/topicos/revistas/rev_4.webp', 'media/carreras/ing_agroindustrial/especialidades/revistas/topicos/rev_4.pdf', 3),
(49, 'Valorización de residuos orgánicos y su aprovechamiento en la fabricación de nuevos hormigones', 4, 'Juan Coloma Santamaría', 'Dialnet', 'agro-bioneg-tesis-1', 'assets/img/carreras/ing_agroindustrial/bionegocios/tesis/tesis1.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/bionegocios/tesis_agro_1.pdf', 1),
(50, 'Pretratamiento de extrusión reactiva para la producción de bioetanol a partir de paja de cebada', 4, 'Atleta Duque Garcia', 'Dialnet', 'agro-bioneg-tesis-2', 'assets/img/carreras/ing_agroindustrial/bionegocios/tesis/tesis2.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/bionegocios/tesis_agro_2.pdf', 1),
(51, 'Gestión de los sistemas ganaderos extensivos bovinos basados en pastos naturales de san luis (argentina) y su incidencia en la emisión de gases de efecto invernadero', 4, 'Maria Isabel Nieto', 'Dialnet', 'agro-bioneg-tesis-3', 'assets/img/carreras/ing_agroindustrial/bionegocios/tesis/tesis3.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/bionegocios/tesis_agro_3.pdf', 1),
(52, 'La industria agroalimentaria en la pintura. Aplicación a los grabados de Giovanni Stradanus', 4, 'Maria de las Nieves Montes Balado', 'Dialnet', 'agro-bioneg-tesis-4', 'assets/img/carreras/ing_agroindustrial/bionegocios/tesis/tesis4.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/bionegocios/tesis_agro_4.pdf', 1),
(53, 'Mineria Aurifera a cielo cubierto en Argentina', 4, 'Lezzi,Laura Estefania', 'SEDICI', 'agro-g-tesis-1', 'assets/img/carreras/ing_agroindustrial/gestion/tesis/tesis1.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/gestion/tesis_agro_1.pdf', 2),
(54, 'Diversificación y persistencia de pequeños productores apícolas: el caso del partido de Magdalena, periodo 1990-2013', 4, 'Suarez , Maria Victoria', 'SEDICI', 'agro-g-tesis-2', 'assets/img/carreras/ing_agroindustrial/gestion/tesis/tesis2.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/gestion/tesis_agro_2.pdf', 2),
(55, 'Diseño de experimentos y técnicas de fase creativa para reducir el tiempo de diseño de nuevos productos agroindustriales en zonas marginadas de México', 4, 'Carlos Alberto Gonzales', 'Dialnet', 'agro-g-tesis-3', 'assets/img/carreras/ing_agroindustrial/gestion/tesis/tesis3.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/gestion/tesis_agro3.pdf', 2),
(56, 'Apropiación del excedente agroalimentario generado en el territorio. El caso de Cargill en Argentina', 4, 'Roberto Javier Ortega', 'Dialnet', 'agro-g-tesis-4', 'assets/img/carreras/ing_agroindustrial/gestion/tesis/tesis4.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/gestion/tesis_agro_4.pdf', 2),
(57, 'Los determinantes del resultado exportador el caso del sector agroindustrial en Uruguay', 4, 'Roberto Orta', 'Dialnet', 'agro-negocios-t-1', 'assets/img/carreras/ing_agroindustrial/negocios/tesis/tesis1.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/negocios/tesis_agro_1.pdf', 4),
(58, 'Compostaje descentralizado de residuos orgánicos domiciliarios a pequeña escala estudio del proceso y del producto obtenido', 4, 'Francesco Storino', 'Dialnet', 'agro-negocios-t-2', 'assets/img/carreras/ing_agroindustrial/negocios/tesis/tesis2.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/negocios/tesis_agro_2.pdf', 4),
(59, 'Biodegradación anaerobia de clorofenoles en aguas residuales', 4, 'Daniel Puyol Santos', 'Dialnet', 'agro-negocios-t-3', 'assets/img/carreras/ing_agroindustrial/negocios/tesis/tesis3.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/negocios/tesis_agro_3.pdf', 4),
(60, 'Desarrollo de la tecnología BMP para ensayos de codigestión anaerobia de residuos agroalimentarios con fangos mixtos de edar', 4, 'Benito Mora Carlos', 'Dialnet', 'agro-negocios-t-4', 'assets/img/carreras/ing_agroindustrial/negocios/tesis/tesis4.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/negocios/tesis_agro_4.pdf', 4),
(61, 'Metodología para el conocimiento de un edificio agroindustrial integrando distintas disciplinas', 4, 'Jose Jaime Ruiz Ortiz , Francisco Paula Montes Tubío', 'SEDICI', 'agro-topico-tesis-1', 'assets/img/carreras/ing_agroindustrial/topicos/tesis/tesis1.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/topicos/tesis_agro_1.pdf', 3),
(62, 'Valorización de residuos orgánicos y su aprovechamiento en la fabricación de nuevos hormigones', 4, 'Juan Coloma Santa Maria', 'Dialnet', 'agro-topico-tesis-2', 'assets/img/carreras/ing_agroindustrial/topicos/tesis/tesis2.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/topicos/tesis_agro_2.pdf', 3),
(63, 'Estudio de parámetros de calidad en materiales de naturaleza orgánica con potencial uso en agricultura', 4, 'Carmen Torrecillas Martine', 'Dialnet', 'agro-topico-tesis-3', 'assets/img/carreras/ing_agroindustrial/topicos/tesis/tesis3.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/topicos/tesis_agro_3.pdf', 3),
(64, 'Estudio de los procesos de almacenaje, secado y peletización de desechos del procesado de la oliva para su reutilización como biocombustible de uso industrial y domiciliario', 4, 'Diogenes Hernández Espinoza', 'Dialnet', 'agro-topico-tesis-4', 'assets/img/carreras/ing_agroindustrial/topicos/tesis/tesis4.webp', 'media/carreras/ing_agroindustrial/especialidades/tesis/topicos/tesis_agro_4.pdf', 3),
(65, 'Principales Rutas en la Producción de Hidrógeno', 2, 'María H. Brijaldo', 'SCIELO', 'i_auto_art_1', 'assets/img/carreras/ing_industrial/automatizacion/articulos/art_1.webp', 'media/carreras/ing_industrial/especialidades/articulos/automatizacion/art_1.pdf', 6),
(66, 'Modelo de programación entera mixta en la planeación de actividades y personal en un capítulo académico estudiantil', 2, 'Jair Eduardo Rocha González', 'SCIELO', 'i_auto_art_2', 'assets/img/carreras/ing_industrial/automatizacion/articulos/art_2.webp', 'media/carreras/ing_industrial/especialidades/articulos/automatizacion/art_2.pdf', 6),
(67, 'Sistema de gestión logístico para procesos de servicios', 2, 'Leisy Alemán de la Torre', 'SCIELO', 'i_auto_art_3', 'assets/img/carreras/ing_industrial/automatizacion/articulos/art_3.webp', 'media/carreras/ing_industrial/especialidades/articulos/automatizacion/art_3.pdf', 6),
(68, 'Análisis geoestadístico como base para contribuir al manejo sostenible del agrosistema azucarero', 2, 'Yasmany García-López', 'SCIELO', 'i_auto_art_4', 'assets/img/carreras/ing_industrial/automatizacion/articulos/art_4.webp', 'media/carreras/ing_industrial/especialidades/articulos/automatizacion/art_4.pdf', 6),
(69, 'Empresas de Grado Significativo de Intensidad Tecnológica en Cuba', 2, 'Dariel de León-García', 'SCIELO', 'i_ing_art_1', 'assets/img/carreras/ing_industrial/ingenieria/articulos/art_1.webp', 'media/carreras/ing_industrial/especialidades/articulos/ingenieria/art_1.pdf', 5),
(70, 'La identificación del conocimiento como herramienta de gestión y mejora de procesos', 2, 'Daniel González-Díaz', 'SCIELO', 'i_ing_art_2', 'assets/img/carreras/ing_industrial/ingenieria/articulos/art_2.webp', 'media/carreras/ing_industrial/especialidades/articulos/ingenieria/art_2.pdf', 5),
(71, 'Enfoque jerárquico para la gestión de operaciones aeroportuarias', 2, 'Lisandra Pérez-Herrera', 'SCIELO', 'i_ing_art_3', 'assets/img/carreras/ing_industrial/ingenieria/articulos/art_3.webp', 'media/carreras/ing_industrial/especialidades/articulos/ingenieria/art_3.pdf', 5),
(72, 'Economía digital: análisis de la científica encontrada en Sciencedirect entre 2008-2018', 2, 'Arnoldo Higinio Santos-Assán', 'SCIELO', 'i_ing_art_4', 'assets/img/carreras/ing_industrial/ingenieria/articulos/art_4.webp', 'media/carreras/ing_industrial/especialidades/articulos/ingenieria/art_4.pdf', 5),
(73, 'De modelos de negocio a requisitos del software', 2, 'Anaisa Hernández-González', 'SCIELO', 'i_mer_art_1', 'assets/img/carreras/ing_industrial/mercado/articulos/art_1.webp', 'media/carreras/ing_industrial/especialidades/articulos/mercado/art_1.pdf', 8),
(74, 'Procedimiento de gestión del riesgo por incendios forestales con enfoque de resiliencia', 2, 'Virginia Hardy-Casado', 'SCIELO', 'i_mer_art_2', 'assets/img/carreras/ing_industrial/mercado/articulos/art_2.webp', 'media/carreras/ing_industrial/especialidades/articulos/mercado/art_2.pdf', 8),
(75, 'Método de lógica difusa para el diagnóstico de fallos incipientes en un transformador de 40MVA', 2, 'Juan Carlos Fernández Blanco', 'SCIELO', 'i_mer_art_3', 'assets/img/carreras/ing_industrial/mercado/articulos/art_3.webp', 'media/carreras/ing_industrial/especialidades/articulos/mercado/art_3.pdf', 8),
(76, 'Procedimiento para Índice Sintético de Gestión Ambiental: validación con minería de datos', 2, 'Liz Pérez-Martínez', 'SCIELO', 'i_mer_art_4', 'assets/img/carreras/ing_industrial/mercado/articulos/art_4.webp', 'media/carreras/ing_industrial/especialidades/articulos/mercado/art_4.pdf', 8),
(77, 'Modelo de gestión organizacional desde una perspectiva constructivista en el contexto cubano', 2, 'Marcos Alexis Serrano-Tamayo', 'SCIELO', 'i_pro_art_1', 'assets/img/carreras/ing_industrial/producto/articulos/art_1.webp', 'media/carreras/ing_industrial/especialidades/articulos/producto/art_1.pdf', 7),
(78, 'Factores asociados al uso de tecnologías de la información y la comunicación (TIC) en los procesos de aprendizaje de estudiantes de ingeniería', 2, 'Davinson Mosquera-González', 'SCIELO', 'i_pro_art_2', 'assets/img/carreras/ing_industrial/producto/articulos/art_2.webp', 'media/carreras/ing_industrial/especialidades/articulos/producto/art_2.pdf', 7),
(79, 'En busca de la autonomía tecnológica. La trayectoria de la Empresa Nuclear Argentina de Centrales Eléctricas S. A., 1980-1996', 2, 'Milagros Rocio Rodríguez', 'SCIELO', 'i_pro_art_3', 'assets/img/carreras/ing_industrial/producto/articulos/art_3.webp', 'media/carreras/ing_industrial/especialidades/articulos/producto/art_3.pdf', 7),
(80, 'Objetivos para el desarrollo del pensamiento estadístico en alumnos del primer curso de estadística de la carrera de ingeniería industrial', 2, 'Graciela Carnevali', 'SCIELO', 'i_pro_art_4', 'assets/img/carreras/ing_industrial/producto/articulos/art_4.webp', 'media/carreras/ing_industrial/especialidades/articulos/producto/art_4.pdf', 7),
(81, 'Conceptos, técnicas e implantación', 1, 'Juan Carlos Hernández Matías y Antonio Vizán Idoipe', 'EOI Escuela de Organización Industrial', 'i_auto_lib_1', 'assets/img/carreras/ing_industrial/automatizacion/libros/lib_1.webp', 'media/carreras/ing_industrial/especialidades/libros/automatizacion/lib_1.pdf', 6),
(82, 'Introducción al Control de Procesos para Ingenieros', 1, 'Jean-François Dulhoste', 'Universidad de los Andes', 'i_auto_lib_2', 'assets/img/carreras/ing_industrial/automatizacion/libros/lib_2.webp', 'media/carreras/ing_industrial/especialidades/libros/automatizacion/lib_2.pdf', 6),
(83, 'Introducción a la Ingeniería Industrial', 1, 'Jorge Raul Stincer', 'Fundación José Ortíz Avila', 'i_auto_lib_3', 'assets/img/carreras/ing_industrial/automatizacion/libros/lib_3.webp', 'media/carreras/ing_industrial/especialidades/libros/automatizacion/lib_3.pdf', 6),
(84, 'Ingeniero Industrial. Respondoendo a tus preguntas', 1, 'Universidad Nacional de Educación a Distancia', 'Universidad Nacional de Educación a Distancia', 'i_auto_lib_4', 'assets/img/carreras/ing_industrial/automatizacion/libros/lib_4.webp', 'media/carreras/ing_industrial/especialidades/libros/automatizacion/lib_4.pdf', 6),
(85, 'Procesos de manufactura en Ingeniería Industrial', 1, 'Omar Eraso Guerrero', 'Universidad Nacional Abierta y a Distancia', 'i_auto_lib_5', 'assets/img/carreras/ing_industrial/automatizacion/libros/lib_5.webp', 'media/carreras/ing_industrial/especialidades/libros/automatizacion/lib_5.pdf', 6),
(86, 'Manual de diseño industrial', 1, 'Gerardo Rodriguez', 'Universidad Autónoma Metropolitana', 'i_auto_lib_6', 'assets/img/carreras/ing_industrial/automatizacion/libros/lib_6.webp', 'media/carreras/ing_industrial/especialidades/libros/automatizacion/lib_6.pdf', 6),
(87, 'Historia y evolución de la Ingeniería Industrial', 1, 'Atlantic International University', 'Atlantic International University', 'i_ing_lib_1', 'assets/img/carreras/ing_industrial/ingenieria/libros/lib_1.webp', 'media/carreras/ing_industrial/especialidades/libros/ingenieria/lib_1.pdf', 5),
(88, 'El enfoque y rol del ingeniero industrial', 1, 'Adolfo Oswaldo Acevedo', 'Redalyc', 'i_ing_lib_2', 'assets/img/carreras/ing_industrial/ingenieria/libros/lib_2.webp', 'media/carreras/ing_industrial/especialidades/libros/ingenieria/lib_2.pdf', 5),
(89, 'Retos de la ingeniería industrial en el desarrollo de procesos', 1, 'Oscar Fernando Castellanos', 'Universidad de La Rioja', 'i_ing_lib_3', 'assets/img/carreras/ing_industrial/ingenieria/libros/lib_3.webp', 'media/carreras/ing_industrial/especialidades/libros/ingenieria/lib_3.pdf', 5),
(90, 'Conocimiento e innovación tecnológica en la ingeniería industrial', 1, 'Mario Aguilar', 'Ecorfan', 'i_ing_lib_4', 'assets/img/carreras/ing_industrial/ingenieria/libros/lib_4.webp', 'media/carreras/ing_industrial/especialidades/libros/ingenieria/lib_4.pdf', 5),
(91, 'Ramas de la Ingeniería', 1, 'Ana Cristina Deiana', 'Universidad Nacional de San Juan', 'i_ing_lib_5', 'assets/img/carreras/ing_industrial/ingenieria/libros/lib_5.webp', 'media/carreras/ing_industrial/especialidades/libros/ingenieria/lib_5.pdf', 5),
(92, 'Perfil del Ingeniero Industrial', 1, 'Marianela Portillo', 'Universidad Nacional Abierta y a Distancia', 'i_ing_lib_6', 'assets/img/carreras/ing_industrial/ingenieria/libros/lib_6.webp', 'media/carreras/ing_industrial/especialidades/libros/ingenieria/lib_6.pdf', 5),
(93, 'Manual Del Ingeniero Industrial Maynard', 1, 'William K. Hodson', 'Secretaría de México', 'i_mer_lib_1', 'assets/img/carreras/ing_industrial/mercado/libros/libro_1.webp', 'media/carreras/ing_industrial/especialidades/libros/mercado/libro_1.pdf', 8),
(94, 'Perfil del Ingeniero Industrial actual', 1, 'Universidad de Piura', 'Universidad de Piura', 'i_mer_lib_2', 'assets/img/carreras/ing_industrial/mercado/libros/libro_2.webp', 'media/carreras/ing_industrial/especialidades/libros/mercado/libro_2.pdf', 8),
(95, 'La ingeniería industrial como herramienta para la internacionalización', 1, 'Anael Espinal Varela', 'Laccei', 'i_mer_lib_3', 'assets/img/carreras/ing_industrial/mercado/libros/libro_3.webp', 'media/carreras/ing_industrial/especialidades/libros/mercado/libro_3.pdf', 8),
(96, 'El ingerniero industrial actuando en diversas disciplinas', 1, 'Noel Pineda', 'Laccei', 'i_mer_lib_4', 'assets/img/carreras/ing_industrial/mercado/libros/libro_4.webp', 'media/carreras/ing_industrial/especialidades/libros/mercado/libro_4.pdf', 8),
(97, 'Automatización industrial. Areas de aplicación para ingeniería', 1, 'Carlos Ruedas', 'Endurance International Group', 'i_mer_lib_5', 'assets/img/carreras/ing_industrial/mercado/libros/libro_5.webp', 'media/carreras/ing_industrial/especialidades/libros/mercado/libro_5.pdf', 8),
(98, 'Introducción a la Ingeniería Industrial', 1, 'Atlantic International University', 'Atlantic International University', 'i_mer_lib_6', 'assets/img/carreras/ing_industrial/mercado/libros/libro_6.webp', 'media/carreras/ing_industrial/especialidades/libros/mercado/libro_6.pdf', 8),
(99, 'Tendencias de la Ingeniería Industrial', 1, 'Pablo César Franco', 'Universidad de La Rioja', 'i_pro_lib_1', 'assets/img/carreras/ing_industrial/producto/libros/libro_1.webp', 'media/carreras/ing_industrial/especialidades/libros/producto/libro_1.pdf', 7),
(100, 'Introducción a la Ingeniería Industrial', 1, 'Gabriel Baca U.', 'CSUCA', 'i_pro_lib_2', 'assets/img/carreras/ing_industrial/producto/libros/libro_2.webp', 'media/carreras/ing_industrial/especialidades/libros/producto/libro_2.pdf', 7),
(101, 'Manual práctico de diseño de sistemas productivos', 1, 'Albert Suñé Torrents', 'Presidencia de Consejo de Ministros de Perú', 'i_pro_lib_3', 'assets/img/carreras/ing_industrial/producto/libros/libro_3.webp', 'media/carreras/ing_industrial/especialidades/libros/producto/libro_3.pdf', 7),
(102, 'Ingeniería de metodos', 1, 'Lorenzo Iparraguirre', 'Biblioteca Nacional de Maestros', 'i_pro_lib_4', 'assets/img/carreras/ing_industrial/producto/libros/libro_4.webp', 'media/carreras/ing_industrial/especialidades/libros/producto/libro_4.pdf', 7),
(103, 'Procesos de manufactura en Ingeniería Industrial', 1, 'Omar Eraso Guerrero', 'Universidad Nacional Abierta y a Distancia', 'i_pro_lib_5', 'assets/img/carreras/ing_industrial/producto/libros/libro_5.webp', 'media/carreras/ing_industrial/especialidades/libros/producto/libro_5.pdf', 7),
(104, 'Control de Procesos para Ingenieros', 1, 'Jean-François Dulhoste', 'Universidad de los Andes', 'i_pro_lib_6', 'assets/img/carreras/ing_industrial/producto/libros/libro_6.webp', 'media/carreras/ing_industrial/especialidades/libros/producto/libro_6.pdf', 7),
(105, 'VALORIZACIÓN DE RESIDUOS AGROINDUSTRIALES - FRUTAS - EN MEDELLÍN Y EL SUR DEL VALLE DEL ABURRÁ, COLOMBIA', 3, 'Sandra Milena Yepes, Lina Johana Montoya Naranjo, Fernando Orozco Sánchez', 'Redalyc', 'i_auto_rev_1', 'assets/img/carreras/ing_industrial/automatizacion/revistas/rev_1.webp', 'media/carreras/ing_industrial/especialidades/revistas/automatizacion/rev_1.pdf', 6),
(106, 'Utilización de subproductos agroindustriales para la bioadsorción de metales pesados', 3, 'Jonathan M. Sanchez-Silva', 'Redalyc', 'i_auto_rev_2', 'assets/img/carreras/ing_industrial/automatizacion/revistas/rev_2.webp', 'media/carreras/ing_industrial/especialidades/revistas/automatizacion/rev_2.pdf', 6),
(107, 'Estrategias de inversión y negocios en el contexto agroindustrial azucarero de Tucumán, Argentina (1850-1900). Un análisis de los casos de Wenceslao Posse y la familia Nougués en clave comparada', 3, 'Francisco Bolsi', 'Redalyc', 'i_auto_rev_3', 'assets/img/carreras/ing_industrial/automatizacion/revistas/rev_3.webp', 'media/carreras/ing_industrial/especialidades/revistas/automatizacion/rev_3.pdf', 6),
(108, 'Modelo para la adopción del comercio electrónico en el sector agroindustrial mexicano', 3, 'Daniel Eduardo Sepúlveda Robles', 'Redalyc', 'i_auto_rev_4', 'assets/img/carreras/ing_industrial/automatizacion/revistas/rev_4.webp', 'media/carreras/ing_industrial/especialidades/revistas/automatizacion/rev_4.pdf', 6),
(109, 'Incremento de la productividad en proceso de extrusión de perfiles de aluminio con billets de aleación experimental 6063', 3, 'Bladimiro Navas Olmedo ,Hérnan Alberto Navas Moscoso', 'Redalyc', 'i_ing_rev_1', 'assets/img/carreras/ing_industrial/ingenieria/revistas/rev_1.webp', 'media/carreras/ing_industrial/especialidades/revistas/ingenieria/rev_1.pdf', 5),
(110, 'Una comparación cualitativa de la dinámica de sistemas, la simulación de eventos discretos y la simulación basada en agentes', 3, 'Alfonso Sarmiento Vásquez , Eduardo López Sandova', 'Redalyc', 'i_ing_rev_2', 'assets/img/carreras/ing_industrial/ingenieria/revistas/rev_2.webp', 'media/carreras/ing_industrial/especialidades/revistas/ingenieria/rev_2.pdf', 5),
(111, 'Industrialización del algodón nativo peruano de color', 3, 'Ludwig Declercq Pedraza', 'Redalyc', 'i_ing_rev_3', 'assets/img/carreras/ing_industrial/ingenieria/revistas/rev_3.webp', 'media/carreras/ing_industrial/especialidades/revistas/ingenieria/rev_3.pdf', 5),
(112, 'Modelo para la adopción del comercio electrónico en el sector agroindustrial mexicano', 3, 'Daniel Eduardo Sepúlveda Robles', 'Redalyc', 'i_ing_rev_4', 'assets/img/carreras/ing_industrial/ingenieria/revistas/rev_4.webp', 'media/carreras/ing_industrial/especialidades/revistas/ingenieria/rev_4.pdf', 5),
(113, 'Productos libres de gluten: un reto para la industria de los alimentos', 3, 'Rafael Villanueva Flores', 'Redalyc', 'i_mrc_rev_1', 'assets/img/carreras/ing_industrial/mercado/revistas/rev_1.webp', 'media/carreras/ing_industrial/especialidades/revistas/mercado/rev_1.pdf', 8),
(114, 'Identificación de la capsaicina y la deshidrocapsaicina en el extracto de oleorresina obtenido a partir del ají panca (Capsicum chinense)', 3, 'Silvana Baldeón Apaestegui, Wilfredo Hernández Gorritto', 'Redalyc', 'i_mrc_rev_2', 'assets/img/carreras/ing_industrial/mercado/revistas/rev_2.webp', 'media/carreras/ing_industrial/especialidades/revistas/mercado/rev_2.pdf', 8),
(115, 'Análisis del riesgo en un modelo multinivel de suministro', 3, 'Jesús Escalante, Ileana Camila Monsreal Barrera, Alan García Lira, Jorge Santos Flores, Josep Casano', 'Redalyc', 'i_mrc_rev_3', 'assets/img/carreras/ing_industrial/mercado/revistas/rev_3.webp', 'media/carreras/ing_industrial/especialidades/revistas/mercado/rev_3.pdf', 8),
(116, 'Mejora en la eficiencia y en el ambiente de trabajo en Texgroup S.A.', 3, 'Jhosselyn Herrera', 'Redalyc', 'i_mrc_rev_4', 'assets/img/carreras/ing_industrial/mercado/revistas/rev_4.webp', 'media/carreras/ing_industrial/especialidades/revistas/mercado/rev_4.pdf', 8),
(117, 'Estudio de la conicidad de postes de madera de eucalipto (Eucalyptus globulus Labill) y pino amarillo (Pinus sp) utilizados en el Perú para la electrificación rural', 3, 'Julio César Canchucaja Rojas, Leonidas Miguel Castro, Francisco García Fernández', 'Redalyc', 'i_prod_rev_1', 'assets/img/carreras/ing_industrial/producto/revistas/rev_1.webp', 'media/carreras/ing_industrial/especialidades/revistas/producto/rev_1.pdf', 7),
(118, 'Optimización de los costos de muestreo en la manufactura de shampoo y acondicionador', 2, 'María del Carmen Rosas Guerrero, Emilio Pérez Pacheco', 'Redalyc', 'i_prod_rev_2', 'assets/img/carreras/ing_industrial/producto/revistas/rev_2.webp', 'media/carreras/ing_industrial/especialidades/revistas/producto/rev_2.pdf', 7),
(119, 'La gestión de la calidad y su relación con los costos de desechos y desperdicios en las mypes de la confección textil', 3, 'Elsie Bonilla Pastor', 'Redalyc', 'i_prod_rev_3', 'assets/img/carreras/ing_industrial/producto/revistas/rev_3.webp', 'media/carreras/ing_industrial/especialidades/revistas/producto/rev_3.pdf', 7),
(120, 'FACTORES PARA EL PROCESAMIENTO DE LA MANZANILLA COMÚN EN LA INDUSTRIA PERUANA DE INFUSIONES', 3, 'Aliaga Paredes, Elio Luis; Acevedo Jara, José Antonio', 'Redalyc', 'i_prod_rev_4', 'assets/img/carreras/ing_industrial/producto/revistas/rev_4.webp', 'media/carreras/ing_industrial/especialidades/revistas/producto/rev_4.pdf', 7),
(121, 'Modelo para la mejora de la calidad de la formación en ingeniería mecánica aplicado a la ingeniería industrial', 4, 'Raul Martin Garcia', 'Dialnet', 'ind-auto-tesis-1', 'assets/img/carreras/ing_industrial/automatizacion/tesis/tesis1.webp', 'media/carreras/ing_industrial/especialidades/tesis/automatizacion/tesis_indu_1.pdf', 6),
(122, 'La formación dual en el ámbito universitario aplicada a la ingeniería en diseño industrial y desarrollo del producto', 4, 'María Alonso Garcia', 'Dialnet', 'ind-auto-tesis-2', 'assets/img/carreras/ing_industrial/automatizacion/tesis/tesis2.webp', 'media/carreras/ing_industrial/especialidades/tesis/automatizacion/tesis_indu_2.pdf', 6),
(123, 'Análisis de la incorporación de metodologías colaborativas en materias proyectuales en las enseñanzas de ingeniería industrial', 4, 'Moisés Blanco Caballero', 'Dialnet', 'ind-auto-tesis-3', 'assets/img/carreras/ing_industrial/automatizacion/tesis/tesis3.webp', 'media/carreras/ing_industrial/especialidades/tesis/automatizacion/tesis_indu_3.pdf', 6),
(124, 'Estudio histórico-tecnológico de la producción de azúcar de caña aplicación al análisis desde la ingenieria industrial y la ingeniería gráfica de las máquinas de vapor Fives-Lille y Mirrlees-Watson en', 4, 'José Ramos Ureña Marín', 'Dialnet', 'ind-auto-tesis-4', 'assets/img/carreras/ing_industrial/automatizacion/tesis/tesis4.webp', 'media/carreras/ing_industrial/especialidades/tesis/automatizacion/tesis_indu_4.pdf', 6),
(125, 'Incorporación de las competencias genéricas en los títulos de grado de ingeniería industrial y su certificación en el suplemento europeo al titulo', 4, 'Cristina Pérez Barreiro', 'Dialnet', 'ind-i-tesis-1', 'assets/img/carreras/ing_industrial/ingenieria/tesis/tesis1.webp', 'media/carreras/ing_industrial/especialidades/tesis/ingenieria/tesis_indu_1.pdf', 5),
(126, 'Estudio y análisis de metodologías docentes adecuadas para el desarrollo de competencias genéricas en los títulos de grado de ingeniería industrial', 3, 'Marisa Fernando Velázquez', 'Dialnet', 'ind-i-tesis-2', 'assets/img/carreras/ing_industrial/ingenieria/tesis/tesis2.webp', 'media/carreras/ing_industrial/especialidades/tesis/ingenieria/tesis_indu_2.pdf', 5),
(127, 'Análisis del Empleo de Titulados en enseñanzas orientadas a la Ingeniería Industrial UPV en el periodo de crisis 2008-2013', 4, 'Carmina Gil Gil', 'Dialnet', 'ind-i-tesis-3', 'assets/img/carreras/ing_industrial/ingenieria/tesis/tesis3.webp', 'media/carreras/ing_industrial/especialidades/tesis/ingenieria/tesis_indu_3.pdf', 5),
(128, 'Análisis de la influencia de las tecnologías de la información y la comunicación en el aprendizaje de las técnicas de expresión gráfica en la ingeniería industrial en España', 4, 'Oscar Farrerons Vidal', 'Dialnet', 'ind-i-tesis-4', 'assets/img/carreras/ing_industrial/ingenieria/tesis/tesis4.webp', 'media/carreras/ing_industrial/especialidades/tesis/ingenieria/tesis_indu_4.pdf', 5),
(129, 'Cómo potenciar la generación de nuevas ideas en la fase creativa del proceso de innovación tecnológica en aplicaciones de la ingenieria industrial', 4, 'Miguel Angel Saiz Segarra', 'Dialnet', 'ind-mercado-ts-1', 'assets/img/carreras/ing_industrial/mercado/tesis/tesis1.webp', 'media/carreras/ing_industrial/especialidades/tesis/mercado/tesis_indu_1.pdf', 8),
(130, 'Hibridación de técnicas de ingeniería inversa para el modelado preciso de estructuras, edificios y ciudades', 4, 'Oscar Cosido Cobos', 'Dialnet', 'ind-mercado-ts-2', 'assets/img/carreras/ing_industrial/mercado/tesis/tesis2.webp', 'media/carreras/ing_industrial/especialidades/tesis/mercado/tesis_indu_2.pdf', 8),
(131, 'Metodologia para la identificación de riesgos laborales nuevos y emergentes en los procesos avanzados de fabricación industrial', 4, 'Francisco Brocal Fernández', 'Dialnet', 'ind-mercado-ts-3', 'assets/img/carreras/ing_industrial/mercado/tesis/tesis3.webp', 'media/carreras/ing_industrial/especialidades/tesis/mercado/tesis_indu_3.pdf', 8),
(132, 'Metodología para medir los efectos de la aplicación de estándares sobre la industria de los medios de pagos en el mercado chileno', 4, 'Gonzalo Enrique Diaz', 'Dialnet', 'ind-mercado-ts-4', 'assets/img/carreras/ing_industrial/mercado/tesis/tesis4.webp', 'media/carreras/ing_industrial/especialidades/tesis/mercado/tesis_indu_4.pdf', 8),
(133, 'La organización productiva de la industria del automóvil', 4, 'Carmen Peligros Espada', 'Dialnet', 'ind-prod-ts-1', 'assets/img/carreras/ing_industrial/producto/tesis/tesis1.webp', 'media/carreras/ing_industrial/especialidades/tesis/producto/tesis_indu_1.pdf', 7),
(134, 'Nanofluidos basados en nanopartículas metálicas con propiedades térmicas optimizadas para su aplicación en la industria termosolar', 4, 'Roberto Gomez Villarejo', 'Dialnet', 'ind- prod-ts-2', 'assets/img/carreras/ing_industrial/producto/tesis/tesis2.webp', 'media/carreras/ing_industrial/especialidades/tesis/producto/tesis_indu_2.pdf', 7),
(135, 'Síntesis enzimática de análogos de nucleósido-monofosfato con aplicación en industria farmacéutica y alimentaria', 4, 'Manuel Garcia', 'Dialnet', 'ind-prod-ts-3', 'assets/img/carreras/ing_industrial/producto/tesis/tesis3.webp', 'media/carreras/ing_industrial/especialidades/tesis/producto/tesis_indu_3.pdf', 7),
(136, 'Simulación numérica de procesos de estampación en frío y su aplicación a la industria de la automoción', 4, 'Enrique Curiel Sanz', 'Dialnet', 'ind-prod-ts-4', 'assets/img/carreras/ing_industrial/producto/tesis/tesis4.webp', 'media/carreras/ing_industrial/especialidades/tesis/producto/tesis_indu_4.pdf', 7),
(137, 'Nuevo enfoque en ciencia', 2, 'Inés María González Vidal', 'SCIELO', 's_admin_art_1', 'assets/img/carreras/ing_sistemas/admin_tecnologias/articulos/art_1.webp', 'media/carreras/ing_sistemas/especialidades/articulos/admin_tecnologias/art_1.pdf', 12),
(138, 'Formulación de indicadores', 2, 'Robayo-Botiva', 'SCIELO', 's_admin_art_2', 'assets/img/carreras/ing_sistemas/admin_tecnologias/articulos/art_2.webp', 'media/carreras/ing_sistemas/especialidades/articulos/admin_tecnologias/art_2.pdf', 12),
(139, 'Sistemas fotovoltaicos', 2, 'Lenyer Padrón Suárez', 'SCIELO', 's_admin_art_3', 'assets/img/carreras/ing_sistemas/admin_tecnologias/articulos/art_3.webp', 'media/carreras/ing_sistemas/especialidades/articulos/admin_tecnologias/art_3.pdf', 12),
(140, 'Función de la innovación', 2, 'Dina Elizabeth Cortes Coss', 'SCIELO', 's_admin_art_4', 'assets/img/carreras/ing_sistemas/admin_tecnologias/articulos/art_4.webp', 'media/carreras/ing_sistemas/especialidades/articulos/admin_tecnologias/art_4.pdf', 12),
(141, 'F_RULE', 2, 'Fabián Silva Pavez', 'SCIELO', 's_desa_art_1', 'assets/img/carreras/ing_sistemas/desarrollo_software/articulos/art_1.webp', 'media/carreras/ing_sistemas/especialidades/articulos/desarrollo_software/art_1.pdf', 9),
(142, 'Sistema de puntuación', 2, 'Patricio Wolff', 'SCIELO', 's_desa_art_2', 'assets/img/carreras/ing_sistemas/desarrollo_software/articulos/art_2.webp', 'media/carreras/ing_sistemas/especialidades/articulos/desarrollo_software/art_2.pdf', 9),
(143, 'Efecto de la suciedad en el desempeño de módulos fotovoltaicos en Bogotá', 2, 'Fabián León-Vargas', 'SCIELO', 's_desa_art_3', 'assets/img/carreras/ing_sistemas/desarrollo_software/articulos/art_3.webp', 'media/carreras/ing_sistemas/especialidades/articulos/desarrollo_software/art_3.pdf', 9),
(144, 'El sistema de distribución y la eficacia en programas de asistencia nutricional infantil. Caso Bienestarina - Colombia', 2, 'Feizar Rueda-Velasco', 'SCIELO', 's_desa_art_4', 'assets/img/carreras/ing_sistemas/desarrollo_software/articulos/art_4.webp', 'media/carreras/ing_sistemas/especialidades/articulos/desarrollo_software/art_4.pdf', 9),
(145, 'Retos en el modelado de la trazabilidad en las cadenas de suministro de alimentos', 2, 'Tatiana Maya Trujillo', 'SCIELO', 's_ges_art_1', 'assets/img/carreras/ing_sistemas/gestor_sistemas/articulos/art_1.webp', 'media/carreras/ing_sistemas/especialidades/articulos/gestor_sistemas/art_1.pdf', 11),
(146, 'Modelo conceptual para la concepción técnica de micro-redes: un caso de estudio en Colombia', 2, 'Juan David Mina-Casaran', 'SCIELO', 's_ges_art_2', 'assets/img/carreras/ing_sistemas/gestor_sistemas/articulos/art_2.webp', 'media/carreras/ing_sistemas/especialidades/articulos/gestor_sistemas/art_2.pdf', 11),
(147, 'Propuesta de nuevas funcionalidades para la gestión de la Historia Clínica Electrónica en el sistema XAVIA HIS', 2, 'Dunior Socarrás Benitez', 'SCIELO', 's_ges_art_3', 'assets/img/carreras/ing_sistemas/gestor_sistemas/articulos/art_3.webp', 'media/carreras/ing_sistemas/especialidades/articulos/gestor_sistemas/art_3.pdf', 11),
(148, 'Lógica difusa: metodología cuantitativa útil para determinar el consenso entre expertos de ciencias estomatológicas', 2, 'Yanet Fleites Ramos', 'SCIELO', 's_ges_art_4', 'assets/img/carreras/ing_sistemas/gestor_sistemas/articulos/art_4.webp', 'media/carreras/ing_sistemas/especialidades/articulos/gestor_sistemas/art_4.pdf', 11),
(149, 'Sistema de Laboratorios Remoto para las prácticas de control de la carrera de Ingeniería en Automática', 2, 'Omar Mar Cornelio', 'SCIELO', 's_seg_art_1', 'assets/img/carreras/ing_sistemas/seguridad_informatica/articulos/art_1.webp', 'media/carreras/ing_sistemas/especialidades/articulos/seguridad_informatica/art_1.pdf', 10),
(150, 'SecuenciaLab: laboratorio de simulación para entrenamiento en manejo de sistemas de control electromecánicos', 2, 'Alejandra Santoyo Sanchez', 'SCIELO', 's_seg_art_2', 'assets/img/carreras/ing_sistemas/seguridad_informatica/articulos/art_2.webp', 'media/carreras/ing_sistemas/especialidades/articulos/seguridad_informatica/art_2.pdf', 10),
(151, 'Especies forestales con potencial agroforestal en el Consejo Comunitario Alto Mira y Frontera (Tumaco, Colombia)', 2, 'Keisha Dayan Castillo Angulo', 'SCIELO', 's_seg_art_3', 'assets/img/carreras/ing_sistemas/seguridad_informatica/articulos/art_3.webp', 'media/carreras/ing_sistemas/especialidades/articulos/seguridad_informatica/art_3.pdf', 10),
(152, 'Sistema combinado de reactores anaerobios empacados para el tratamiento de vinaza cruda cubana', 2, 'Ania Cabrera Díaz', 'SCIELO', 's_seg_art_4', 'assets/img/carreras/ing_sistemas/seguridad_informatica/articulos/art_4.webp', 'media/carreras/ing_sistemas/especialidades/articulos/seguridad_informatica/art_4.pdf', 10),
(153, 'Fundamentos de Computación para Ingenieros', 1, 'Cedano Olvera, Marco Alfredo', 'Deingenierias', 's_admin_lib_1', 'assets/img/carreras/ing_sistemas/admin_tecnologias/libros/libro_fund.webp', 'media/carreras/ing_sistemas/especialidades/libros/admin_tecnologias/libro_fund.pdf', 12),
(154, 'Fundamentos de Sistemas Digitales', 1, 'Thomas L. Floyd', 'Deingenierias', 's_admin_lib_2', 'assets/img/carreras/ing_sistemas/admin_tecnologias/libros/libro_fund_sistemas_dig.webp', 'media/carreras/ing_sistemas/especialidades/libros/admin_tecnologias/libro_fund_sistemas_dig.pdf', 12),
(155, 'Diseño de sistemas interactivos centrados en el usuario', 1, 'Toni Granollers i Saltiveri, Jesús Lorés Vidal, José Juan Cañas Delgado', 'Deingenierias', 's_admin_lib_3', 'assets/img/carreras/ing_sistemas/admin_tecnologias/libros/libro_diseño.webp', 'media/carreras/ing_sistemas/especialidades/libros/admin_tecnologias/libro_diseño.pdf', 12),
(156, 'Sistemas y Organizaciones', 1, 'Emilio Lorenzo', 'Universidad Nacional de La Plata', 's_admin_lib_4', 'assets/img/carreras/ing_sistemas/admin_tecnologias/libros/libro_sistemas.webp', 'media/carreras/ing_sistemas/especialidades/libros/admin_tecnologias/libro_sistemas.pdf', 12),
(157, 'Fundamentos en Informática y Sistemas', 1, 'MSc. Yois S. Pascuas R.', 'Universidad de la Amazonia', 's_admin_lib_5', 'assets/img/carreras/ing_sistemas/admin_tecnologias/libros/libro_fundamentos.webp', 'media/carreras/ing_sistemas/especialidades/libros/admin_tecnologias/libro_fundamentos.pdf', 12),
(158, 'Apuntes de Estructuras de Datos y Algoritmos', 1, 'Javier Campos', 'Universidad de Zaragoza', 's_admin_lib_6', 'assets/img/carreras/ing_sistemas/admin_tecnologias/libros/libro_apuntes.webp', 'media/carreras/ing_sistemas/especialidades/libros/admin_tecnologias/libro_apuntes.pdf', 12),
(159, 'De la Teoría General de Sistemas a las Ciencias de la Complejidad', 1, 'Doctorals en Xarxa', 'Doctorals en Xarxa', 's_des_lib_1', 'assets/img/carreras/ing_sistemas/desarrollo_software/libros/libro_teoria.webp', 'media/carreras/ing_sistemas/especialidades/libros/desarrollo_software/libro_teoria.pdf', 9),
(160, 'Introducción a los Algoritmos', 1, 'Universidad Distrital Francisco José de Caldas', 'Universidad Distrital Francisco José de Caldas', 's_des_lib_2', 'assets/img/carreras/ing_sistemas/desarrollo_software/libros/libro_algo.webp', 'media/carreras/ing_sistemas/especialidades/libros/desarrollo_software/libro_algo.pdf', 9),
(161, 'Paradigmas en la programación', 1, 'Sergio Aarón Robles Rodríguez', 'Tigger.itc.mx', 's_des_lib_3', 'assets/img/carreras/ing_sistemas/desarrollo_software/libros/libro_para.webp', 'media/carreras/ing_sistemas/especialidades/libros/desarrollo_software/libro_para.pdf', 9),
(162, 'Mecánica básica, fuerza y movimiento', 1, 'Lorenzo Iparraguirre', 'Biblioteca Nacional de Maestros', 's_des_lib_4', 'assets/img/carreras/ing_sistemas/desarrollo_software/libros/libro_teoria.webp', 'media/carreras/ing_sistemas/especialidades/libros/desarrollo_software/libro_teoria.pdf', 9),
(163, 'Algoritmos y programación', 1, 'Juan Carlos López García', 'MetaBiblioteca', 's_des_lib_5', 'assets/img/carreras/ing_sistemas/desarrollo_software/libros/libro_algorit.webp', 'media/carreras/ing_sistemas/especialidades/libros/desarrollo_software/libro_algorit.pdf', 9);
INSERT INTO `libros` (`id`, `name`, `id_type_book`, `author`, `source`, `code`, `image_book`, `pdf`, `id_especialidad`) VALUES
(164, 'Teoría General de Sistemas', 1, 'Universidad Nacional Autónoma de México', 'Universidad Nacional Autónoma de México', 's_des_lib_6', 'assets/img/carreras/ing_sistemas/desarrollo_software/libros/libro_teo.webp', 'media/carreras/ing_sistemas/especialidades/libros/desarrollo_software/libro_teo.pdf', 9),
(165, 'Ingeniería de Sistemas y Automática<', 1, 'Escuela Universitaria de Ingeniería Técnica Industrial de Zaragoza', 'Escuela Universitaria de Ingeniería Técnica Indust', 's_gestor_lib_1', 'assets/img/carreras/ing_sistemas/gestor_sistemas/libros/libro_ing.webp', 'media/carreras/ing_sistemas/especialidades/libros/gestor_sistemas/libro_ing.pdf', 11),
(166, 'Algoritmos y Estructuras de Datos', 1, 'Bottazzi, Cristian, Costarelli, Santiago y DElía, Jorge', 'Centro de Investigación de Métodos Computacionales', 's_gestor_lib_2', 'assets/img/carreras/ing_sistemas/gestor_sistemas/libros/libro_algo.webp', 'media/carreras/ing_sistemas/especialidades/libros/gestor_sistemas/libro_algo.pdf', 11),
(167, 'Introducción a la gestión de sistemas de información en la empresa', 1, 'Rafael Lapiedra Alcamí, Carlos Devece Carañana y Joaquín Guiral Herrando', 'MetaBiblioteca', 's_gestor_lib_3', 'assets/img/carreras/ing_sistemas/gestor_sistemas/libros/libro_intro.webp', 'media/carreras/ing_sistemas/especialidades/libros/gestor_sistemas/libro_intro.pdf', 11),
(168, 'Ingeniería del Software', 1, 'Dr. Francisco José García Peñalvo', 'University of Salamanca', 's_gestor_lib_4', 'assets/img/carreras/ing_sistemas/gestor_sistemas/libros/libro_inge.webp', 'media/carreras/ing_sistemas/especialidades/libros/gestor_sistemas/libro_inge.pdf', 11),
(169, 'Apostila de Introdução a Algoritmos', 1, 'Prof. Luiz Gustavo Almeida Martins', 'Universidade Federal de Uberlândia', 's_gestor_lib_5', 'assets/img/carreras/ing_sistemas/gestor_sistemas/libros/libro_apo.webp', 'media/carreras/ing_sistemas/especialidades/libros/gestor_sistemas/libro_apo.pdf', 11),
(170, 'Algoritmos e Estrutura de Dados 1', 1, 'Marcos Castilho, Fabiano Silva y Daniel Weingaertner', 'Universidade Federal do Paraná', 's_gestor_lib_6', 'assets/img/carreras/ing_sistemas/gestor_sistemas/libros/libro_al.webp', 'media/carreras/ing_sistemas/especialidades/libros/gestor_sistemas/libro_al.pdf', 11),
(171, 'Física 1', 1, 'Ricardo Antonio Salazar Puente', 'Secretaría de México', 'lib-1', 'assets/img/libros_generales/libro_fisica.webp', 'media/libros_generales/libro_fisica.pdf', 10),
(172, 'Quimica Ambiental', 1, 'Ana Teodora Téllez Flores', 'CSUCA', 'lib-2', 'assets/img/libros_generales/libro_quimica.webp', 'media/libros_generales/libro_quimica.pdf', 10),
(173, 'Manual de Física General', 1, 'Osinergmin', 'Presidencia de Consejo de Ministros de Perú', 'lib-3', 'assets/img/libros_generales/libro_fisica_2.webp', 'media/libros_generales/libro_fisica_2.pdf', 10),
(174, 'Mecánica básica, fuerza y movimiento', 1, 'Lorenzo Iparraguirre', 'Biblioteca Nacional de Maestros', 'lib-4', 'assets/img/libros_generales/libro_fisica_3.webp', 'media/libros_generales/libro_fisica_3.pdf', 10),
(175, 'Matemáticas Básicas', 1, 'Departamento de Matemática Aplicada y Estadística', 'Departamento de Matemática Aplicada y Estadística', 'lib-5', 'assets/img/libros_generales/libro_mate.webp', 'media/libros_generales/libro_mate.pdf', 10),
(176, 'Matemática I - Polimodal', 1, 'Cristina Adunka, Gabriela Mattiello, Adriana Moreno y Ana Repetto', 'Biblioteca Digital UNCUYOs', '', 'assets/img/libros_generales/libro_mate_2.webp', 'media/libros_generales/libro_mate_2.pdf', 10),
(177, 'Propuesta de un sistema', 3, 'Isabel Moreno, M.', 'Procesamiento del Lenguaje Natural', 's_admin_rev_1', 'assets/img/carreras/ing_sistemas/admin_tecnologias/revistas/rev_1.webp', 'media/carreras/ing_sistemas/especialidades/revistas/admin_tecnologias/rev_1.pdf', 12),
(178, 'Combinando patrones', 3, 'Yamel Pérez-Guadarramas', 'Procesamiento del Lenguaje Natural', 's_admin_rev_2', 'assets/img/carreras/ing_sistemas/admin_tecnologias/revistas/rev_2.webp', 'media/carreras/ing_sistemas/especialidades/revistas/admin_tecnologias/rev_2.pdf', 12),
(179, 'Diseño, compilación y anotación', 3, 'Saray Zafra Cremades', 'Procesamiento del Lenguaje Natural', 's_admin_rev_3', 'assets/img/carreras/ing_sistemas/admin_tecnologias/revistas/rev_3.webp', 'media/carreras/ing_sistemas/especialidades/revistas/admin_tecnologias/rev_3.pdf', 12),
(180, 'Generación morfológica', 3, 'Carlos Escolano', 'Procesamiento del Lenguaje Natural', 's_admin_rev_4', 'assets/img/carreras/ing_sistemas/admin_tecnologias/revistas/rev_4.webp', 'media/carreras/ing_sistemas/especialidades/revistas/admin_tecnologias/rev_4.pdf', 12),
(181, 'Plantico, un paquete en R', 3, 'Silverio Andrés Quintana', 'Revista Cubana de Ciencias Informáticas', 's_admin_rev_5', 'assets/img/carreras/ing_sistemas/admin_tecnologias/revistas/rev_5.webp', 'media/carreras/ing_sistemas/especialidades/revistas/admin_tecnologias/rev_5.pdf', 12),
(182, 'Sistema visualizador', 3, 'Lisvan Guevara Trujillo', 'Revista Cubana de Ciencias Informáticas', 's_admin_rev_6', 'assets/img/carreras/ing_sistemas/admin_tecnologias/revistas/rev_6.webp', 'media/carreras/ing_sistemas/especialidades/revistas/admin_tecnologias/rev_6.pdf', 9),
(183, 'Restablecimiento y especificidad en Sistemas Argumentativos', 3, 'Claudio Andrés Alessio', 'redalyc', 's_dsoftware_rev_1', 'assets/img/carreras/ing_sistemas/desarrollo_software/revistas/rev_1.webp', 'media/carreras/ing_sistemas/especialidades/revistas/desarrollo_software/rev_1.pdf', 9),
(184, 'Técnicas de Inteligencia Artificial (IA) para analizar los atributos determinantes en los precios de la vivienda', 3, 'Julia Núñez Tabales, Francisco Rey Carmona, José Caridad y Ocerin', 'redalyc', 's_dsoftware_rev_2', 'assets/img/carreras/ing_sistemas/desarrollo_software/revistas/rev_2.webp', 'media/carreras/ing_sistemas/especialidades/revistas/desarrollo_software/rev_2.pdf', 9),
(185, 'Un Prototipo de Sistema Inteligente para apoyar y compartir diagnósticos de tumores malignos, basado en la filosofía de la medicina personalizada', 3, 'Víctor Flores, Aldo Quelopana', 'redalyc', 's_dsoftware_rev_3', 'assets/img/carreras/ing_sistemas/desarrollo_software/revistas/rev_3.webp', 'media/carreras/ing_sistemas/especialidades/revistas/desarrollo_software/rev_3.pdf', 9),
(186, 'Restablecimiento y especificidad en Sistemas Argumentativos', 3, 'Claudio Andrés Alessio', 'redalyc', 's_dsoftware_rev_4', 'assets/img/carreras/ing_sistemas/desarrollo_software/revistas/rev_4.webp', 'media/carreras/ing_sistemas/especialidades/revistas/desarrollo_software/rev_4.pdf', 9),
(187, 'Sistema multiagente para el apoyo a la gestion de inventarios en itil mediante el monitoreo distribuido de software y hardware en una red corporativa', 3, 'Sebastián Ortiz, Cesar López Gallego, Ana Isabel Oviedo Carrascal', 'redalyc', 's_gestor_rev_1', 'assets/img/carreras/ing_sistemas/gestor_sistemas/revistas/rev_1.webp', 'media/carreras/ing_sistemas/especialidades/revistas/gestor_sistemas/rev_1.pdf', 11),
(188, 'Comparación de las características de algunas herramientas de software para pruebas de carga', 3, 'Carlos Mario Zapata , Crhistian de Jesús Cardona Velásquez', 'redalyc', 's_gestor_rev_2', 'assets/img/carreras/ing_sistemas/gestor_sistemas/revistas/rev_2.webp', 'media/carreras/ing_sistemas/especialidades/revistas/gestor_sistemas/rev_2.pdf', 11),
(189, 'Tecnologías de la información y comunicación (TICs) en los procesos de recepción y despacho', 3, 'Rodrigo Gómez , Alexander Correa', 'redalyc', 's_gestor_rev_3', 'assets/img/carreras/ing_sistemas/gestor_sistemas/revistas/rev_3.webp', 'media/carreras/ing_sistemas/especialidades/revistas/gestor_sistemas/rev_3.pdf', 11),
(190, 'Identificación del factor humano en el seguimiento de procesos de software en un medio ambiente universitario', 3, 'Perla Jarillo Nieto, Carlos Enríquez-Ramírez, Roberto Sánchez Herrera', 'redalyc', 's_gestor_rev_4', 'assets/img/carreras/ing_sistemas/gestor_sistemas/revistas/rev_4.webp', 'media/carreras/ing_sistemas/especialidades/revistas/gestor_sistemas/rev_4.pdf', 11),
(191, 'Restablecimiento y especificidad en Sistemas Argumentativos', 3, 'Claudio Andrés Alessio', 'redalyc', 's_seguridad_rev_1', 'assets/img/carreras/ing_sistemas/seguridad_informatica/revistas/rev_1.webp', 'media/carreras/ing_sistemas/especialidades/revistas/seguridad_informatica/rev_1.pdf', 10),
(192, 'Protegiendo los sistemas de control industrial ante ciberamenazas', 3, 'Oscar Lage Serrano, Ana Ayerbe, Stefan Schuster', 'Dialnet', 's_seguridad_rev_2', 'assets/img/carreras/ing_sistemas/seguridad_informatica/revistas/rev_2.webp', 'media/carreras/ing_sistemas/especialidades/revistas/seguridad_informatica/rev_2.pdf', 10),
(193, 'La cultura sobre seguridad informática en las redes sociales: el caso de los estudiantes de la Preparatoria de San Diego Cuentla, México', 3, 'redalyc', 'Dialnet', 's_seguridad_rev_3', 'assets/img/carreras/ing_sistemas/seguridad_informatica/revistas/rev_3.webp', 'media/carreras/ing_sistemas/especialidades/revistas/seguridad_informatica/rev_3.pdf', 10),
(194, 'Políticas de seguridad informática', 3, 'Ciro Antonio Dussan Clavijo', 'redalyc', 's_seguridad_rev_4', 'assets/img/carreras/ing_sistemas/seguridad_informatica/revistas/rev_4.webp', 'media/carreras/ing_sistemas/especialidades/revistas/seguridad_informatica/rev_4.pdf', 10),
(195, 'Ingeniería dirigida por modelos para el modelado de contexto en sistemas context-aware', 4, 'José Ramon Hoyos', 'Dialnet', 'Sistemas-TI-ts-1', 'assets/img/carreras/ing_sistemas/admin_tecnologias/tesis/tesis1.webp', 'media/carreras/ing_sistemas/especialidades/tesis/admin_tecnologias/tesis_sis_1.pdf', 12),
(196, 'Evaluación del programa de ingeniería de sistemas de la Universidad Cooperativa de Colombia -Seccional Bogotá- mediante el modelo de evaluación CIPP', 4, 'Jose Apuleyo Torres Maldonado', 'Dialnet', 'Sistemas-TI-ts-2', 'assets/img/carreras/ing_sistemas/admin_tecnologias/tesis/tesis2.webp', 'media/carreras/ing_sistemas/especialidades/tesis/admin_tecnologias/tesis_sis_2.pdf', 12),
(197, 'Tecnología software aplicada al diseño de sistemas basados en el conocimiento', 4, 'José Joaquín Cañadas', 'Dialnet', 'Sistemas-TI-ts-3', 'assets/img/carreras/ing_sistemas/admin_tecnologias/tesis/tesis3.webp', 'media/carreras/ing_sistemas/especialidades/tesis/admin_tecnologias/tesis_sis_3.pdf', 12),
(198, 'Modelo de aceptación de los sistemas e-learning en las universidades un enfoque del modelo de aceptación de la tecnología ajustado al ecuador', 4, 'Richard Ivan Ramirez', 'Dialnet', 'Sistemas-TI-ts-4', 'assets/img/carreras/ing_sistemas/admin_tecnologias/tesis/tesis4.webp', 'media/carreras/ing_sistemas/especialidades/tesis/admin_tecnologias/tesis_sis_4.pdf', 12),
(199, 'Desarrollo de aplicaciones en software libre para microscopía óptica avanzada', 4, 'Joaquim Soriano Felipe', 'Dialnet', 'sis-desarrollo-ts-1', 'assets/img/carreras/ing_sistemas/desarrollo_software/tesis/tesis1.webp', 'media/carreras/ing_sistemas/especialidades/tesis/desarrollo_software/tesis_sis_1.pdf', 9),
(200, 'TAKA: gestión interactiva del conocimiento en organizaciones de desarrollo de software', 4, 'Alberto Heredía  García', 'Dialnet', 'sis-desarrollo-ts-2', 'assets/img/carreras/ing_sistemas/desarrollo_software/tesis/tesis2.webp', 'media/carreras/ing_sistemas/especialidades/tesis/desarrollo_software/tesis_sis_2.pdf', 9),
(201, 'La txalaparta digital: Un análisis de la txalaparta a través del desarrollo de software', 4, 'Enrique Hurtado', 'Dialnet', 'sis-desarrollo-ts-3', 'assets/img/carreras/ing_sistemas/desarrollo_software/tesis/tesis3.webp', 'media/carreras/ing_sistemas/especialidades/tesis/desarrollo_software/tesis_sis_3.pdf', 9),
(202, 'Incorporación de la usabilidad en el proceso de desarrollo Open Source Software', 4, 'John Wilmar Castro', 'Dialnet', 'sis-desarrollo-ts-4', 'assets/img/carreras/ing_sistemas/desarrollo_software/tesis/tesis4.webp', 'media/carreras/ing_sistemas/especialidades/tesis/desarrollo_software/tesis_sis_4.pdf', 9),
(203, 'Diseño y eficacia de un gestor web interactivo de aprendizaje en ingeniería gráfica para el desarrollo de la capacidad de visión espacial', 4, 'Carlos Melgosa Pedrosa', 'Dialnet', 'sis-gest-ts-2', 'assets/img/carreras/ing_sistemas/gestor_sistemas/tesis/tesis1.webp', 'media/carreras/ing_sistemas/especialidades/tesis/gestor_sistemas/tesis_sis_1.pdf', 11),
(204, 'Un modelo sostenible para la gestión de decisiones de diseño en arquitectura software', 4, 'Carlos Carrillo Sánchez', 'Dialnet', 'sis-gest-ts-2', 'assets/img/carreras/ing_sistemas/gestor_sistemas/tesis/tesis2.webp', 'media/carreras/ing_sistemas/especialidades/tesis/gestor_sistemas/tesis_sis_2.pdf', 11),
(205, 'Técnicas de calidad total aplicadas a los sistemas de gestión de emergencias', 4, 'Oscar Marcelo Zambrano Vizuete', 'Dialnet', 'sis-gest-ts-3', 'assets/img/carreras/ing_sistemas/gestor_sistemas/tesis/tesis3.webp', 'media/carreras/ing_sistemas/especialidades/tesis/gestor_sistemas/tesis_sis_3.pdf', 11),
(206, 'Modelo para el diseño de sistemas gestores de workflows con funcionalidades colaborativas, cloud y móviles', 4, 'Castelán Maldonado', 'Dialnet', 'sis-gest-ts-4', 'assets/img/carreras/ing_sistemas/gestor_sistemas/tesis/tesis4.webp', 'media/carreras/ing_sistemas/especialidades/tesis/gestor_sistemas/tesis_sis_4.pdf', 11),
(207, 'Gestión terminológica y optimización del proceso de traducción especializada: aplicación en el ámbito de la seguridad informática', 4, 'María Josefa Pinilla', 'Dialnet', 'sis-seg-ts-1', 'assets/img/carreras/ing_sistemas/seguridad_informatica/tesis/tesis1.webp', 'media/carreras/ing_sistemas/especialidades/tesis/seguridad_informatica/tesis_sis_1.pdf', 10),
(208, 'Eficiencia y seguridad en protocolos de streaming peer-to_peer', 4, 'Cristina Medina Lopez', 'Dialnet', 'sis-seg-ts-2', 'assets/img/carreras/ing_sistemas/seguridad_informatica/tesis/tesis2.webp', 'media/carreras/ing_sistemas/especialidades/tesis/seguridad_informatica/tesis_sis_2.pdf', 10),
(209, 'Propuesta de diseño y despliegue de servicios de seguridad y movilidad en redes vehiculares', 4, 'Pedro Fernandez Ruiz', 'Dialnet', 'sis-seg-ts-3', 'assets/img/carreras/ing_sistemas/seguridad_informatica/tesis/tesis3.webp', 'media/carreras/ing_sistemas/especialidades/tesis/seguridad_informatica/tesis_sis_3.pdf', 10),
(210, 'Supervivencia en redes ad hoc. Mecanismos de tolerancia y reacción frente amenazas de seguridad', 4, 'Roberto Magán Carrión', 'Dialnet', 'sis-seg-ts-4', 'assets/img/carreras/ing_sistemas/seguridad_informatica/tesis/tesis4.webp', 'media/carreras/ing_sistemas/especialidades/tesis/seguridad_informatica/tesis_sis_4.pdf', 10),
(211, 'Modelación de demanda de transporte urbano en Costa Rica, de Emme a TransCAD', 2, 'Leonardo Castro Rodríguez', 'SCIELO', 't_ges_art_1', 'assets/img/carreras/ing_transporte/gestion/articulos/art_1.webp', 'media/carreras/ing_transporte/especialidades/articulos/gestion/art_1.pdf', 14),
(212, 'Parámetros equivalentes de fase y secuencia de hasta ocho líneas de transmisión conectadas en cascada', 2, 'Dr. C. Hector Silvio - Llamo Laborí', 'SCIELO', 't_ges_art_2', 'assets/img/carreras/ing_transporte/gestion/articulos/art_2.webp', 'media/carreras/ing_transporte/especialidades/articulos/gestion/art_2.pdf', 14),
(213, 'Buscando la satisfacción del cliente. Estudio en el Centro de Inmunología Molecular', 2, 'Daimeé Padilla-Aguiar', 'SCIELO', 't_ges_art_3', 'assets/img/carreras/ing_transporte/gestion/articulos/art_3.webp', 'media/carreras/ing_transporte/especialidades/articulos/gestion/art_3.pdf', 14),
(214, 'Dispositivo de adquisición y transmisión de la posición de un vehículo mediante GPS y Wi-Fi', 2, 'Carlos R. Vázquez Seisdedos', 'SCIELO', 't_ges_art_4', 'assets/img/carreras/ing_transporte/gestion/articulos/art_4.webp', 'media/carreras/ing_transporte/especialidades/articulos/gestion/art_4.pdf', 14),
(215, 'Algoritmos para el problema de localización de plantas y centros de distribución maximizando beneficio', 2, 'Luis Flores Garrido', 'SCIELO', 't_ing_art_1', 'assets/img/carreras/ing_transporte/ingenieria/articulos/art_1.webp', 'media/carreras/ing_transporte/especialidades/articulos/ingenieria/art_1.pdf', 15),
(216, 'Optimización de la distribución de la flota de cabotaje en múltiples direcciones de transportación', 2, 'Jorge Herrera-Franklin', 'SCIELO', 't_ing_art_2', 'assets/img/carreras/ing_transporte/ingenieria/articulos/art_2.webp', 'media/carreras/ing_transporte/especialidades/articulos/ingenieria/art_2.pdf', 15),
(217, 'Tasa potencial de transporte de sedimentos del sector Oasis en playa Varadero', 2, 'Luis Córdova López, Ronnie Torres Hugues', 'SCIELO', 't_ing_art_3', 'assets/img/carreras/ing_transporte/ingenieria/articulos/art_3.webp', 'media/carreras/ing_transporte/especialidades/articulos/ingenieria/art_3.pdf', 15),
(218, 'Medidas de rehabilitación para el sector Oasis en playa Varadero', 2, 'Luis Córdova López, Ronnie Torres Hugues', 'SCIELO', 't_ing_art_4', 'assets/img/carreras/ing_transporte/ingenieria/articulos/art_4.webp', 'media/carreras/ing_transporte/especialidades/articulos/ingenieria/art_4.pdf', 15),
(219, 'Influencia del Flujo De Enfriamiento en el Comportamiento Térmico de un Termosifón de Contorno', 2, 'Fabián Escalona Rodríguez', 'SCIELO', 't_sim_art_1', 'assets/img/carreras/ing_transporte/simulacion/articulos/art_1.webp', 'media/carreras/ing_transporte/especialidades/articulos/simulacion/art_1.pdf', 16),
(220, 'Prospectiva 2025 de la Carrera de Ingeniería Química en algunos Países pertenecientes a la Organización de Estados Americanos (OEA)', 2, 'Carmen C. Ramírez', 'SCIELO', 't_sim_art_2', 'assets/img/carreras/ing_transporte/simulacion/articulos/art_2.webp', 'media/carreras/ing_transporte/especialidades/articulos/simulacion/art_2.pdf', 16),
(221, 'Simulación y optimización para dimensionar la flota de vehículos en operaciones logísticas de abastecimiento-distribución', 2, 'Yasel José Costa Salas', 'SCIELO', 't_sim_art_3', 'assets/img/carreras/ing_transporte/simulacion/articulos/art_3.webp', 'media/carreras/ing_transporte/especialidades/articulos/simulacion/art_3.pdf', 16),
(222, 'Análisis dinámico por elementos finitos del conjunto soporte-captador de alta frecuencia de un tren subterráneo', 2, 'Alfredo González-Becerra', 'SCIELO', 't_sim_art_4', 'assets/img/carreras/ing_transporte/simulacion/articulos/art_4.webp', 'media/carreras/ing_transporte/especialidades/articulos/simulacion/art_4.pdf', 16),
(223, 'Implementación de modelos de control de los SVC en el programa PSX', 2, 'Ing. Grettel Quintana de Basterra', 'SCIELO', 't_tec_art_1', 'assets/img/carreras/ing_transporte/tecnologias/articulos/art_1.webp', 'media/carreras/ing_transporte/especialidades/articulos/tecnologias/art_1.pdf', 13),
(224, 'Método de medición del sistema de mantenimiento en las organizaciones de transporte terrestre por carretera', 2, 'Buenaventura Rubén Rigol Cardona', 'SCIELO', 't_tec_art_2', 'assets/img/carreras/ing_transporte/tecnologias/articulos/art_2.webp', 'media/carreras/ing_transporte/especialidades/articulos/tecnologias/art_2.pdf', 13),
(225, 'Control predictivo-cooperativo para operar una red de bombas centrífugas en un sistema serial de poliductos', 2, 'José Noguera Polania', 'SCIELO', 't_tec_art_3', 'assets/img/carreras/ing_transporte/tecnologias/articulos/art_3.webp', 'media/carreras/ing_transporte/especialidades/articulos/tecnologias/art_3.pdf', 13),
(226, 'Identificación de Estrategias de Aprendizaje de Estudiantes de Ingeniería de Alimentos en los Cursos Balance de Materia, Transporte de Fluidos y Operaciones Unitarias', 2, 'Diofanor Acevedo', 'SCIELO', 't_tec_art_4', 'assets/img/carreras/ing_transporte/tecnologias/articulos/art_4.webp', 'media/carreras/ing_transporte/especialidades/articulos/tecnologias/art_4.pdf', 13),
(227, 'Ingeniería de transito fundamentos y aplicaciones', 1, 'Rafael Cal y Mayor Reyes Spíndola James Cárdenas Grisales', 'Biblioteca Nacional', 't_ges_lib_1', 'assets/img/carreras/ing_transporte/gestion/libros/libro_1.webp', 'media/carreras/ing_transporte/especialidades/libros/gestion/libro_1.pdf', 14),
(228, 'Manual de mecánica básica', 1, 'Anón', 'Consejería Jurídica del Ejecutivo Federal', 't_ges_lib_2', 'assets/img/carreras/ing_transporte/gestion/libros/libro_2.webp', 'media/carreras/ing_transporte/especialidades/libros/gestion/libro_2.pdf', 14),
(229, 'Elementos de Mecánica de Rocas', 1, 'CORE', 'CORE', 't_ges_lib_3', 'assets/img/carreras/ing_transporte/gestion/libros/libro_3.webp', 'media/carreras/ing_transporte/especialidades/libros/gestion/libro_3.pdf', 14),
(230, 'Principios de Ingeniería', 1, 'Juan Manuel Jiménez Rodríguez', 'Froidea', 't_ing_lib_1', 'assets/img/carreras/ing_transporte/ingenieria/libros/libro_1.webp', 'media/carreras/ing_transporte/especialidades/libros/ingenieria/libro_1.pdf', 15),
(231, 'Sistemas', 1, 'F. Saez Vacas', 'Universidad Politécnica de Madrid', 't_ing_lib_2', 'assets/img/carreras/ing_transporte/ingenieria/libros/libro_2.webp', 'media/carreras/ing_transporte/especialidades/libros/ingenieria/libro_2.pdf', 15),
(232, 'Introducción a la ingeniería', 1, 'Eduardo Galvez Soto', 'Universidad de Tarapacá', 't_ing_lib_3', 'assets/img/carreras/ing_transporte/ingenieria/libros/libro_3.webp', 'media/carreras/ing_transporte/especialidades/libros/ingenieria/libro_3.pdf', 15),
(233, 'Ingeniería básica', 1, 'Universidad Politécnica de Cartagena', 'Universidad Politécnica de Cartagena', 't_sim_lib_1', 'assets/img/carreras/ing_transporte/simulacion/libros/libro_1.webp', 'media/carreras/ing_transporte/especialidades/libros/simulacion/libro_1.pdf', 16),
(234, 'Ejecución de proyectos de ingeniería', 1, 'Hatch', 'Hatch', 't_sim_lib_2', 'assets/img/carreras/ing_transporte/simulacion/libros/libro_2.webp', 'media/carreras/ing_transporte/especialidades/libros/simulacion/libro_2.pdf', 16),
(235, 'Definición de Ingeniería', 1, 'José Luis Alunni', 'Universidad Nacional del Nordeste', 't_sim_lib_3', 'assets/img/carreras/ing_transporte/simulacion/libros/libro_3.webp', 'media/carreras/ing_transporte/especialidades/libros/simulacion/libro_3.pdf', 16),
(236, 'Introducción a los proyectos de ingeniería', 1, 'Ing. Cesar Mascaro La Rosa', 'Blog de Cursos', 't_tec_lib_1', 'assets/img/carreras/ing_transporte/tecnologias/libros/libro_1.webp', 'media/carreras/ing_transporte/especialidades/libros/tecnologias/libro_1.pdf', 13),
(237, 'Ingeniería básica y de detalle para la instrumentación de una planta prototipo de gasificación de lecho fijo', 1, 'José Ulises Castellanos-Contreras, Carlos Andrés Forero-Núñez y Fabio Emiro Sierra-Vargas', 'ResearchGate', 't_tec_lib_2', 'assets/img/carreras/ing_transporte/tecnologias/libros/libro_2.webp', 'media/carreras/ing_transporte/especialidades/libros/tecnologias/libro_2.pdf', 13),
(238, 'El desarrollo de proyectos', 1, 'Colegio de Ingenieros de Chile A.G.', 'Colegio de Ingenieros de Chile A.G.', 't_tec_lib_3', 'assets/img/carreras/ing_transporte/tecnologias/libros/libro_3.webp', 'media/carreras/ing_transporte/especialidades/libros/tecnologias/libro_3.pdf', 13),
(239, 'Dossier. Logística y desarrollo territorial', 3, 'Jesús González Feliu, Miguel Gastón Cedillo Campos', 'Redalyc', 't_gest_rev_1', 'assets/img/carreras/ing_transporte/gestion/revistas/rev_1.webp', 'media/carreras/ing_transporte/especialidades/revistas/gestion/rev_1.pdf', 14),
(240, 'Food hub: Una alternativa para alimentar las ciudades de manera sostenible', 3, 'Laura Palacios-Argüello, Eleonora Morganti, Jesús Gonzalez-Feliu', 'Redalyc', 't_gest_rev_2', 'assets/img/carreras/ing_transporte/gestion/revistas/rev_2.webp', 'media/carreras/ing_transporte/especialidades/revistas/gestion/rev_2.pdf', 14),
(241, 'Distribución de mercancías y desarrollo urbano sostenible', 3, 'Jesús Muñuzuri, Rafael Grosso, Alejandro Escudero, Pablo Cortés', 'Redalyc', 't_gest_rev_3', 'assets/img/carreras/ing_transporte/gestion/revistas/rev_3.webp', 'media/carreras/ing_transporte/especialidades/revistas/gestion/rev_3.pdf', 14),
(242, 'Choferes del autotransporte de carga en México: investigaciones sobre condiciones laborales y la cadena de suministro', 3, 'Luis David Berrones Sanz', 'Redalyc', 't_gest_rev_4', 'assets/img/carreras/ing_transporte/gestion/revistas/rev_4.webp', 'media/carreras/ing_transporte/especialidades/revistas/gestion/rev_4.pdf', 14),
(243, 'Análisis de un esquema de coordinación para los procesos de descargue en grandes almacenes, basado en modelos por eventos discretos', 3, 'Mateo Pachón Rincón, Juan David Suárez Moreno, Jorge Eduardo Ortiz Triviño', 'Redalyc', 't_ing_rev_1', 'assets/img/carreras/ing_transporte/ingenieria/revistas/rev_1.webp', 'media/carreras/ing_transporte/especialidades/revistas/ingenieria/rev_1.pdf', 15),
(244, 'Choferes del autotransporte de carga en México: investigaciones sobre condiciones laborales y la cadena de suministro', 3, 'Luis David Berrones Sanz', 'Redalyc', 't_ing_rev_2', 'assets/img/carreras/ing_transporte/ingenieria/revistas/rev_2.webp', 'media/carreras/ing_transporte/especialidades/revistas/ingenieria/rev_2.pdf', 15),
(245, 'La influencia de las redes de transporte en los actores estratégicos del Campo de Gibraltar (España)', 3, 'Manuela Ortega Gil, María Concepción Segovia Cuevas', 'Redalyc', 't_ing_rev_3', 'assets/img/carreras/ing_transporte/ingenieria/revistas/rev_3.webp', 'media/carreras/ing_transporte/especialidades/revistas/ingenieria/rev_3.pdf', 15),
(246, 'Reestructuración de la centralidad y movilidad cotidiana en el sur de la Región Metropolitana de Buenos Aires', 3, 'Lorena Vecslir, Jorge Blanco, Mariela Nerome, Florencia Sciutto, Pablo Maestrojuan, Luciana Rodrígue', 'Redalyc', 't_ing_rev_4', 'assets/img/carreras/ing_transporte/ingenieria/revistas/rev_4.webp', 'media/carreras/ing_transporte/especialidades/revistas/ingenieria/rev_4.pdf', 15),
(247, 'Reglamentación y plusganancias en el autotransporte urbano. El caso de Buenos Aires', 3, 'Andrea Gutiérrez', 'Redalyc', 't_sim_rev_1', 'assets/img/carreras/ing_transporte/simulacion/revistas/rev_1.webp', 'media/carreras/ing_transporte/especialidades/revistas/simulacion/rev_1.pdf', 16),
(248, 'Impacto territorial y socioeconómico de la privatización y desregulación de empresas y actividades del transporte en Argentina', 3, 'Luis Yanes, Luis Domínguez Roca, Jorge Blanco, Andrea Gutiérrez, Fernando Arias, Luis Gerosi, Julio ', 'Redalyc', 't_sim_rev_2', 'assets/img/carreras/ing_transporte/simulacion/revistas/rev_2.webp', 'media/carreras/ing_transporte/especialidades/revistas/simulacion/rev_2.pdf', 16),
(249, 'Urbanización y transporte. Algunos aportes conceptuales', 3, 'Susana Kralich', 'Redalyc', 't_sim_rev_3', 'assets/img/carreras/ing_transporte/simulacion/revistas/rev_3.webp', 'media/carreras/ing_transporte/especialidades/revistas/simulacion/rev_3.pdf', 16),
(250, 'Localización residencial, posición socioeconómica, ciclo de vida y espacios de movilidad cotidiana en Santiago de Chile', 3, 'Florent Demoraes, Yasna Contreras, Marie Piron', 'Redalyc', 't_sim_rev_4', 'assets/img/carreras/ing_transporte/simulacion/revistas/rev_4.webp', 'media/carreras/ing_transporte/especialidades/revistas/simulacion/rev_4.pdf', 16),
(251, 'El impacto sociocultural de las transformaciones en el puerto de Barcelona', 3, 'Maricarmen Tapia Gómez', 'Redalyc', 't_tecno_rev_1', 'assets/img/carreras/ing_transporte/tecnologias/revistas/rev_1.webp', 'media/carreras/ing_transporte/especialidades/revistas/tecnologias/rev_1.pdf', 13),
(252, 'Dinámicas portuarias del litoral metropolitano del Paraná desde 1990 Thomas Massin', 3, 'Thomas Massin', 'Redalyc', 't_tecno_rev_2', 'assets/img/carreras/ing_transporte/tecnologias/revistas/rev_2.webp', 'media/carreras/ing_transporte/especialidades/revistas/tecnologias/rev_2.pdf', 13),
(253, 'A orillas del río. La relación puerto-ciudad en la transformación urbana de Rosario', 3, 'Cecilia Galimberti', 'Redalyc', 't_tecno_rev_3', 'assets/img/carreras/ing_transporte/tecnologias/revistas/rev_3.webp', 'media/carreras/ing_transporte/especialidades/revistas/tecnologias/rev_3.pdf', 13),
(254, 'La movilidad en una zona metropolitana mexicana, caso de estudio: Querétaro, México', 3, 'Saúl Antonio Obregón Biosca, José Romero Navarrete, Eduardo Betanzo Quezada', 'Redalyc', 't_tecno_rev_4', 'assets/img/carreras/ing_transporte/tecnologias/revistas/rev_4.webp', 'media/carreras/ing_transporte/especialidades/revistas/tecnologias/rev_4.pdf', 13),
(255, 'Diseño y aplicación de una metodología para desarrollo de planes de transportes sostenibles en centros universitarios', 4, 'Francisco Lucas Garcia', 'Dialnet', 'transport-gest-ts-1', 'assets/img/carreras/ing_transporte/gestion/tesis/tesis1.webp', 'media/carreras/ing_transporte/especialidades/tesis/gestion/tesis_tr_1.pdf', 14),
(256, 'Desarrollo de un servicio middleware de ontologías cooperativas aplicado a sistemas embebidos de transportes inteligentes', 4, 'Derlis Orlando Gregor', 'Dialnet', 'transport-gest-ts-2', 'assets/img/carreras/ing_transporte/gestion/tesis/tesis2.webp', 'media/carreras/ing_transporte/especialidades/tesis/gestion/tesis_tr_2.pdf', 14),
(257, 'El transporte ferroviario como elemento básico de la política de transportes y sus efectos sobre la cohesión y la política regional de la Unión Europea', 4, 'Francisco José Contreras Martínes', 'Dialnet', 'transport-gest-ts-3', 'assets/img/carreras/ing_transporte/gestion/tesis/tesis3.webp', 'media/carreras/ing_transporte/especialidades/tesis/gestion/tesis_tr_3.pdf', 14),
(258, 'Transporte de gas en materiales de barrera', 4, 'Vanesa Gútierrez Rodrigo', 'Dialnet', 'transport-gest-ts-4', 'assets/img/carreras/ing_transporte/gestion/tesis/tesis4.webp', 'media/carreras/ing_transporte/especialidades/tesis/gestion/tesis_tr_4.pdf', 14),
(259, 'Ensayos en economía de la innovación y del transporte', 4, 'Alfonso Badiola Sánchez', 'Dialnet', 'transport-ing-ts-1', 'assets/img/carreras/ing_transporte/ingenieria/tesis/tesis1.webp', 'media/carreras/ing_transporte/especialidades/tesis/ingenieria/tesis_tr_1.pdf', 15),
(260, 'Nuevos desarrollos en economía del transporte', 4, 'Juan Pedro Asencio Flores', 'Dialnet', 'transport-ing-ts-2', 'assets/img/carreras/ing_transporte/ingenieria/tesis/tesis2.webp', 'media/carreras/ing_transporte/especialidades/tesis/ingenieria/tesis_tr_2.pdf', 15),
(261, 'Desarrollo de un modelo para la optimización del reemplazo de vehículos para una flota de transporte urbano de pasajeros', 4, 'Jorge Luiz Riechi', 'Dialnet', 'transport-ing-ts-3', 'assets/img/carreras/ing_transporte/ingenieria/tesis/tesis3.webp', 'media/carreras/ing_transporte/especialidades/tesis/ingenieria/tesis_tr_3.pdf', 15),
(262, 'La Prevención de riesgos laborales en el transporte por carretera de mercancias peligrosas', 4, 'Francisco Trujillo Pons', 'Dialnet', 'transport-ing-ts-4', 'assets/img/carreras/ing_transporte/ingenieria/tesis/tesis4.webp', 'media/carreras/ing_transporte/especialidades/tesis/ingenieria/tesis_tr_4.pdf', 15),
(263, 'Transporte y desarrollo económico un análisis para Bolivia, Colombia y Venezuela', 4, 'Isabel Ramos Martel', 'Dialnet', 'transport-sim-ts-1', 'assets/img/carreras/ing_transporte/simulacion/tesis/tesis1.webp', 'media/carreras/ing_transporte/especialidades/tesis/simulacion/tesis_tr_1.pdf', 16),
(264, 'Optimización y aplicación de las normas de correcta distribución en el transporte de medicamentos entre alicante y casablanca', 4, 'Julia Uroz', 'Dialnet', 'transport-sim-ts-2', 'assets/img/carreras/ing_transporte/simulacion/tesis/tesis2.webp', 'media/carreras/ing_transporte/especialidades/tesis/simulacion/tesis_tr_2.pdf', 16),
(265, 'Optimización del diseño de la operación de los servicios de transporte público en el área urbana', 4, 'Francisco Ruisánchez Diaz', 'Dialnet', 'transport-sim-ts-3', 'assets/img/carreras/ing_transporte/simulacion/tesis/tesis3.webp', 'media/carreras/ing_transporte/especialidades/tesis/simulacion/tesis_tr_3.pdf', 16),
(266, 'Modelización de la demanda de transporte público ante fases contractivas del ciclo económico', 4, 'César Canales Garcia', 'Dialnet', 'transport-sim-ts-4', 'assets/img/carreras/ing_transporte/simulacion/tesis/tesis4.webp', 'media/carreras/ing_transporte/especialidades/tesis/simulacion/tesis_tr_4.pdf', 16),
(267, 'Mejoras en el transporte intermodal Optimización en tiempo real del acarreo terrestre', 4, 'Alejandro Escudero Santana', 'Dialnet', 'transport-tec-ts-1', 'assets/img/carreras/ing_transporte/tecnologias/tesis/tesis1.webp', 'media/carreras/ing_transporte/especialidades/tesis/tecnologias/tesis_tr_1.pdf', 13),
(268, 'Optimización heurística multiobjetivo para la gestión de activos de infraestructuras de transporte terrestre', 4, 'Cristina Torres Machi', 'Dialnet', 'transport-tec-ts-2', 'assets/img/carreras/ing_transporte/tecnologias/tesis/tesis2.webp', 'media/carreras/ing_transporte/especialidades/tesis/tecnologias/tesis_tr_2.pdf', 13),
(269, 'Análisis de viabilidad y caracterización de la señal gpr para la evaluación de obras de infraestructuras del transporte', 4, 'Francisco Javier Prego Martínez', 'Dialnet', 'transport-tec-ts-3', 'assets/img/carreras/ing_transporte/tecnologias/tesis/tesis3.webp', 'media/carreras/ing_transporte/especialidades/tesis/tecnologias/tesis_tr_3.pdf', 13),
(270, 'La Península Ibérica en el transporte masivo de mercancías entre Europa y África futuras autopistas del mar', 4, 'José Luis Almazán Gárate', 'Dialnet', 'transport-tec-ts-4', 'assets/img/carreras/ing_transporte/tecnologias/tesis/tesis4.webp', 'media/carreras/ing_transporte/especialidades/tesis/tecnologias/tesis_tr_4.pdf', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_libro`
--

CREATE TABLE `tipo_libro` (
  `id` bigint(5) NOT NULL,
  `name_type` varchar(150) COLLATE utf8_bin NOT NULL,
  `image` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipo_libro`
--

INSERT INTO `tipo_libro` (`id`, `name_type`, `image`) VALUES
(1, 'Libros', 'assets/img/libros/libros.webp'),
(2, 'Articulos cientificos', 'assets/img/articulos/articulos.webp'),
(3, 'Revistas', 'assets/img/revistas/revistas.webp'),
(4, 'Tesis', 'assets/img/tesis/tesis.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(40) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `code` varchar(40) COLLATE utf8_bin NOT NULL,
  `dni` int(8) NOT NULL,
  `mail` varchar(200) COLLATE utf8_bin NOT NULL,
  `gender` varchar(40) COLLATE utf8_bin NOT NULL,
  `type` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `lastname`, `password`, `code`, `dni`, `mail`, `gender`, `type`) VALUES
(1, 'Jorge', 'Terrazas', '1234', '111', 222, 'ee@gmail.com', 'Masculino', 'Estudiante'),
(17, 'uu', 'ii', '888', 'do123', 555, 'aa@gmail.com', 'Femenino', 'Docente'),
(18, 'rr', 'tt', '666', 'es123', 22, 'dd@gmail.com', 'Masculino', 'Estudiante'),
(19, 'jj', 'uu', '88', '99', 0, 'ee@gmail.com', 'Masculino', ''),
(20, 'kk', 'll', 'ññ', '22', 33, 'ee111@gmail.com', 'Femenino', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_especialidad` (`id_especialidad`),
  ADD KEY `id_type_book` (`id_type_book`);

--
-- Indices de la tabla `tipo_libro`
--
ALTER TABLE `tipo_libro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` bigint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` bigint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` bigint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT de la tabla `tipo_libro`
--
ALTER TABLE `tipo_libro`
  MODIFY `id` bigint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD CONSTRAINT `especialidades_ibfk_1` FOREIGN KEY (`id_carrera`) REFERENCES `carreras` (`id`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidades` (`id`),
  ADD CONSTRAINT `libros_ibfk_3` FOREIGN KEY (`id_type_book`) REFERENCES `tipo_libro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
