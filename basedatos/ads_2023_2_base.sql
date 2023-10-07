-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2023 a las 02:08:57
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ads_2023_2_base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `idcategoria` int(5) NOT NULL COMMENT 'Identificador de la tabla Categoría',
  `nombre` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Categoría',
  `descripcion` varchar(250) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Descripción de la categoría',
  `fecha_hora_sistema` timestamp NULL DEFAULT current_timestamp() COMMENT 'Fecha y hora del sistema al momento de registrar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Categoría de Productos';

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`idcategoria`, `nombre`, `descripcion`, `fecha_hora_sistema`) VALUES
(1, 'Servicios de Transporte', 'Camiones y vehículos de transporte.\r\nCombustible y mantenimiento de flota.\r\nSeguros de transporte de mercancías.', '2023-09-03 19:50:22'),
(2, 'Materiales de Embalaje', 'Cajas de cartón de varios tamaños.\r\nPapel de embalaje y envoltura de burbujas.\r\nCintas adhesivas y etiquetas.', '2023-09-03 19:50:22'),
(3, 'Equipos de Manipulación', 'Carretillas y carros de mano.\r\nElevadores y montacargas.\r\nCorreas y arneses de carga.', '2023-09-03 19:50:22'),
(4, 'Personal de Trabajo', 'Conductores y operadores de vehículos.\r\nEquipo de carga y descarga.\r\nPersonal de embalaje y desembalaje.', '2023-09-03 19:50:22'),
(5, 'Almacenamiento Temporal', 'Almacenes o depósitos para almacenamiento temporal.\r\nSistemas de seguridad y vigilancia.\r\nEstanterías y paletas de almacenamiento.', '2023-09-03 19:50:22'),
(6, 'Tecnología y Software', 'Software de gestión de mudanzas y logística.\r\nEquipos de comunicación y seguimiento de flota.\r\nDispositivos de registro y facturación.', '2023-09-03 19:50:22'),
(7, 'Seguro y Responsabilidad Civil', 'Seguro de responsabilidad civil para la empresa.\r\nPólizas de seguro de mercancías y propiedad.\r\nSeguro de accidentes laborales.', '2023-09-03 19:50:22'),
(8, 'Material de Oficina y Administ', 'Muebles de oficina y equipo informático.\r\nSuministros de oficina (papel, bolígrafos, etc.).\r\nSoftware de contabilidad y gestión financiera.', '2023-09-03 19:50:22'),
(9, 'Marketing y Publicidad', 'Diseño de logotipo y materiales de marca.\r\nPublicidad en línea y campañas de marketing.\r\nFolletos y material promocional.', '2023-09-03 19:50:22'),
(10, 'Entrenamiento y Certificacione', 'Capacitación para el personal en técnicas de embalaje y carga.\r\nCertificaciones de seguridad y cumplimiento normativo.\r\nEntrenamiento en servicio al cliente y gestión de quejas.', '2023-09-03 19:50:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_servicio`
--

CREATE TABLE `categoria_servicio` (
  `idservicio` int(5) NOT NULL COMMENT 'Identificador de la tabla Categoría',
  `nombre` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Nombre de la Categoría',
  `descripcion` varchar(250) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Descripción de la categoría',
  `fecha_hora_sistema` timestamp NULL DEFAULT current_timestamp() COMMENT 'Fecha y hora del sistema al momento de registrar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Categoría de Servicios';

--
-- Volcado de datos para la tabla `categoria_servicio`
--

INSERT INTO `categoria_servicio` (`idservicio`, `nombre`, `descripcion`, `fecha_hora_sistema`) VALUES
(1, 'Mudanzas residenciales', 'Servicios de mudanza para hogares y apartamentos, que incluyen el embalaje, carga, transporte y descarga de muebles y pertenencias personales.', '2022-09-18 05:02:33'),
(2, 'Mudanzas comerciales', 'Mudanzas diseñadas para empresas y oficinas, que implican trasladar equipos de oficina, archivos y mobiliario de oficina de un lugar a otro.', '2022-09-18 06:53:13'),
(3, 'Mudanzas internacionales', 'Servicios de mudanza que abarcan traslados a nivel internacional, que pueden requerir coordinación aduanal y transporte transfronterizo.', '2022-09-18 06:53:13'),
(4, 'Mudanzas a larga distancia', 'Mudanzas que involucran trasladar bienes a través de largas distancias dentro del mismo país, a menudo requieren planificación logística y coordinación.', '2022-09-18 06:54:03'),
(5, 'Mudanzas especializadas', 'Servicios para objetos o artículos que requieren un cuidado especial, como pianos, obras de arte, antigüedades, mascotas, o artículos frágiles.', '2022-09-18 06:54:03'),
(6, 'Mudanzas de oficina', 'Servicios enfocados en la reubicación de empresas, incluyendo la desconexión y reconexión de equipos y sistemas de comunicación.', '2022-09-18 06:55:05'),
(7, 'Mudanzas de mobiliario', 'Servicios que se centran únicamente en el transporte de muebles, ya sea para reubicarlos en una nueva residencia o entregarlos a un comprador.', '2022-09-18 06:55:05'),
(8, 'Mudanzas de carga pesada', 'Servicios diseñados para mover artículos extremadamente pesados o voluminosos, como maquinaria industrial, equipos de construcción o vehículos.', '2023-05-23 20:20:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(5) NOT NULL COMMENT 'Identificador de la tabla cliente',
  `tipo_persona` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'N: Natural, J: Juridico',
  `nombre` varchar(150) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Nombre del cliente',
  `tipo_documento` varchar(3) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'RUC; DNI; CE',
  `numero_documento` int(11) DEFAULT NULL COMMENT 'Nro. Documento DNI(8), RUC(11)',
  `direccion` varchar(150) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Dirección del cliente',
  `telefono` varchar(25) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Teléfonos del cliente, separados por comas',
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'correo electrónico del cliente',
  `estado` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'A: Activo; I:Inactivo',
  `fecha_hora_sistema` timestamp NULL DEFAULT current_timestamp() COMMENT 'YYYY-MM-DD HH:MM:SS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `tipo_persona`, `nombre`, `tipo_documento`, `numero_documento`, `direccion`, `telefono`, `correo`, `estado`, `fecha_hora_sistema`) VALUES
(1, 'N', 'Manuel Chávez Castro', 'DNI', 7963210, 'Jr. Jose Galvez 2000 - Lince', '987654321, (01)4235555', 'manuel@pucp.pe', 'A', '2022-08-31 04:24:47'),
(2, 'J', 'Pontificia Universidad Católica del Perú', 'RUC', 2147483647, 'Av. Riva Aguero 1313 - San Miguel', '(01)6035555', 'webmaster@pucp.pe', 'A', '2022-08-31 04:26:14'),
(3, 'N', 'David Allasi', 'DNI', 87654321, 'Av. Los Heroes 2000 - Miraflores', '965784321, (01)5435555', 'david@pucp.pe', 'A', '2022-08-31 04:28:32'),
(4, 'J', 'Grupo Interbank', 'RUC', 2147483647, 'Av. Lima 113 - San Isidro', '(01)7735555', 'webmaster@interbank.pe', 'A', '2022-08-31 04:28:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(5) NOT NULL COMMENT 'Identificador  de la tabla Producto',
  `idcategoria` int(5) DEFAULT NULL COMMENT 'Identificador de la tabla categoria producto',
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Nombre del Producto',
  `descripcion` varchar(250) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Descripción del Producto',
  `nombre_imagen` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Imagen del Producto',
  `codigo_barras` varchar(25) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Código de barras del producto',
  `stock` int(5) DEFAULT 0 COMMENT 'Stock del producto',
  `precio_compra` decimal(10,2) DEFAULT NULL COMMENT 'Precio del valor de compra del producto',
  `precio_venta` decimal(10,2) DEFAULT NULL COMMENT 'Precio del valor de venta del producto',
  `estado` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'A:Activo; I:Inactivo',
  `fecha_hora_sistema` timestamp NULL DEFAULT current_timestamp() COMMENT 'YYYY-MM-DD HH:MM:SS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena todos los productos de la tienda';

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `nombre`, `descripcion`, `nombre_imagen`, `codigo_barras`, `stock`, `precio_compra`, `precio_venta`, `estado`, `fecha_hora_sistema`) VALUES
(1, 1, 'Camioneta de Mudanza A0G-1023', 'Capacitada de 2 Toneladas', 'camioneta.png', '123456', 2, '80000.00', '80000.00', 'A', '2023-09-17 23:23:32'),
(2, 2, 'Cinta de embalaje 2x110', 'Esta cinta transparente es un accesorio ideal para que conserves en perfecto estado todos tus objetos al momento de embalarlos. Puede ser empleado para el sellado de cajas de cartón y bolsas plásticas.', 'cinta_embalaje.jpeg', '2354987', 100, '2.00', '2.00', 'A', '2023-09-19 21:22:01'),
(3, 5, 'Caja de cartón 50cm*50cm', 'Caja para mudanza de locales y domicilios', 'caja_carton.jpeg', '987546210354', 50, '1.20', '2.20', 'A', '2023-09-19 23:28:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(5) NOT NULL COMMENT 'Identificador de la tabla',
  `nombre` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Nombre',
  `apellido` varchar(30) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Apellido',
  `nombre_imagen` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Imagen del Usuario',
  `fecha_nacimiento` date DEFAULT NULL COMMENT 'YYYY-MM-DD',
  `perfil` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL COMMENT 'Perfiles de usuario [ADMIN / CONTA / COMERC / LOGIS / OPERA].',
  `correo` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'correo electrónico del usuario',
  `clave` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Password del usuario',
  `estado` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'A:Activo; I:Inactivo',
  `fecha_hora_sistema` timestamp NULL DEFAULT current_timestamp() COMMENT 'YYYY-MM-DD HH:MM:SS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `apellido`, `nombre_imagen`, `fecha_nacimiento`, `perfil`, `correo`, `clave`, `estado`, `fecha_hora_sistema`) VALUES
(1, 'Administrador', 'ERP', 'neo.jpg', '2000-07-24', 'ADMIN', 'admin@pucp.pe', '123456', 'A', '2022-08-28 06:43:03'),
(2, 'Maria', 'Gracia', 'avatar2.png', '2010-05-24', 'CONTA', 'contabilidad@pucp.pe', '123456', 'A', '2022-08-28 06:44:49'),
(3, 'Jorge Luis', 'Coronado Gálvez', 'keanu.jpeg', '2000-01-13', 'ADMIN', 'comercial@pucp.pe', '123456', 'A', '2022-08-30 10:00:00'),
(4, 'Fanny', 'Navarri', 'user7-128x128.jpg', '2002-11-10', 'LOGIS', 'logistica@pucp.pe', '123456', 'A', '2022-08-30 10:00:00'),
(5, 'Milagros', 'Lopez', 'avatar3.png', '2001-09-08', 'OPERA', 'operacion@pucp.pe', '123456', 'A', '2022-08-30 10:00:00'),
(7, 'Martin', 'Chavez', 'avatar.png', '2003-02-23', 'GPROY', 'martin@pucp.edu.pe', '123456', 'A', '2023-09-19 22:55:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(5) NOT NULL COMMENT 'Identificador de la tabla venta',
  `idusuario` int(5) NOT NULL COMMENT 'Identificador de la tabla usuario',
  `idcliente` int(5) NOT NULL COMMENT 'Identificador de la tabla cliente',
  `fecha_documento` date DEFAULT NULL COMMENT 'Fecha del documento',
  `tipo_documento` varchar(7) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'FACTURA / BOLETA: Boleta',
  `numero_documento` int(11) DEFAULT NULL COMMENT 'Numero de documento',
  `razon_social` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Nombre de la entidad que registra en la venta',
  `forma_pago` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Forma de pago: EFECTIVO/TARJETA DE CREDITO/TARJETA DEBITO/TRANSFERENCIA CTA./YAPE',
  `numero_operacion` varchar(20) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'Numero de operación en caso pague con una Transferencia o Tarjeta de Credito/Debito',
  `subtotal` decimal(10,2) DEFAULT NULL COMMENT 'Subtotal de la compra',
  `igv` decimal(10,2) DEFAULT NULL COMMENT 'IGV',
  `total` decimal(10,2) DEFAULT NULL COMMENT 'Total de la venta',
  `estado` char(1) COLLATE utf8mb4_spanish_ci DEFAULT NULL COMMENT 'A: Activo; I:Inactivo',
  `fecha_hora_sistema` timestamp NULL DEFAULT current_timestamp() COMMENT 'YYYY-MM-DD HH:MM:SS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci COMMENT='Almacena todas las ventas de la tienda';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `categoria_servicio`
--
ALTER TABLE `categoria_servicio`
  ADD PRIMARY KEY (`idservicio`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `fk_producto_categoriaproducto` (`idcategoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_usuario` (`idusuario`),
  ADD KEY `fk_venta_cliente` (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `idcategoria` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla Categoría', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categoria_servicio`
--
ALTER TABLE `categoria_servicio`
  MODIFY `idservicio` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla Categoría', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla cliente', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Identificador  de la tabla Producto', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla venta';

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoriaproducto` FOREIGN KEY (`idcategoria`) REFERENCES `categoria_producto` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
