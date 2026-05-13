-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2026 a las 13:46:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `get_your_guide`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `cif` varchar(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`cif`, `nombre`, `direccion`) VALUES
('A00000001', 'TourMadrid S.L.', 'Calle Gran Via 1, Madrid'),
('A00000002', 'Barcelona Trips S.A.', 'Paseo de Gracia 2, Barcelona'),
('A00000003', 'Sevilla Tour Co.', 'Av. de la Constitucion 3, Sevilla'),
('A00000004', 'Valencia Tours', 'Calle Colon 4, Valencia'),
('A00000005', 'Bilbao Experience', 'Gran Via 5, Bilbao'),
('A00000006', 'Granada Adventures', 'Calle Reyes Catolicos 6, Granada'),
('A00000007', 'Toledo Visits', 'Calle Comercio 7, Toledo'),
('A00000008', 'Malaga Trips', 'Calle Larios 8, Malaga'),
('A00000009', 'Zaragoza Tours', 'Paseo Independencia 9, Zaragoz   a'),
('A00000010', 'Salamanca Explorers', 'Gran Via 10, Salamanca'),
('A00000011', 'Cordoba Experiences', 'Calle Gondomar 11, Cordoba'),
('A00000012', 'Alicante Sun Tours', 'Av. Alfonso X el Sabio 12, Alicante'),
('A00000013', 'Pamplona Rutas', 'Paseo Sarasate 13, Pamplona'),
('A00000014', 'Palma Tours', 'Paseo Borne 14, Palma de Mallorca'),
('A00000015', 'Las Palmas Explorer', 'Triana 15, Las Palmas de Gran Canaria'),
('A00000016', 'Tenerife Adventures', 'Rambla de Santa Cruz 16, Santa Cruz de Tenerife'),
('A00000017', 'San Sebastian Visitas', 'Av. de la Libertad 17, San Sebastian'),
('A00000018', 'Segovia Magic Tours', 'Juan Bravo 18, Segovia'),
('A00000019', 'Cadiz Historical', 'Calle Pelota 19, Cadiz'),
('A00000020', 'Murcia Explorers', 'Gran Via Escultor Salzillo 20, Murcia'),
('A00000021', 'Valladolid Trips', 'Calle Santiago 21, Valladolid'),
('A00000022', 'Santander Sea Tours', 'Paseo Pereda 22, Santander'),
('A00000023', 'Oviedo Rutas', 'Calle Uria 23, Oviedo'),
('A00000024', 'Burgos Castilla Tours', 'Calle Vitoria 24, Burgos'),
('A00000025', 'Leon Heritage', 'Calle Ancha 25, Leon'),
('A00000026', 'Logroino Wine Tours', 'Gran Via del Rey Juan Carlos I 26, Logroino'),
('A00000027', 'A Coruina Atlantic', 'Calle Real 27, A Coruina'),
('A00000028', 'Santiago Pilgrim Tours', 'Rua do Vilar 28, Santiago de Compostela'),
('A00000029', 'Huelva Experience', 'Gran Via 29, Huelva'),
('A00000030', 'Jaen Olive Tours', 'Calle Bernabe Soriano 30, Jaen'),
('A00000031', 'Almeria Desert Trips', 'Paseo de Almeria 31, Almeria'),
('A00000032', 'Extremadura Natural', 'Av. Jose Fernandez Lopez 32, Badajoz'),
('A00000033', 'Cuenca UNESCO Tours', 'Calle Alfonso VIII 33, Cuenca'),
('A00000034', 'Albacete Central', 'Paseo de la Cuba 34, Albacete'),
('A00000035', 'Ciudad Real Adventures', 'Av. del Rey Santo 35, Ciudad Real'),
('A00000036', 'Pontevedra Rias', 'Calle Michelena 36, Pontevedra'),
('A00000037', 'Vigo Ocean Tours', 'Calle Principe 37, Vigo'),
('A00000038', 'Lleida Terres', 'Rambla Ferran 38, Lleida'),
('A00000039', 'Girona Medieval', 'Carrer de la For?a 39, Girona'),
('A00000040', 'Tarragona Roman', 'Rambla Nova 40, Tarragona'),
('A00000041', 'Ibiza Island Trips', 'Passeig de ses Fonts 41, Ibiza'),
('A00000042', 'Menorca Natural', 'Cami des Castell 42, Menorca'),
('A00000043', 'Fuerteventura Wind', 'Av. Juan de Bethencourt 43, Fuerteventura'),
('A00000044', 'Lanzarote Volcanic', 'Av. Angel Guerra 44, Lanzarote'),
('A00000045', 'Ceuta Estrecho', 'Calle Camoens 45, Ceuta'),
('A00000046', 'Melilla Multicultural', 'Calle O Donnell 46, Melilla'),
('A00000047', 'Guadalajara Castles', 'Calle Mayor 47, Guadalajara'),
('A00000048', 'Teruel Mudejar', 'Paseo del Ovalo 48, Teruel'),
('A00000049', 'Huesca Pyrenees', 'Calle Vega Armijo 49, Huesca'),
('A00000050', 'Caceres Heritage', 'Pl. Mayor 50, Caceres'),
('A00000051', 'Avila Walls', 'Calle Reyes Catolicos 51, Avila'),
('A00000052', 'Soria Numancia', 'El Collado 52, Soria'),
('A00000053', 'Zamora Romanesque', 'Calle de Santa Clara 53, Zamora'),
('A00000054', 'Palencia Nature', 'Mayor 54, Palencia'),
('A00000055', 'Orense Thermal', 'Progreso 55, Orense'),
('A00000056', 'Lugo Wall Tours', 'Ronda de la Muralla 56, Lugo'),
('A00000057', 'Ferrol Naval', 'Rua Real 57, Ferrol'),
('A00000058', 'Jerez Sherry Tours', 'Lanceria 58, Jerez de la Frontera'),
('A00000059', 'Ronda Gorge Trips', 'Carrera Espinel 59, Ronda'),
('A00000060', 'Marbella Glam Tours', 'Av. Ricardo Soriano 60, Marbella'),
('A00000061', 'Benidorm Beach Trips', 'Av. del Mediterraneo 61, Benidorm'),
('A00000062', 'Torremolinos Fun', 'Bajondillo 62, Torremolinos'),
('A00000063', 'Sitges Art Tours', 'Carrer Major 63, Sitges'),
('A00000064', 'Vic Medieval', 'Carrer dels Argenters 64, Vic'),
('A00000065', 'Manresa History', 'Carrer del Born 65, Manresa'),
('A00000066', 'Castellon Coast', 'Av. del Mar 66, Castellon'),
('A00000067', 'Gandia Beach', 'Passeig Neptu 67, Gandia'),
('A00000068', 'Elche Palm', 'Av. de la Llibertat 68, Elche'),
('A00000069', 'Cartagena Rome', 'Calle Mayor 69, Cartagena'),
('A00000070', 'Merida Rome', 'Av. Extremadura 70, Merida'),
('A00000071', 'Plasencia Cathedral', 'Trujillo 71, Plasencia'),
('A00000072', 'Trujillo Conquistadors', 'Pl. Mayor 72, Trujillo'),
('A00000073', 'Aranjuez Royal', 'Stuart 73, Aranjuez'),
('A00000074', 'Alcala Cervantes', 'Calle Mayor 74, Alcala de Henares'),
('A00000075', 'El Escorial Monastery', 'Grimaldi 75, El Escorial'),
('A00000076', 'Vitoria Green City', 'Dato 76, Vitoria-Gasteiz'),
('A00000077', 'Bayona Medieval', 'Rampa 77, Bayona'),
('A00000078', 'Tui Cathedral', 'Calvo Sotelo 78, Tui'),
('A00000079', 'Baeza Renaissance', 'Calle San Pablo 79, Baeza'),
('A00000080', 'Ubeda Renaissance', 'Calle Real 80, Ubeda'),
('A00000081', 'Priego Baroque', 'Calle del Rio 81, Priego de Cordoba'),
('A00000082', 'Antequera Dolmens', 'Infante Don Fernando 82, Antequera'),
('A00000083', 'Nerja Cave Tours', 'Calle Pintada 83, Nerja'),
('A00000084', 'Frigiliana White Village', 'Calle Real 84, Frigiliana'),
('A00000085', 'Arcos Pueblos Blancos', 'Calle Corredera 85, Arcos de la Frontera'),
('A00000086', 'Vejer White Town', 'La Plazuela 86, Vejer de la Frontera'),
('A00000087', 'Zahara Adventures', 'Calle San Juan 87, Zahara de la Sierra'),
('A00000088', 'Grazalema Natural', 'Pl. Asomaderos 88, Grazalema'),
('A00000089', 'Carmona Walls', 'Calle Prim 89, Carmona'),
('A00000090', 'Ecija Towers', 'Calle Emilio Castelar 90, Ecija'),
('A00000091', 'Osuna Baroque', 'Carrera 91, Osuna'),
('A00000092', 'Medina Azahara', 'Ctra. Palma del Rio 92, Cordoba'),
('A00000093', 'Italica Rome', 'Av. Extremadura 93, Santiponce'),
('A00000094', 'Doinana Nature', 'Av. la Canaliega 94, El Rocio'),
('A00000095', 'Sierra Nevada Snow', 'Pradollano 95, Granada'),
('A00000096', 'Alpujarra Villages', 'Calle Encina 96, Trevelez'),
('A00000097', 'Cabo de Gata', 'Ctra. San Jose 97, Nijar'),
('A00000098', 'Tabernas Desert', 'Ctra. Almeria 98, Tabernas'),
('A00000099', 'Alcazar Jerez Tours', 'Alameda Vieja 99, Jerez de la Frontera'),
('A00000100', 'CaminoSantiago Rutas', 'Rua das Hortas 100, Santiago de Compostela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excursion`
--

CREATE TABLE `excursion` (
  `cod_reserva` int(11) NOT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `aforo` int(11) NOT NULL,
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `visita` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `excursion`
--

INSERT INTO `excursion` (`cod_reserva`, `nombre_empresa`, `aforo`, `dia`, `hora`, `visita`) VALUES
(1, 'TourMadrid S.L.', 20, '2024-04-01', '09:00:00', 'Visita al Museo del Prado'),
(2, 'Barcelona Trips S.A.', 15, '2024-04-02', '10:00:00', 'Tour por el Barrio Gotico'),
(3, 'Sevilla Tour Co.', 25, '2024-04-03', '09:30:00', 'Visita a la Catedral de Sevilla'),
(4, 'Valencia Tours', 18, '2024-04-04', '11:00:00', 'Tour por la Ciudad de las Artes'),
(5, 'Bilbao Experience', 12, '2024-04-05', '10:30:00', 'Visita al Museo Guggenheim'),
(6, 'Granada Adventures', 22, '2024-04-06', '09:00:00', 'Tour por la Alhambra'),
(7, 'Toledo Visits', 16, '2024-04-07', '10:00:00', 'Visita a la Catedral de Toledo'),
(8, 'Malaga Trips', 20, '2024-04-08', '11:30:00', 'Tour por el Centro Historico'),
(9, 'Zaragoza Tours', 14, '2024-04-09', '09:00:00', 'Visita a la Basilica del Pilar'),
(10, 'Salamanca Explorers', 18, '2024-04-10', '10:00:00', 'Tour por la Universidad de Salamanca'),
(11, 'Cordoba Experiences', 22, '2024-04-11', '09:30:00', 'Visita a la Mezquita-Catedral'),
(12, 'Alicante Sun Tours', 16, '2024-04-12', '11:00:00', 'Tour por el Castillo de Santa Barbara'),
(13, 'Pamplona Rutas', 20, '2024-04-13', '10:00:00', 'Ruta de los Encierros de San Fermin'),
(14, 'Palma Tours', 15, '2024-04-14', '09:00:00', 'Tour por la Catedral de Palma'),
(15, 'Las Palmas Explorer', 18, '2024-04-15', '10:30:00', 'Visita al Vegueta y Casa Colon'),
(16, 'Tenerife Adventures', 12, '2024-04-16', '11:00:00', 'Excursion al Teide'),
(17, 'San Sebastian Visitas', 20, '2024-04-17', '09:00:00', 'Tour por la Parte Vieja'),
(18, 'Segovia Magic Tours', 14, '2024-04-18', '10:00:00', 'Visita al Acueducto Romano'),
(19, 'Cadiz Historical', 22, '2024-04-19', '09:30:00', 'Tour por las Murallas y Playas'),
(20, 'Murcia Explorers', 16, '2024-04-20', '11:00:00', 'Visita a la Catedral de Murcia'),
(21, 'Valladolid Trips', 18, '2024-04-21', '10:00:00', 'Tour por los Museos Nacionales'),
(22, 'Santander Sea Tours', 20, '2024-04-22', '09:00:00', 'Paseo Maritimo y Sardinero'),
(23, 'Oviedo Rutas', 15, '2024-04-23', '10:30:00', 'Tour por el Casco Antiguo'),
(24, 'Burgos Castilla Tours', 22, '2024-04-24', '09:00:00', 'Visita a la Catedral Gotica'),
(25, 'Leon Heritage', 12, '2024-04-25', '11:00:00', 'Tour por la Catedral y Barrio Humedo'),
(26, 'Logroino Wine Tours', 20, '2024-04-26', '10:00:00', 'Ruta del Vino de La Rioja'),
(27, 'A Coruina Atlantic', 16, '2024-04-27', '09:30:00', 'Tour por la Torre de Hercules'),
(28, 'Santiago Pilgrim Tours', 18, '2024-04-28', '10:00:00', 'Camino de Santiago Urbano'),
(29, 'Huelva Experience', 22, '2024-04-29', '09:00:00', 'Tour por Minas de Riotinto'),
(30, 'Jaen Olive Tours', 14, '2024-04-30', '11:30:00', 'Ruta del Aceite de Oliva'),
(31, 'Almeria Desert Trips', 20, '2024-05-01', '09:00:00', 'Tour por el Desierto de Tabernas'),
(32, 'Extremadura Natural', 15, '2024-05-02', '10:00:00', 'Visita a Merida Romana'),
(33, 'Cuenca UNESCO Tours', 18, '2024-05-03', '09:30:00', 'Tour por las Casas Colgadas'),
(34, 'Albacete Central', 22, '2024-05-04', '11:00:00', 'Visita al Museo de la Cuchilleria'),
(35, 'Ciudad Real Adventures', 16, '2024-05-05', '10:30:00', 'Tour por los Molinos de Viento'),
(36, 'Pontevedra Rias', 20, '2024-05-06', '09:00:00', 'Tour por la Zona Monumental'),
(37, 'Vigo Ocean Tours', 14, '2024-05-07', '11:00:00', 'Paseo por las Islas Cies'),
(38, 'Lleida Terres', 18, '2024-05-08', '10:00:00', 'Visita a la Seu Vella'),
(39, 'Girona Medieval', 22, '2024-05-09', '09:00:00', 'Tour por el Casco Medieval'),
(40, 'Tarragona Roman', 12, '2024-05-10', '10:30:00', 'Ruta Romana por Tarraco'),
(41, 'Ibiza Island Trips', 20, '2024-05-11', '09:00:00', 'Tour por Dalt Vila'),
(42, 'Menorca Natural', 16, '2024-05-12', '11:00:00', 'Visita a los Talayots Prehistoricos'),
(43, 'Fuerteventura Wind', 18, '2024-05-13', '10:00:00', 'Tour por las Dunas de Corralejo'),
(44, 'Lanzarote Volcanic', 22, '2024-05-14', '09:30:00', 'Excursion a Timanfaya'),
(45, 'Ceuta Estrecho', 14, '2024-05-15', '11:30:00', 'Tour por las Murallas de Ceuta'),
(46, 'Melilla Multicultural', 12, '2024-05-16', '09:00:00', 'Tour por el Casco Historico de Melilla'),
(47, 'Guadalajara Castles', 20, '2024-05-17', '09:00:00', 'Visita al Palacio del Infantado'),
(48, 'Teruel Mudejar', 15, '2024-05-18', '10:00:00', 'Tour por las Torres Mudejares'),
(49, 'Huesca Pyrenees', 18, '2024-05-19', '09:30:00', 'Excursion a Ordesa y Monte Perdido'),
(50, 'Caceres Heritage', 22, '2024-05-20', '11:00:00', 'Tour por el Casco Monumental'),
(51, 'Avila Walls', 16, '2024-05-21', '10:30:00', 'Ruta por la Muralla Medieval'),
(52, 'Soria Numancia', 20, '2024-05-22', '09:00:00', 'Visita al Yacimiento de Numancia'),
(53, 'Zamora Romanesque', 14, '2024-05-23', '11:00:00', 'Tour por las Iglesias Romanicas'),
(54, 'Palencia Nature', 18, '2024-05-24', '10:00:00', 'Visita a la Catedral de Palencia'),
(55, 'Orense Thermal', 22, '2024-05-25', '09:00:00', 'Tour por las Termas de Ourense'),
(56, 'Lugo Wall Tours', 12, '2024-05-26', '10:30:00', 'Paseo por la Muralla Romana'),
(57, 'Ferrol Naval', 20, '2024-05-27', '09:00:00', 'Tour por el Arsenal Militar'),
(58, 'Jerez Sherry Tours', 16, '2024-05-28', '11:00:00', 'Visita a las Bodegas Historicas'),
(59, 'Ronda Gorge Trips', 18, '2024-05-29', '10:00:00', 'Tour por el Tajo de Ronda'),
(60, 'Marbella Glam Tours', 22, '2024-05-30', '09:30:00', 'Tour por el Casco Antiguo de Marbella'),
(61, 'Benidorm Beach Trips', 14, '2024-06-01', '11:30:00', 'Tour por la Sierra Helada'),
(62, 'Torremolinos Fun', 20, '2024-06-02', '09:00:00', 'Ruta del Turismo Cultural'),
(63, 'Sitges Art Tours', 15, '2024-06-03', '10:00:00', 'Tour por Museos y Galerias'),
(64, 'Vic Medieval', 18, '2024-06-04', '09:30:00', 'Visita al Mercado Medieval'),
(65, 'Manresa History', 22, '2024-06-05', '11:00:00', 'Tour por la Seu de Manresa'),
(66, 'Castellon Coast', 16, '2024-06-06', '10:30:00', 'Tour por el Desierto de Las Palmas'),
(67, 'Gandia Beach', 20, '2024-06-07', '09:00:00', 'Visita al Palau Ducal dels Borja'),
(68, 'Elche Palm', 14, '2024-06-08', '11:00:00', 'Tour por el Palmeral de Elche'),
(69, 'Cartagena Rome', 18, '2024-06-09', '10:00:00', 'Ruta Romana por Carthago Nova'),
(70, 'Merida Rome', 22, '2024-06-10', '09:00:00', 'Visita al Teatro y Anfiteatro Romano'),
(71, 'Plasencia Cathedral', 12, '2024-06-11', '10:30:00', 'Tour por la Catedral y Centro Historico'),
(72, 'Trujillo Conquistadors', 20, '2024-06-12', '09:00:00', 'Ruta de los Conquistadores'),
(73, 'Aranjuez Royal', 16, '2024-06-13', '11:00:00', 'Tour por los Jardines Reales'),
(74, 'Alcala Cervantes', 18, '2024-06-14', '10:00:00', 'Ruta de Cervantes en Alcala'),
(75, 'El Escorial Monastery', 22, '2024-06-15', '09:30:00', 'Visita al Real Monasterio'),
(76, 'Vitoria Green City', 14, '2024-06-16', '11:30:00', 'Tour por los Anillos Verdes'),
(77, 'Bayona Medieval', 20, '2024-06-17', '09:00:00', 'Tour por el Casco Historico de Baiona'),
(78, 'Tui Cathedral', 15, '2024-06-18', '10:00:00', 'Visita a la Catedral de Tui'),
(79, 'Baeza Renaissance', 18, '2024-06-19', '09:30:00', 'Tour por Baeza Renacentista'),
(80, 'Ubeda Renaissance', 22, '2024-06-20', '11:00:00', 'Tour por el Conjunto Historico de Ubeda'),
(81, 'Priego Baroque', 16, '2024-06-21', '10:30:00', 'Tour por el Baroco Cordobes'),
(82, 'Antequera Dolmens', 20, '2024-06-22', '09:00:00', 'Visita a los Dolmenes Prehistoricos'),
(83, 'Nerja Cave Tours', 14, '2024-06-23', '11:00:00', 'Tour por las Cuevas de Nerja'),
(84, 'Frigiliana White Village', 18, '2024-06-24', '10:00:00', 'Paseo por el Pueblo Blanco'),
(85, 'Arcos Pueblos Blancos', 22, '2024-06-25', '09:00:00', 'Tour por Arcos de la Frontera'),
(86, 'Vejer White Town', 12, '2024-06-26', '10:30:00', 'Visita al Casco Historico de Vejer'),
(87, 'Zahara Adventures', 20, '2024-06-27', '09:00:00', 'Ruta por la Sierra de Cadiz'),
(88, 'Grazalema Natural', 16, '2024-06-28', '11:00:00', 'Tour por el Parque Natural'),
(89, 'Carmona Walls', 18, '2024-06-29', '10:00:00', 'Visita a la Carmona Romana'),
(90, 'Ecija Towers', 22, '2024-06-30', '09:30:00', 'Tour por las Torres Barrocas'),
(91, 'Osuna Baroque', 14, '2024-07-01', '11:30:00', 'Visita a la Colegiata de Osuna'),
(92, 'Medina Azahara', 20, '2024-07-02', '09:00:00', 'Tour por la Ciudad Califal'),
(93, 'Italica Rome', 15, '2024-07-03', '10:00:00', 'Visita al Yacimiento de Italica'),
(94, 'Doinana Nature', 18, '2024-07-04', '09:30:00', 'Excursion por el Parque de Doinana'),
(95, 'Sierra Nevada Snow', 22, '2024-07-05', '11:00:00', 'Excursion a Sierra Nevada'),
(96, 'Alpujarra Villages', 16, '2024-07-06', '10:30:00', 'Ruta por los Pueblos de la Alpujarra'),
(97, 'Cabo de Gata', 20, '2024-07-07', '09:00:00', 'Tour por el Parque Natural Cabo de Gata'),
(98, 'Tabernas Desert', 14, '2024-07-08', '11:00:00', 'Excursion al Desierto de Tabernas'),
(99, 'Alcazar Jerez Tours', 18, '2024-07-09', '10:00:00', 'Visita al Alcazar de Jerez'),
(100, 'CaminoSantiago Rutas', 22, '2024-07-10', '09:00:00', 'Etapa Final del Camino de Santiago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historicos_borrados`
--

CREATE TABLE `historicos_borrados` (
  `identificador_accion` int(11) NOT NULL,
  `tabla_afectada` varchar(10) NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `datos_anteriores` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historicos_modificados`
--

CREATE TABLE `historicos_modificados` (
  `identificador_accion` int(11) NOT NULL,
  `tabla_afectada` varchar(10) NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `datos_anteriores` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL COMMENT '1 = Admin, 0 = Cliente',
  `contraseina` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`dni`, `nombre`, `apellido`, `telefono`, `mail`, `rol`, `contraseina`) VALUES
('01234567J', 'Elena', 'Torres', '600100010', 'elena.torres@mail.com', 0, 'pass010'),
('02122333C', 'Enrique', 'Muinoz', '600100029', 'enrique.munoz@mail.com', 0, 'pass029'),
('02122333M', 'Guillermo', 'Reyes', '600100039', 'guillermo.reyes@mail.com', 1, 'pass039'),
('02122334W', 'Oscar', 'Cano', '600100049', 'oscar.cano@mail.com', 1, 'pass049'),
('02122335G', 'Jorge', 'Campos', '600100059', 'jorge.campos@mail.com', 1, 'pass059'),
('02122336Q', 'Ruben', 'Montero', '600100069', 'ruben.montero@mail.com', 1, 'pass069'),
('02122337A', 'Francisco', 'Chavez', '600100079', 'francisco.chavez@mail.com', 0, 'pass079'),
('02122338K', 'Damian', 'Bernal', '600100089', 'damian.bernal@mail.com', 0, 'pass089'),
('02122339U', 'Esteban', 'Gallego', '600100099', 'esteban.gallego@mail.com', 0, 'pass099'),
('10203040T', 'Patricia', 'Molina', '600100020', 'patricia.molina@mail.com', 0, 'pass020'),
('11223344K', 'Pablo', 'Ramirez', '600100011', 'pablo.ramirez@mail.com', 0, 'pass011'),
('12345678A', 'Carlos', 'Garcia', '600100001', 'carlos.garcia@mail.com', 0, 'pass001'),
('13233444D', 'Veronica', 'Iglesias', '600100030', 'veronica.iglesias@mail.com', 0, 'pass030'),
('13233444N', 'Adriana', 'Cruz', '600100040', 'adriana.cruz@mail.com', 0, 'pass040'),
('13233445X', 'Rebeca', 'Pascual', '600100050', 'rebeca.pascual@mail.com', 0, 'pass050'),
('13233446H', 'Esperanza', 'Luna', '600100060', 'esperanza.luna@mail.com', 0, 'pass060'),
('13233447R', 'Amparo', 'Nuinez', '600100070', 'amparo.nunez@mail.com', 0, 'pass070'),
('13233448B', 'Irene', 'Espejo', '600100080', 'irene.espejo@mail.com', 0, 'pass080'),
('13233449L', 'Rosario', 'Vergara', '600100090', 'rosario.vergara@mail.com', 0, 'pass090'),
('13233450V', 'Mercedes', 'Garrote', '600100100', 'mercedes.garrote@mail.com', 0, 'pass100'),
('20304050U', 'Roberto', 'Serrano', '600100021', 'roberto.serrano@mail.com', 0, 'pass021'),
('22334455L', 'Isabel', 'Flores', '600100012', 'isabel.flores@mail.com', 1, 'pass012'),
('23456789B', 'Maria', 'Lopez', '600100002', 'maria.lopez@mail.com', 1, 'pass002'),
('24344555E', 'Alvaro', 'Medina', '600100031', 'alvaro.medina@mail.com', 0, 'pass031'),
('24344555O', 'Ivan', 'Lara', '600100041', 'ivan.lara@mail.com', 0, 'pass041'),
('24344556Y', 'Gonzalo', 'Nieto', '600100051', 'gonzalo.nieto@mail.com', 0, 'pass051'),
('24344557I', 'Ignacio', 'Bravo', '600100061', 'ignacio.bravo@mail.com', 0, 'pass061'),
('24344558S', 'Sebastian', 'Carrasco', '600100071', 'sebastian.carrasco@mail.com', 0, 'pass071'),
('24344559C', 'Cesar', 'Montes', '600100081', 'cesar.montes@mail.com', 0, 'pass081'),
('24344560M', 'Manuel', 'Acosta', '600100091', 'manuel.acosta@mail.com', 0, 'pass091'),
('30405060V', 'Marta', 'Morales', '600100022', 'marta.morales@mail.com', 1, 'pass022'),
('33445566M', 'David', 'Moreno', '600100013', 'david.moreno@mail.com', 0, 'pass013'),
('34567890C', 'Jose', 'Martinez', '600100003', 'jose.martinez@mail.com', 0, 'pass003'),
('35455666F', 'Natalia', 'Santos', '600100032', 'natalia.santos@mail.com', 1, 'pass032'),
('35455666P', 'Silvia', 'Mendoza', '600100042', 'silvia.mendoza@mail.com', 1, 'pass042'),
('35455667Z', 'Lorena', 'Calvo', '600100052', 'lorena.calvo@mail.com', 1, 'pass052'),
('35455668J', 'Dolores', 'Gallardo', '600100062', 'dolores.gallardo@mail.com', 1, 'pass062'),
('35455669T', 'Consuelo', 'Moya', '600100072', 'consuelo.moya@mail.com', 1, 'pass072'),
('35455670D', 'Yolanda', 'Palomino', '600100082', 'yolanda.palomino@mail.com', 1, 'pass082'),
('35455671N', 'Trinidad', 'Borja', '600100092', 'trinidad.borja@mail.com', 1, 'pass092'),
('40506070W', 'Fernando', 'Ortega', '600100023', 'fernando.ortega@mail.com', 0, 'pass023'),
('44556677N', 'Carmen', 'Jimenez', '600100014', 'carmen.jimenez@mail.com', 0, 'pass014'),
('45678901D', 'Ana', 'Sanchez', '600100004', 'ana.sanchez@mail.com', 0, 'pass004'),
('46566777G', 'Diego', 'Blanco', '600100033', 'diego.blanco@mail.com', 0, 'pass033'),
('46566777Q', 'Tomas', 'Guerrero', '600100043', 'tomas.guerrero@mail.com', 0, 'pass043'),
('46566778A', 'Nicolas', 'Vega', '600100053', 'nicolas.vega@mail.com', 0, 'pass053'),
('46566779K', 'Rodrigo', 'Ortiz', '600100063', 'rodrigo.ortiz@mail.com', 0, 'pass063'),
('46566780U', 'Angel', 'Pedraza', '600100073', 'angel.pedraza@mail.com', 0, 'pass073'),
('46566781E', 'Alejandro', 'Herrero', '600100083', 'alejandro.herrero@mail.com', 0, 'pass083'),
('46566782O', 'Nicolas', 'Merino', '600100093', 'nicolas.merino@mail.com', 0, 'pass093'),
('50607080X', 'Cristina', 'Delgado', '600100024', 'cristina.delgado@mail.com', 0, 'pass024'),
('55667788O', 'Javier', 'Alvarez', '600100015', 'javier.alvarez@mail.com', 0, 'pass015'),
('56789012E', 'Luis', 'Fernandez', '600100005', 'luis.fernandez@mail.com', 0, 'pass005'),
('57677888H', 'Ines', 'Herrera', '600100034', 'ines.herrera@mail.com', 0, 'pass034'),
('57677888R', 'Rosa', 'Fuentes', '600100044', 'rosa.fuentes@mail.com', 1, 'pass044'),
('57677889B', 'Monica', 'Cortes', '600100054', 'monica.cortes@mail.com', 1, 'pass054'),
('57677890L', 'Miriam', 'Dominguez', '600100064', 'miriam.dominguez@mail.com', 1, 'pass064'),
('57677891V', 'Marisol', 'Duran', '600100074', 'marisol.duran@mail.com', 0, 'pass074'),
('57677892F', 'Manuela', 'Aranda', '600100084', 'manuela.aranda@mail.com', 0, 'pass084'),
('57677893P', 'Concepcion', 'Quijano', '600100094', 'concepcion.quijano@mail.com', 0, 'pass094'),
('60708090Y', 'Antonio', 'Castro', '600100025', 'antonio.castro@mail.com', 0, 'pass025'),
('66778899P', 'Lucia', 'Romero', '600100016', 'lucia.romero@mail.com', 0, 'pass016'),
('67890123F', 'Laura', 'Gonzalez', '600100006', 'laura.gonzalez@mail.com', 0, 'pass006'),
('68788990C', 'Rafael', 'Ibainez', '600100055', 'rafael.ibanez@mail.com', 0, 'pass055'),
('68788991M', 'Alberto', 'Crespo', '600100065', 'alberto.crespo@mail.com', 0, 'pass065'),
('68788992W', 'Joaquin', 'Mellado', '600100075', 'joaquin.mellado@mail.com', 0, 'pass075'),
('68788993G', 'Victor', 'Carmona', '600100085', 'victor.carmona@mail.com', 0, 'pass085'),
('68788994Q', 'Simon', 'Alarcon', '600100095', 'simon.alarcon@mail.com', 0, 'pass095'),
('68788999I', 'Sergio', 'Aguilar', '600100035', 'sergio.aguilar@mail.com', 0, 'pass035'),
('68788999S', 'Ernesto', 'Leon', '600100045', 'ernesto.leon@mail.com', 0, 'pass045'),
('70809000Z', 'Nuria', 'Vazquez', '600100026', 'nuria.vazquez@mail.com', 0, 'pass026'),
('77889900Q', 'Marcos', 'Alonso', '600100017', 'marcos.alonso@mail.com', 1, 'pass017'),
('78901234G', 'Pedro', 'Diaz', '600100007', 'pedro.diaz@mail.com', 1, 'pass007'),
('79899000J', 'Alicia', 'Rios', '600100036', 'alicia.rios@mail.com', 0, 'pass036'),
('79899000T', 'Pilar', 'Marin', '600100046', 'pilar.marin@mail.com', 0, 'pass046'),
('79899001D', 'Eva', 'Rubio', '600100056', 'eva.rubio@mail.com', 0, 'pass056'),
('79899002N', 'Noelia', 'Parra', '600100066', 'noelia.parra@mail.com', 0, 'pass066'),
('79899003X', 'Aurora', 'Espinosa', '600100076', 'aurora.espinosa@mail.com', 0, 'pass076'),
('79899004H', 'Elisa', 'Osorio', '600100086', 'elisa.osorio@mail.com', 0, 'pass086'),
('79899005R', 'Fatima', 'Bautista', '600100096', 'fatima.bautista@mail.com', 0, 'pass096'),
('80900111A', 'Raul', 'Ramos', '600100027', 'raul.ramos@mail.com', 1, 'pass027'),
('80900111K', 'Hugo', 'Vargas', '600100037', 'hugo.vargas@mail.com', 1, 'pass037'),
('80900112U', 'Emilio', 'Peina', '600100047', 'emilio.pena@mail.com', 1, 'pass047'),
('80900113E', 'Arturo', 'Ponce', '600100057', 'arturo.ponce@mail.com', 1, 'pass057'),
('80900114O', 'Hector', 'Garrido', '600100067', 'hector.garrido@mail.com', 1, 'pass067'),
('80900115Y', 'Leandro', 'Velez', '600100077', 'leandro.velez@mail.com', 1, 'pass077'),
('80900116I', 'Matias', 'Tovar', '600100087', 'matias.tovar@mail.com', 1, 'pass087'),
('80900117S', 'Aurelio', 'Naranjo', '600100097', 'aurelio.naranjo@mail.com', 1, 'pass097'),
('88990011R', 'Sara', 'Navarro', '600100018', 'sara.navarro@mail.com', 0, 'pass018'),
('89012345H', 'Sofia', 'Ruiz', '600100008', 'sofia.ruiz@mail.com', 0, 'pass008'),
('90123456I', 'Miguel', 'Perez', '600100009', 'miguel.perez@mail.com', 0, 'pass009'),
('91011222B', 'Beatriz', 'Gil', '600100028', 'beatriz.gil@mail.com', 0, 'pass028'),
('91011222L', 'Claudia', 'Cabrera', '600100038', 'claudia.cabrera@mail.com', 0, 'pass038'),
('91011223V', 'Gloria', 'Prieto', '600100048', 'gloria.prieto@mail.com', 0, 'pass048'),
('91011224F', 'Victoria', 'Soto', '600100058', 'victoria.soto@mail.com', 0, 'pass058'),
('91011225P', 'Teresa', 'Hidalgo', '600100068', 'teresa.hidalgo@mail.com', 0, 'pass068'),
('91011226Z', 'Remedios', 'Barrera', '600100078', 'remedios.barrera@mail.com', 0, 'pass078'),
('91011227J', 'Antonia', 'Salinas', '600100088', 'antonia.salinas@mail.com', 0, 'pass088'),
('91011228T', 'Josefina', 'Osuna', '600100098', 'josefina.osuna@mail.com', 0, 'pass098'),
('99001122S', 'Andres', 'Gutierrez', '600100019', 'andres.gutierrez@mail.com', 0, 'pass019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `cod_reserva` int(11) NOT NULL,
  `cif_empresa` varchar(9) NOT NULL,
  `dni_persona` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`cod_reserva`, `cif_empresa`, `dni_persona`) VALUES
(1, 'A00000001', '12345678A'),
(2, 'A00000002', '23456789B'),
(3, 'A00000003', '34567890C'),
(4, 'A00000004', '45678901D'),
(5, 'A00000005', '56789012E'),
(6, 'A00000006', '67890123F'),
(7, 'A00000007', '78901234G'),
(8, 'A00000008', '89012345H'),
(9, 'A00000009', '90123456I'),
(10, 'A00000010', '01234567J'),
(11, 'A00000011', '11223344K'),
(12, 'A00000012', '22334455L'),
(13, 'A00000013', '33445566M'),
(14, 'A00000014', '44556677N'),
(15, 'A00000015', '55667788O'),
(16, 'A00000016', '66778899P'),
(17, 'A00000017', '77889900Q'),
(18, 'A00000018', '88990011R'),
(19, 'A00000019', '99001122S'),
(20, 'A00000020', '10203040T'),
(21, 'A00000021', '20304050U'),
(22, 'A00000022', '30405060V'),
(23, 'A00000023', '40506070W'),
(24, 'A00000024', '50607080X'),
(25, 'A00000025', '60708090Y'),
(26, 'A00000026', '70809000Z'),
(27, 'A00000027', '80900111A'),
(28, 'A00000028', '91011222B'),
(29, 'A00000029', '02122333C'),
(30, 'A00000030', '13233444D'),
(31, 'A00000031', '24344555E'),
(32, 'A00000032', '35455666F'),
(33, 'A00000033', '46566777G'),
(34, 'A00000034', '57677888H'),
(35, 'A00000035', '68788999I'),
(36, 'A00000036', '79899000J'),
(37, 'A00000037', '80900111K'),
(38, 'A00000038', '91011222L'),
(39, 'A00000039', '02122333M'),
(40, 'A00000040', '13233444N'),
(41, 'A00000041', '24344555O'),
(42, 'A00000042', '35455666P'),
(43, 'A00000043', '46566777Q'),
(44, 'A00000044', '57677888R'),
(45, 'A00000045', '68788999S'),
(46, 'A00000046', '79899000T'),
(47, 'A00000047', '80900112U'),
(48, 'A00000048', '91011223V'),
(49, 'A00000049', '02122334W'),
(50, 'A00000050', '13233445X'),
(51, 'A00000051', '24344556Y'),
(52, 'A00000052', '35455667Z'),
(53, 'A00000053', '46566778A'),
(54, 'A00000054', '57677889B'),
(55, 'A00000055', '68788990C'),
(56, 'A00000056', '79899001D'),
(57, 'A00000057', '80900113E'),
(58, 'A00000058', '91011224F'),
(59, 'A00000059', '02122335G'),
(60, 'A00000060', '13233446H'),
(61, 'A00000061', '24344557I'),
(62, 'A00000062', '35455668J'),
(63, 'A00000063', '46566779K'),
(64, 'A00000064', '57677890L'),
(65, 'A00000065', '68788991M'),
(66, 'A00000066', '79899002N'),
(67, 'A00000067', '80900114O'),
(68, 'A00000068', '91011225P'),
(69, 'A00000069', '02122336Q'),
(70, 'A00000070', '13233447R'),
(71, 'A00000071', '24344558S'),
(72, 'A00000072', '35455669T'),
(73, 'A00000073', '46566780U'),
(74, 'A00000074', '57677891V'),
(75, 'A00000075', '68788992W'),
(76, 'A00000076', '79899003X'),
(77, 'A00000077', '80900115Y'),
(78, 'A00000078', '91011226Z'),
(79, 'A00000079', '02122337A'),
(80, 'A00000080', '13233448B'),
(81, 'A00000081', '24344559C'),
(82, 'A00000082', '35455670D'),
(83, 'A00000083', '46566781E'),
(84, 'A00000084', '57677892F'),
(85, 'A00000085', '68788993G'),
(86, 'A00000086', '79899004H'),
(87, 'A00000087', '80900116I'),
(88, 'A00000088', '91011227J'),
(89, 'A00000089', '02122338K'),
(90, 'A00000090', '13233449L'),
(91, 'A00000091', '24344560M'),
(92, 'A00000092', '35455671N'),
(93, 'A00000093', '46566782O'),
(94, 'A00000094', '57677893P'),
(95, 'A00000095', '68788994Q'),
(96, 'A00000096', '79899005R'),
(97, 'A00000097', '80900117S'),
(98, 'A00000098', '91011228T'),
(99, 'A00000099', '02122339U'),
(100, 'A00000100', '13233450V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencia`
--

CREATE TABLE `sugerencia` (
  `id_sugerencia` int(11) NOT NULL,
  `dni_persona` varchar(9) NOT NULL,
  `nombre_persona` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sugerencia`
--

INSERT INTO `sugerencia` (`id_sugerencia`, `dni_persona`, `nombre_persona`, `mail`, `descripcion`, `fecha_creacion`) VALUES
(1, '12345678A', 'Carlos', 'carlos.garcia@mail.com', 'Mejorar el sistema de reservas online', '2024-01-05'),
(2, '23456789B', 'Maria', 'maria.lopez@mail.com', 'Ainadir mas idiomas a la plataforma', '2024-01-06'),
(3, '34567890C', 'Jose', 'jose.martinez@mail.com', 'Incluir reseinas de usuarios verificados', '2024-01-07'),
(4, '45678901D', 'Ana', 'ana.sanchez@mail.com', 'Ofrecer descuentos para grupos', '2024-01-08'),
(5, '56789012E', 'Luis', 'luis.fernandez@mail.com', 'Implementar pagos con criptomonedas', '2024-01-09'),
(6, '67890123F', 'Laura', 'laura.gonzalez@mail.com', 'Mejorar el diseino de la app movil', '2024-01-10'),
(7, '78901234G', 'Pedro', 'pedro.diaz@mail.com', 'Ainadir filtros de busqueda avanzados', '2024-01-11'),
(8, '89012345H', 'Sofia', 'sofia.ruiz@mail.com', 'Crear un programa de fidelizacion', '2024-01-12'),
(9, '90123456I', 'Miguel', 'miguel.perez@mail.com', 'Incluir guias en formato de audio', '2024-01-13'),
(10, '01234567J', 'Elena', 'elena.torres@mail.com', 'Ofrecer excursiones nocturnas', '2024-01-14'),
(11, '11223344K', 'Pablo', 'pablo.ramirez@mail.com', 'Ainadir mas opciones gastronomicas', '2024-01-15'),
(12, '22334455L', 'Isabel', 'isabel.flores@mail.com', 'Mejorar la atencion al cliente', '2024-01-16'),
(13, '33445566M', 'David', 'david.moreno@mail.com', 'Crear excursiones accesibles para discapacitados', '2024-01-17'),
(14, '44556677N', 'Carmen', 'carmen.jimenez@mail.com', 'Incluir seguros de viaje opcionales', '2024-01-18'),
(15, '55667788O', 'Javier', 'javier.alvarez@mail.com', 'Ainadir realidad aumentada en las visitas', '2024-01-19'),
(16, '66778899P', 'Lucia', 'lucia.romero@mail.com', 'Crear visitas tematicas de historia', '2024-01-20'),
(17, '77889900Q', 'Marcos', 'marcos.alonso@mail.com', 'Mejorar la gestion de cancelaciones', '2024-01-21'),
(18, '88990011R', 'Sara', 'sara.navarro@mail.com', 'Ofrecer paquetes para familias', '2024-01-22'),
(19, '99001122S', 'Andres', 'andres.gutierrez@mail.com', 'Ainadir tours fotograficos especializados', '2024-01-23'),
(20, '10203040T', 'Patricia', 'patricia.molina@mail.com', 'Crear una seccion de preguntas frecuentes', '2024-01-24'),
(21, '20304050U', 'Roberto', 'roberto.serrano@mail.com', 'Incluir tours de naturaleza y senderismo', '2024-01-25'),
(22, '30405060V', 'Marta', 'marta.morales@mail.com', 'Mejorar las notificaciones push', '2024-01-26'),
(23, '40506070W', 'Fernando', 'fernando.ortega@mail.com', 'Ainadir tours de arquitectura moderna', '2024-01-27'),
(24, '50607080X', 'Cristina', 'cristina.delgado@mail.com', 'Crear guias especializadas para niinos', '2024-01-28'),
(25, '60708090Y', 'Antonio', 'antonio.castro@mail.com', 'Ofrecer tours privados personalizados', '2024-01-29'),
(26, '70809000Z', 'Nuria', 'nuria.vazquez@mail.com', 'Incluir visitas virtuales previas', '2024-01-30'),
(27, '80900111A', 'Raul', 'raul.ramos@mail.com', 'Mejorar el sistema de chat en vivo', '2024-02-01'),
(28, '91011222B', 'Beatriz', 'beatriz.gil@mail.com', 'Ainadir certificados de participacion', '2024-02-02'),
(29, '02122333C', 'Enrique', 'enrique.munoz@mail.com', 'Crear tours de gastronomia local', '2024-02-03'),
(30, '13233444D', 'Veronica', 'veronica.iglesias@mail.com', 'Incluir tours de arte urbano', '2024-02-04'),
(31, '24344555E', 'Alvaro', 'alvaro.medina@mail.com', 'Mejorar la politica de reembolsos', '2024-02-05'),
(32, '35455666F', 'Natalia', 'natalia.santos@mail.com', 'Ainadir opciones veganas en tours gastronomicos', '2024-02-06'),
(33, '46566777G', 'Diego', 'diego.blanco@mail.com', 'Crear una comunidad de viajeros', '2024-02-07'),
(34, '57677888H', 'Ines', 'ines.herrera@mail.com', 'Incluir tours de flamenco en Sevilla', '2024-02-08'),
(35, '68788999I', 'Sergio', 'sergio.aguilar@mail.com', 'Mejorar la sincronizacion con calendarios', '2024-02-09'),
(36, '79899000J', 'Alicia', 'alicia.rios@mail.com', 'Ainadir tours de tiendas locales', '2024-02-10'),
(37, '80900111K', 'Hugo', 'hugo.vargas@mail.com', 'Crear tours de cine y television', '2024-02-11'),
(38, '91011222L', 'Claudia', 'claudia.cabrera@mail.com', 'Incluir tours de deportes extremos', '2024-02-12'),
(39, '02122333M', 'Guillermo', 'guillermo.reyes@mail.com', 'Mejorar la accesibilidad web', '2024-02-13'),
(40, '13233444N', 'Adriana', 'adriana.cruz@mail.com', 'Ainadir mas destinos rurales', '2024-02-14'),
(41, '24344555O', 'Ivan', 'ivan.lara@mail.com', 'Crear tours musicales en vivo', '2024-02-15'),
(42, '35455666P', 'Silvia', 'silvia.mendoza@mail.com', 'Incluir informacion de transporte local', '2024-02-16'),
(43, '46566777Q', 'Tomas', 'tomas.guerrero@mail.com', 'Mejorar las descripciones de los tours', '2024-02-17'),
(44, '57677888R', 'Rosa', 'rosa.fuentes@mail.com', 'Ainadir tours de astronomia nocturna', '2024-02-18'),
(45, '68788999S', 'Ernesto', 'ernesto.leon@mail.com', 'Crear tours de surf y deportes acuaticos', '2024-02-19'),
(46, '79899000T', 'Pilar', 'pilar.marin@mail.com', 'Incluir tours de yoga y meditacion', '2024-02-20'),
(47, '80900112U', 'Emilio', 'emilio.pena@mail.com', 'Mejorar la carga de imagenes en la app', '2024-02-21'),
(48, '91011223V', 'Gloria', 'gloria.prieto@mail.com', 'Ainadir tours de bodegas y vinos', '2024-02-22'),
(49, '02122334W', 'Oscar', 'oscar.cano@mail.com', 'Crear tours de fotografia de naturaleza', '2024-02-23'),
(50, '13233445X', 'Rebeca', 'rebeca.pascual@mail.com', 'Incluir tours de arqueologia', '2024-02-24'),
(51, '24344556Y', 'Gonzalo', 'gonzalo.nieto@mail.com', 'Mejorar los mapas interactivos', '2024-02-25'),
(52, '35455667Z', 'Lorena', 'lorena.calvo@mail.com', 'Ainadir tours de ciclismo urbano', '2024-02-26'),
(53, '46566778A', 'Nicolas', 'nicolas.vega@mail.com', 'Crear tours de mercados tradicionales', '2024-02-27'),
(54, '57677889B', 'Monica', 'monica.cortes@mail.com', 'Incluir tours de talleres artesanales', '2024-02-28'),
(55, '68788990C', 'Rafael', 'rafael.ibanez@mail.com', 'Mejorar el sistema de valoraciones', '2024-03-01'),
(56, '79899001D', 'Eva', 'eva.rubio@mail.com', 'Ainadir tours de escalada y montainismo', '2024-03-02'),
(57, '80900113E', 'Arturo', 'arturo.ponce@mail.com', 'Crear tours de observacion de aves', '2024-03-03'),
(58, '91011224F', 'Victoria', 'victoria.soto@mail.com', 'Incluir tours de literatura y libros', '2024-03-04'),
(59, '02122335G', 'Jorge', 'jorge.campos@mail.com', 'Mejorar las alertas de cambios en el tour', '2024-03-05'),
(60, '13233446H', 'Esperanza', 'esperanza.luna@mail.com', 'Ainadir tours de ceramica y alfareria', '2024-03-06'),
(61, '24344557I', 'Ignacio', 'ignacio.bravo@mail.com', 'Crear tours de senderismo nocturno', '2024-03-07'),
(62, '35455668J', 'Dolores', 'dolores.gallardo@mail.com', 'Incluir tours de cocina tradicional', '2024-03-08'),
(63, '46566779K', 'Rodrigo', 'rodrigo.ortiz@mail.com', 'Mejorar la funcion de busqueda por mapa', '2024-03-09'),
(64, '57677890L', 'Miriam', 'miriam.dominguez@mail.com', 'Ainadir tours para mascotas', '2024-03-10'),
(65, '68788991M', 'Alberto', 'alberto.crespo@mail.com', 'Crear tours de pinturas rupestres', '2024-03-11'),
(66, '79899002N', 'Noelia', 'noelia.parra@mail.com', 'Incluir tours de jardines botanicos', '2024-03-12'),
(67, '80900114O', 'Hector', 'hector.garrido@mail.com', 'Mejorar las listas de deseos guardadas', '2024-03-13'),
(68, '91011225P', 'Teresa', 'teresa.hidalgo@mail.com', 'Ainadir tours de tapas y bares historicos', '2024-03-14'),
(69, '02122336Q', 'Ruben', 'ruben.montero@mail.com', 'Crear tours de pesca tradicional', '2024-03-15'),
(70, '13233447R', 'Amparo', 'amparo.nunez@mail.com', 'Incluir tours de museos cientificos', '2024-03-16'),
(71, '24344558S', 'Sebastian', 'sebastian.carrasco@mail.com', 'Mejorar la experiencia de pago movil', '2024-03-17'),
(72, '35455669T', 'Consuelo', 'consuelo.moya@mail.com', 'Ainadir tours de baile regional', '2024-03-18'),
(73, '46566780U', 'Angel', 'angel.pedraza@mail.com', 'Crear tours de historia medieval', '2024-03-19'),
(74, '57677891V', 'Marisol', 'marisol.duran@mail.com', 'Incluir tours de parques tematicos', '2024-03-20'),
(75, '68788992W', 'Joaquin', 'joaquin.mellado@mail.com', 'Mejorar las opciones de idioma del guia', '2024-03-21'),
(76, '79899003X', 'Aurora', 'aurora.espinosa@mail.com', 'Ainadir tours de termas y balnearios', '2024-03-22'),
(77, '80900115Y', 'Leandro', 'leandro.velez@mail.com', 'Crear tours de glaciares y nieve', '2024-03-23'),
(78, '91011226Z', 'Remedios', 'remedios.barrera@mail.com', 'Incluir tours de palacios y castillos', '2024-03-24'),
(79, '02122337A', 'Francisco', 'francisco.chavez@mail.com', 'Mejorar las fotos del catalogo de tours', '2024-03-25'),
(80, '13233448B', 'Irene', 'irene.espejo@mail.com', 'Ainadir tours de cuevas y espeleologia', '2024-03-26'),
(81, '24344559C', 'Cesar', 'cesar.montes@mail.com', 'Crear tours de puesta de sol en el mar', '2024-03-27'),
(82, '35455670D', 'Yolanda', 'yolanda.palomino@mail.com', 'Incluir tours de huertos ecologicos', '2024-03-28'),
(83, '46566781E', 'Alejandro', 'alejandro.herrero@mail.com', 'Mejorar la gestion de grupos grandes', '2024-03-29'),
(84, '57677892F', 'Manuela', 'manuela.aranda@mail.com', 'Ainadir tours de festivales locales', '2024-03-30'),
(85, '68788993G', 'Victor', 'victor.carmona@mail.com', 'Crear tours de molinos de viento', '2024-04-01'),
(86, '79899004H', 'Elisa', 'elisa.osorio@mail.com', 'Incluir tours de mercados navideinos', '2024-04-02'),
(87, '80900116I', 'Matias', 'matias.tovar@mail.com', 'Mejorar la integracion con redes sociales', '2024-04-03'),
(88, '91011227J', 'Antonia', 'antonia.salinas@mail.com', 'Ainadir tours de parques naturales', '2024-04-04'),
(89, '02122338K', 'Damian', 'damian.bernal@mail.com', 'Crear tours de astilleros historicos', '2024-04-05'),
(90, '13233449L', 'Rosario', 'rosario.vergara@mail.com', 'Incluir tours de fuentes termales', '2024-04-06'),
(91, '24344560M', 'Manuel', 'manuel.acosta@mail.com', 'Mejorar los tiempos de carga de la app', '2024-04-07'),
(92, '35455671N', 'Trinidad', 'trinidad.borja@mail.com', 'Ainadir tours de vestigios romanos', '2024-04-08'),
(93, '46566782O', 'Nicolas', 'nicolas.merino@mail.com', 'Crear tours de pueblos con encanto', '2024-04-09'),
(94, '57677893P', 'Concepcion', 'concepcion.quijano@mail.com', 'Incluir tours de plazas mayores', '2024-04-10'),
(95, '68788994Q', 'Simon', 'simon.alarcon@mail.com', 'Mejorar el proceso de check-in digital', '2024-04-11'),
(96, '79899005R', 'Fatima', 'fatima.bautista@mail.com', 'Ainadir tours de cofradias de Semana Santa', '2024-04-12'),
(97, '80900117S', 'Aurelio', 'aurelio.naranjo@mail.com', 'Crear tours de fabricas historicas', '2024-04-13'),
(98, '91011228T', 'Josefina', 'josefina.osuna@mail.com', 'Incluir tours de gastronomia marina', '2024-04-14'),
(99, '02122339U', 'Esteban', 'esteban.gallego@mail.com', 'Mejorar las estadisticas de mis reservas', '2024-04-15'),
(100, '13233450V', 'Mercedes', 'mercedes.garrote@mail.com', 'Ainadir tours de ruta del vino DO', '2024-04-16');

--
-- Disparadores `sugerencia`
--
DELIMITER $$
CREATE TRIGGER `borrar_sugerencia` AFTER DELETE ON `sugerencia` FOR EACH ROW BEGIN
    INSERT INTO Historicos_borrados (tabla_afectada, fecha_modificacion, datos_anteriores)
    VALUES ('Sugerencia', CURDATE(), CONCAT('id=', OLD.id_sugerencia, ' | ', 'dni=', OLD.dni_persona, ' | ', 'nombre=', OLD.nombre_persona, ' | ', 'mail=', OLD.mail, ' | ', 'descripcion=', OLD.descripcion, ' | ', 'fecha_creacion=', OLD.fecha_creacion));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `modificar_sugerencia` AFTER UPDATE ON `sugerencia` FOR EACH ROW BEGIN
    INSERT INTO Historicos_modificados (tabla_afectada, fecha_modificacion, datos_anteriores)
    VALUES ('Sugerencia', CURDATE(), CONCAT('id=', OLD.id_sugerencia, ' | ', 'dni=', OLD.dni_persona, ' | ', 'nombre=', OLD.nombre_persona, ' | ', 'mail=', OLD.mail, ' | ', 'descripcion=', OLD.descripcion, ' | ', 'fecha_creacion=', OLD.fecha_creacion));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visita`
--

CREATE TABLE `visita` (
  `cod_reserva` int(11) NOT NULL,
  `cod_identificacion` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `jubilado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `visita`
--

INSERT INTO `visita` (`cod_reserva`, `cod_identificacion`, `nombre`, `descripcion`, `jubilado`) VALUES
(1, 'VIS-0001', 'Museo del Prado', 'Visita guiada a las salas principales del Prado', 0),
(2, 'VIS-0002', 'Barrio Gotico', 'Recorrido por las calles medievales de Barcelona', 1),
(3, 'VIS-0003', 'Catedral de Sevilla', 'Tour interior de la catedral gotica mas grande', 0),
(4, 'VIS-0004', 'Ciudad de las Artes', 'Visita al complejo arquitectonico de Calatrava', 1),
(5, 'VIS-0005', 'Museo Guggenheim', 'Recorrido por el iconico museo de arte moderno', 0),
(6, 'VIS-0006', 'La Alhambra', 'Tour por los palacios nazaries y jardines', 1),
(7, 'VIS-0007', 'Catedral de Toledo', 'Visita al tesoro y capilla mayor', 0),
(8, 'VIS-0008', 'Centro Historico Malaga', 'Recorrido por el patrimonio malagueino', 1),
(9, 'VIS-0009', 'Basilica del Pilar', 'Tour por la basilica y el museo', 0),
(10, 'VIS-0010', 'Universidad de Salamanca', 'Visita a los patios y biblioteca historica', 1),
(11, 'VIS-0011', 'Mezquita-Catedral', 'Recorrido por las naves y el patio de los naranjos', 0),
(12, 'VIS-0012', 'Castillo Santa Barbara', 'Tour por el castillo con vistas al mar', 1),
(13, 'VIS-0013', 'Encierros San Fermin', 'Ruta por el recorrido historico del encierro', 0),
(14, 'VIS-0014', 'Catedral de Palma', 'Visita a la Seu y jardines del palacio', 1),
(15, 'VIS-0015', 'Vegueta Las Palmas', 'Tour por el casco historico canario', 0),
(16, 'VIS-0016', 'Volcan Teide', 'Excursion al pico mas alto de Espaina', 1),
(17, 'VIS-0017', 'Parte Vieja Donostia', 'Paseo por los bares y monumentos', 0),
(18, 'VIS-0018', 'Acueducto de Segovia', 'Visita al acueducto romano mejor conservado', 1),
(19, 'VIS-0019', 'Murallas de Cadiz', 'Recorrido historico por la ciudad mas antigua', 0),
(20, 'VIS-0020', 'Catedral de Murcia', 'Tour por la catedral barroca murciana', 1),
(21, 'VIS-0021', 'Museos Valladolid', 'Visita al Museo Nacional de Escultura', 0),
(22, 'VIS-0022', 'Paseo Maritimo Santander', 'Recorrido costero y palacio de La Magdalena', 1),
(23, 'VIS-0023', 'Casco Antiguo Oviedo', 'Tour por la catedral y monumentos prerromanicos', 0),
(24, 'VIS-0024', 'Catedral de Burgos', 'Visita a la catedral gotica y el Cid', 1),
(25, 'VIS-0025', 'Catedral de Leon', 'Tour por las vidrieras medievales', 0),
(26, 'VIS-0026', 'Ruta del Vino Rioja', 'Visita a bodegas y viinedos de La Rioja', 1),
(27, 'VIS-0027', 'Torre de Hercules', 'Tour por el faro romano en activo', 0),
(28, 'VIS-0028', 'Catedral Santiago', 'Visita a la catedral y plaza del Obradoiro', 1),
(29, 'VIS-0029', 'Minas de Riotinto', 'Tour por el paisaje minero historico', 0),
(30, 'VIS-0030', 'Olivares Jaen', 'Recorrido por almazaras tradicionales', 1),
(31, 'VIS-0031', 'Desierto Tabernas', 'Tour por el unico desierto de Europa', 0),
(32, 'VIS-0032', 'Merida Romana', 'Visita al teatro y anfiteatro romanos', 1),
(33, 'VIS-0033', 'Casas Colgadas Cuenca', 'Tour por el casco historico y el MARTE', 0),
(34, 'VIS-0034', 'Museo Cuchilleria', 'Visita al museo artesanal de Albacete', 1),
(35, 'VIS-0035', 'Molinos de Viento', 'Tour por los molinos manchegos del Quijote', 0),
(36, 'VIS-0036', 'Zona Monumental Pontevedra', 'Recorrido por la ciudad peatonal', 1),
(37, 'VIS-0037', 'Islas Cies', 'Excursion a las Islas Atlanticas de Galicia', 0),
(38, 'VIS-0038', 'Seu Vella de Lleida', 'Tour por la catedral en la colina', 1),
(39, 'VIS-0039', 'Girona Medieval', 'Recorrido por murallas y juderia', 0),
(40, 'VIS-0040', 'Tarraco Romana', 'Tour por el anfiteatro y circo romano', 1),
(41, 'VIS-0041', 'Dalt Vila Ibiza', 'Visita a la ciudad amurallada de Ibiza', 0),
(42, 'VIS-0042', 'Talayots de Menorca', 'Tour por los monumentos prehistoricos', 1),
(43, 'VIS-0043', 'Dunas de Corralejo', 'Excursion por el parque natural dunario', 0),
(44, 'VIS-0044', 'Timanfaya', 'Tour por los volcanes de Lanzarote', 1),
(45, 'VIS-0045', 'Murallas de Ceuta', 'Recorrido por la muralla defensiva', 0),
(46, 'VIS-0046', 'Casco Historico Melilla', 'Visita al conjunto arquitectonico modernista', 1),
(47, 'VIS-0047', 'Palacio Infantado', 'Visita al palacio renacentista de Guadalajara', 0),
(48, 'VIS-0048', 'Torres Mudejares', 'Tour por el patrimonio mudejar de Teruel', 1),
(49, 'VIS-0049', 'Ordesa y Monte Perdido', 'Excursion al parque nacional pirenaico', 0),
(50, 'VIS-0050', 'Casco Monumental Caceres', 'Recorrido por la ciudad medieval extremeina', 1),
(51, 'VIS-0051', 'Muralla de Avila', 'Paseo por el adarve de la muralla', 0),
(52, 'VIS-0052', 'Yacimiento Numancia', 'Visita a las ruinas celtiberas sorianas', 1),
(53, 'VIS-0053', 'Iglesias Romanicas', 'Tour por el romanico urbano de Zamora', 0),
(54, 'VIS-0054', 'Catedral de Palencia', 'Visita a la Bella Desconocida', 1),
(55, 'VIS-0055', 'Termas de Ourense', 'Recorrido por las pozas y termas naturales', 0),
(56, 'VIS-0056', 'Muralla de Lugo', 'Paseo por la muralla romana completa', 1),
(57, 'VIS-0057', 'Arsenal Militar', 'Visita historica al Ferrol ilustrado', 0),
(58, 'VIS-0058', 'Bodegas de Jerez', 'Tour y cata en bodegas tradicionales', 1),
(59, 'VIS-0059', 'Tajo de Ronda', 'Visita al puente nuevo y barrancos', 0),
(60, 'VIS-0060', 'Casco Antiguo Marbella', 'Recorrido por la Plaza de los Naranjos', 1),
(61, 'VIS-0061', 'Sierra Helada', 'Ruta de senderismo con vistas al mar', 0),
(62, 'VIS-0062', 'Turismo Torremolinos', 'Paseo por la calle San Miguel y playas', 1),
(63, 'VIS-0063', 'Museos Sitges', 'Visita al Cau Ferrat y Maricel', 0),
(64, 'VIS-0064', 'Mercado de Vic', 'Recorrido por la plaza mayor y mercado', 1),
(65, 'VIS-0065', 'Seu de Manresa', 'Visita a la colegiata gotica', 0),
(66, 'VIS-0066', 'Desierto Las Palmas', 'Ruta por el parque natural castellonense', 1),
(67, 'VIS-0067', 'Palau dels Borja', 'Visita al palacio ducal de Gandia', 0),
(68, 'VIS-0068', 'Palmeral de Elche', 'Paseo por el patrimonio de la UNESCO', 1),
(69, 'VIS-0069', 'Carthago Nova', 'Visita al teatro romano de Cartagena', 0),
(70, 'VIS-0070', 'Teatro de Merida', 'Recorrido por el teatro y anfiteatro', 1),
(71, 'VIS-0071', 'Catedral de Plasencia', 'Tour por la catedral vieja y nueva', 0),
(72, 'VIS-0072', 'Ruta Conquistadores', 'Visita a la plaza mayor de Trujillo', 1),
(73, 'VIS-0073', 'Jardines Aranjuez', 'Paseo por el jardin de la Isla y el Principe', 0),
(74, 'VIS-0074', 'Ruta de Cervantes', 'Visita a la casa natal de Cervantes', 1),
(75, 'VIS-0075', 'Monasterio Escorial', 'Tour por el panteon de reyes y biblioteca', 0),
(76, 'VIS-0076', 'Anillo Verde Vitoria', 'Ruta por los humedales de Salburua', 1),
(77, 'VIS-0077', 'Casco Baiona', 'Paseo por la villa marinera y parador', 0),
(78, 'VIS-0078', 'Catedral de Tui', 'Visita a la catedral fortaleza', 1),
(79, 'VIS-0079', 'Baeza Renacentista', 'Tour por la fuente de Santa Maria', 0),
(80, 'VIS-0080', 'Ubeda Monumental', 'Visita a la sacra capilla del Salvador', 1),
(81, 'VIS-0081', 'Barroco de Priego', 'Ruta por las iglesias y el barrio de la Villa', 0),
(82, 'VIS-0082', 'Dolmenes Antequera', 'Visita a Menga, Viera y El Romeral', 1),
(83, 'VIS-0083', 'Cuevas de Nerja', 'Tour por la catedral de la prehistoria', 0),
(84, 'VIS-0084', 'Pueblo Blanco Frigiliana', 'Recorrido por el casco mudejar', 1),
(85, 'VIS-0085', 'Arcos Frontera', 'Tour por el mirador de la peina', 0),
(86, 'VIS-0086', 'Casco de Vejer', 'Paseo por las calles encaladas', 1),
(87, 'VIS-0087', 'Sierra de Cadiz', 'Ruta por Zahara y Grazalema', 0),
(88, 'VIS-0088', 'Parque Grazalema', 'Tour por el bosque de pinsapos', 1),
(89, 'VIS-0089', 'Carmona Romana', 'Visita a la necropolis y el alcazar', 0),
(90, 'VIS-0090', 'Torres de Ecija', 'Recorrido por la ciudad de las torres', 1),
(91, 'VIS-0091', 'Colegiata Osuna', 'Visita al panteon ducal', 0),
(92, 'VIS-0092', 'Medina Azahara', 'Tour por la ciudad brillante de Abderraman', 1),
(93, 'VIS-0093', 'Italica', 'Visita al anfiteatro y mosaicos', 0),
(94, 'VIS-0094', 'Parque Doinana', 'Excursion en 4x4 por las dunas', 1),
(95, 'VIS-0095', 'Sierra Nevada', 'Jornada de nieve y montaina', 0),
(96, 'VIS-0096', 'Alpujarra', 'Ruta por Lanjaron y Pampaneira', 1),
(97, 'VIS-0097', 'Cabo de Gata', 'Visita al arrecife de las sirenas', 0),
(98, 'VIS-0098', 'Desierto Tabernas', 'Recorrido por decorados de pelicula', 1),
(99, 'VIS-0099', 'Alcazar Jerez', 'Tour por la fortaleza almohade', 0),
(100, 'VIS-0100', 'Camino Santiago', 'Llegada a la plaza del Obradoiro', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cif`);

--
-- Indices de la tabla `excursion`
--
ALTER TABLE `excursion`
  ADD PRIMARY KEY (`cod_reserva`);

--
-- Indices de la tabla `historicos_borrados`
--
ALTER TABLE `historicos_borrados`
  ADD PRIMARY KEY (`identificador_accion`);

--
-- Indices de la tabla `historicos_modificados`
--
ALTER TABLE `historicos_modificados`
  ADD PRIMARY KEY (`identificador_accion`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`cod_reserva`),
  ADD KEY `fk_res_persona` (`dni_persona`),
  ADD KEY `fk_res_empresa` (`cif_empresa`);

--
-- Indices de la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  ADD PRIMARY KEY (`id_sugerencia`),
  ADD KEY `fk_sug_persona` (`dni_persona`);

--
-- Indices de la tabla `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`cod_reserva`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historicos_borrados`
--
ALTER TABLE `historicos_borrados`
  MODIFY `identificador_accion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historicos_modificados`
--
ALTER TABLE `historicos_modificados`
  MODIFY `identificador_accion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `cod_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  MODIFY `id_sugerencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `excursion`
--
ALTER TABLE `excursion`
  ADD CONSTRAINT `fk_exc_reserva` FOREIGN KEY (`cod_reserva`) REFERENCES `reserva` (`cod_reserva`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_res_empresa` FOREIGN KEY (`cif_empresa`) REFERENCES `empresa` (`cif`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_res_persona` FOREIGN KEY (`dni_persona`) REFERENCES `persona` (`dni`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `sugerencia`
--
ALTER TABLE `sugerencia`
  ADD CONSTRAINT `fk_sug_persona` FOREIGN KEY (`dni_persona`) REFERENCES `persona` (`dni`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `visita`
--
ALTER TABLE `visita`
  ADD CONSTRAINT `fk_vis_excursion` FOREIGN KEY (`cod_reserva`) REFERENCES `excursion` (`cod_reserva`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
