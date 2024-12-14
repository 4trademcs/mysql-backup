-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2024 a las 20:58:32
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
-- Base de datos: `contact`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Nombre` varchar(20) NOT NULL,
  `Titular` varchar(50) NOT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Direccion` varchar(60) DEFAULT '-',
  `Tarjeta` int(12) DEFAULT NULL,
  `Id` varchar(20) NOT NULL,
  `Monto` int(4) NOT NULL,
  `idCliente` varchar(20) NOT NULL DEFAULT '-',
  `Cliente` varchar(200) NOT NULL DEFAULT 'Pendiente',
  `Gestor` varchar(10) NOT NULL DEFAULT 'Pendiente',
  `Estado` varchar(10) NOT NULL DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Nombre`, `Titular`, `Telefono`, `Tipo`, `Direccion`, `Tarjeta`, `Id`, `Monto`, `idCliente`, `Cliente`, `Gestor`, `Estado`) VALUES
('fanta', '', 1234, 'CUP efectivo', 'deda', 0, 'Pedidos1726359826479', 500, 'Boxess1726202923352', 'Completado', 'Completado', 'Completada'),
('marcos', '', 7575738, 'Transferencia CUP', '', 2147483647, 'Pedidos1726370913919', 54, 'Boxess1726202923352', 'Completado', 'Completado', 'Completada'),
('tu tio', '', 2147483647, 'Transferencia CUP', '', 2147483647, 'Pedidos2024091716096', 400, 'Boxess1725244213772', 'Completado', 'Completado', 'Completada'),
('calzoncillo', 'sarco', 242323424, 'Transferencia CUP', '', 2147483647, 'Pedidos2024092411091', 999, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('xa', '', 2323232, 'Transferencia MLC', '', 2147483647, 'Pedidos2024092416092', 33, 'Boxess20240917220996', '<a href=\"/src/img/uploads/Pedidos2024092416092.jpg\" target=\"_blank\">Foto subida</a>', 'Pendiente', 'Pendiente'),
('acho', '', 476696, 'USD efectivo', '21', 0, 'Pedidos2024092416099', 2147483647, 'Boxess1726202923352', 'Completado', 'Completado', 'Completada'),
('orbe', '', 57634556, '', '', 0, 'Pedidos2024110508114', 100, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('gyhghbh', '', 47669645, '', '', 0, 'Pedidos2024110508116', 0, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('la nueba', '', 57634556, 'Transferencia CUP', '', 0, 'Pedidos2024110509113', 45, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('gambito', '', 47669655, 'USD efectivo', '', 0, 'Pedidos2024110509115', 100, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('Yanetsi', '', 47669677, 'Transferencia MLC', '', 0, 'Pedidos2024110509117', 54, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('eeee', '', 57634556, 'Transferencia MLC', '', 0, 'Pedidos2024110509118', 45, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('gyhghbh', '', 57634556, 'Transferencia MLC', '', 0, 'Pedidos2024110510112', 300, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('gyhghbh', '', 57634556, '', '', 0, 'Pedidos2024110510116', 0, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('gyhghbh', '', 47669666, 'USD efectivo', '', 0, 'Pedidos2024110512113', 33, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente'),
('dddddddd', '', 57634556, 'Transferencia CUP', '', 0, 'Pedidos2024110917112', 55, 'Boxess1726202923352', 'Pendiente', 'Pendiente', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(50) NOT NULL DEFAULT '-',
  `Telefono` varchar(10) DEFAULT '-',
  `Direccion` varchar(400) DEFAULT '-',
  `Email` varchar(20) NOT NULL DEFAULT '-',
  `Patrocinador` varchar(20) DEFAULT '-',
  `Rol` varchar(10) NOT NULL DEFAULT '-',
  `Bono` float(5,2) DEFAULT NULL,
  `Id` varchar(20) NOT NULL DEFAULT '-',
  `Carnet` varchar(20) NOT NULL DEFAULT '-',
  `Pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Telefono`, `Direccion`, `Email`, `Patrocinador`, `Rol`, `Bono`, `Id`, `Carnet`, `Pass`) VALUES
('serelo', '5358762994', 'Albacete,#310', 'manager@gmail.com', 'Google', 'Cliente', 0.00, 'Boxess1725244213772', '2323232324444', '$2a$08$EucycDcdmEcJl25vgX..OeQh0Kc8Sa4a/xxLUjhEJlgd0vcFCl7Cq'),
('lebron', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Google', 'Cliente', 0.00, 'Boxess1725488603404', '65563547365834', '$2a$08$Oq2E0b4JzoHGOhERlNNVye9i6rvMGqLhxtihlWrzBIYdqOmxOhVJG'),
('camil buya', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Google', 'Cliente', 0.00, 'Boxess1726192443004', '65563547365834', '$2a$08$l75z/cuckXaEk/xM6rTFTeX5M1xPUTvHaZUDcqpR4enERkqBrvJ7W'),
('ededed', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Remesa', 'Cliente', 0.00, 'Boxess1726192834310', '65563547365834', '$2a$08$0xULgxMnuxlAHY/bHzbFv.GYSiw4fBVxiH77jgjM5MKkmmakkzGgW'),
('Admin', '23456', 'Calle Admin', 'admin@gmail.com', 'Boxess20241027131065', 'Admin', 0.00, 'Boxess1726202923352', '2323232324444', '$2a$08$WoRQhOJPmZqBIRl3XFRWZ.wmSTj3pIs.M2zpEHvZRssTMKlJRSw1a'),
('el prende', '2322324242', 'en caselcarajo', 'dededejfeb@disparais', 'Patrocinador', 'Cliente', 0.00, 'Boxess20240917110960', '34432423423424234', '$2a$08$Cd7SPwjLd97O5ZGHb9Pu8eOO8s0pI1H2MP.E9p2JV0MxMLWZ2sCfa'),
('dale', '434322', 'csfewfwerr', 'cliente@gmail.com', 'Google', 'Cliente', 0.00, 'Boxess20240917220996', '3434354549549584', '$2a$08$pVf7hmvut88WW2a7acPplesrt9g/OEescTsYyxngo7mZtN7N2AdMG'),
('insertado', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Google', 'Cliente', 0.00, 'Boxess20240918100984', '31313', '$2a$08$iTGuaSnI6CSiKVjVjBpp9ed3/DLvsoRXYT.OkuyaCJ8eIdqwfCp1i'),
('gestor', '2232342424', 'en la casa del gestor, en el municipio del gestor', 'gestor@gmail.com', 'Remesa', 'Cliente', 0.00, 'Boxess20240918100987', '2323232324444', '$2a$08$P9sqCk3gGqX5Oy1MQ9tCXeyWSXarTIo.PwzY0wjeQece6lY1gXB8O'),
('pancho', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Remesa', 'Cliente', 0.00, 'Boxess20240924130939', '2323232324444', '$2a$08$Nlf/WKhMlkJPcs91GNfk0e8BqTR/ZQ1o2LhIDl0Fs0nALz1fF6AeC'),
('BETATESTER', '5358762994', 'Albacete 310', 'csmichel8@gmail.com', 'Patrocinador', 'Cliente', 0.00, 'Boxess20241013171058', '3433434343', '$2a$08$xZZV3FwVQ0AOVYxFGa2bPucSIybj9cTZ3pJrDvbpEczKMC76UKgXq'),
('ddhwdhwdbx', '5358762994', 'Albacet ii310', 'csmichel8@gmail.com', 'ijihuiuh', 'Cliente', 999.99, 'Boxess20241027131065', '3433434343', '$2a$08$KhTRuTomXWtGey5LMfJu2u9kpxAYnXDD3p/C2zyZ2sfzOfENEEFKm'),
('ddhwdhwdbx', '5358762994', 'Albacete310', 'csmichel8@gmail.com', 'Remesa', 'Cliente', 0.00, 'Boxess20241027141000', '32323232', '$2a$08$asmbm9JopjlxbqrVSMIz6uNT85K3McxyDntlyKfldr9.RIdfrpOd.'),
('menelio pa', '4444444333', 'calle ando #e', 'sdsdsdsds@fdcc.vfd', 'Remesa', 'Cliente', 0.00, 'Boxess20241103151101', '34343454555', '$2a$08$bqnqDOoEPNuXZpYtCSIQO.QJYRXqipcShno167wz7br/ZRWhMGNjK'),
('Michel', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Remesa', 'Cliente', 0.00, 'Boxess20241103181126', '3433434343', '$2a$08$jdAVSYp3rLKKH1YljLLlnesKPQsvAHlbiwmDrqCRLezq.7K6F2Dbq'),
('BETATESTER', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Google', 'Cliente', 0.00, 'Boxess20241104151193', '3333323232', '$2a$08$FWYvgbnKxVZjr5qISGd5QeVQan8AWPnvkiPBheHWe24k2rf4zfo8K'),
('Michel', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'Remesa', 'Cliente', 0.00, 'Boxess20241104161152', '12121212121', '$2a$08$JPXDNZXolmROLerNGN1FjO0e7I4RLNgjtfFCOgkPJoH5/VamTwf9e'),
('Michel', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', '', 'Cliente', 0.00, 'Boxess20241105111115', '3433434343', '$2a$08$bEZhv8ELyzZp8DJOI4bUYuny7H.57ToYvXfg9sSwEagC3BZyL56HC'),
('Michel', '5358762994', 'Albacete,#310', 'csmichel8@gmail.com', 'lebron', 'Cliente', 0.00, 'Boxess20241105121171', '12121212121', '$2a$08$d.ydrVcpMrdbUbASOEz3fODCF7efi7i5z.KV3AaTVyxfbVfOUjhgC');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
