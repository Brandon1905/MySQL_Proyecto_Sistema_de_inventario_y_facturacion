-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: occident1.0
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `occ_abono`
--

DROP TABLE IF EXISTS `occ_abono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_abono` (
  `occ_Abono_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_CuentasXCobrar_ID_42` int NOT NULL COMMENT 'Identificador hacia la tabla CuentasXCobraR',
  `MontoAbono` int DEFAULT NULL COMMENT 'Monto del abono realizado',
  `Fecha` date DEFAULT NULL COMMENT 'Fecha en el que se hizo el abono',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Abono_ID`),
  KEY `fk_occ_Abono_occ_CuentasXCobrar1_idx` (`occ_CuentasXCobrar_ID_42`),
  CONSTRAINT `fk_occ_CuentasXCobrar_42` FOREIGN KEY (`occ_CuentasXCobrar_ID_42`) REFERENCES `occ_cuentasxcobrar` (`occ_CuentasXCobrar_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='La tabla occ_abono es la encargada de registrar los abonos de realizados a las facturas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_abono`
--

LOCK TABLES `occ_abono` WRITE;
/*!40000 ALTER TABLE `occ_abono` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_abono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_articulos`
--

DROP TABLE IF EXISTS `occ_articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_articulos` (
  `occ_Articulos_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Familias_ID_8` int NOT NULL COMMENT 'Identificador hacia la tabla Familia',
  `occ_Unidades_ID` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Unidad',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo de los articulos',
  `Familia` varchar(100) DEFAULT NULL COMMENT 'Familia a la que pertenece el articulo',
  `Descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion del articulo',
  `Unidad` varchar(100) DEFAULT NULL COMMENT 'Unidad de medida que tiene el articulo',
  `CodigoDeBarras` int DEFAULT NULL COMMENT 'Codigo de barras que tiene el articulo',
  `PrecioPorArticulo` float DEFAULT NULL COMMENT 'Precio del producto por unidad',
  `CatidadDeArticulos` varchar(1000) DEFAULT NULL COMMENT 'Cantidad de articulos existentes',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Articulos_ID`),
  KEY `fk_occ_Articulos_occ_Familias1_idx` (`occ_Familias_ID_8`),
  KEY `fk_occ_Unidades1_idx` (`occ_Unidades_ID`),
  CONSTRAINT `fk_occ_Familias_8` FOREIGN KEY (`occ_Familias_ID_8`) REFERENCES `occ_familias` (`occ_Familias_ID`),
  CONSTRAINT `fk_occ_Unidades1` FOREIGN KEY (`occ_Unidades_ID`) REFERENCES `occ_unidades` (`occ_Unidades_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='La tabla occ_articulos se encarga de de registrar los articulos al sistema ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_articulos`
--

LOCK TABLES `occ_articulos` WRITE;
/*!40000 ALTER TABLE `occ_articulos` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_bodega`
--

DROP TABLE IF EXISTS `occ_bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_bodega` (
  `occ_Bodega_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Sucursales_ID_7` int NOT NULL COMMENT 'Identificador hacia la tabla Sucursal',
  `NombreBodega` varchar(100) DEFAULT NULL COMMENT 'Nombre de la bodega',
  `Descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion de la bodega',
  `Ubicacion` varchar(500) DEFAULT NULL COMMENT 'Ubicacion de la bodega',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Bodega_ID`),
  KEY `fk_occ_Bodega_occ_Sucursales1_idx` (`occ_Sucursales_ID_7`),
  CONSTRAINT `fk_occ_Sucursales_7` FOREIGN KEY (`occ_Sucursales_ID_7`) REFERENCES `occ_sucursales` (`occ_Sucursales_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='la tabla se encarga de registrar toda la informacion de las bodegas, así como de cual sucursal pertenece';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_bodega`
--

LOCK TABLES `occ_bodega` WRITE;
/*!40000 ALTER TABLE `occ_bodega` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_cajas`
--

DROP TABLE IF EXISTS `occ_cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_cajas` (
  `occ_Cajas_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Monedas_ID_22` int NOT NULL COMMENT 'Identificador hacia la tabla Moneda',
  `occ_Sucursales_ID_23` int NOT NULL COMMENT 'Identificador hacia la tabla Sucursal',
  `CodigoCaja` varchar(45) DEFAULT NULL COMMENT 'Codigo de identificacion de la caja',
  `Fecha` date DEFAULT NULL COMMENT 'Fecha de la caja',
  `SaldoInicial` float DEFAULT NULL COMMENT 'Saldo con el que la caja inicia ',
  `SaldoFinal` float DEFAULT NULL COMMENT 'Saldo con el que la caja inicia ',
  `MontoTatalMovimientos` float DEFAULT NULL COMMENT 'Monto total de los movimientos hechos en esa caja',
  `TotalEntradas` float DEFAULT NULL COMMENT 'Cantidad de dinero que entro en al caja',
  `TotalSalidas` float DEFAULT NULL COMMENT 'Cantidad de dinero que salio de la caja',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Cajas_ID`),
  KEY `fk_occ_Cajas_occ_Sucursales1_idx` (`occ_Sucursales_ID_23`),
  KEY `fk_occ_Cajas_occ_Monedas1_idx` (`occ_Monedas_ID_22`),
  CONSTRAINT `fk_occ_Monedas1` FOREIGN KEY (`occ_Monedas_ID_22`) REFERENCES `occ_monedas` (`occ_Monedas_ID`),
  CONSTRAINT `fk_occ_Sucursales1` FOREIGN KEY (`occ_Sucursales_ID_23`) REFERENCES `occ_sucursales` (`occ_Sucursales_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Se encarga de del registro de las cajas de la sucursal ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_cajas`
--

LOCK TABLES `occ_cajas` WRITE;
/*!40000 ALTER TABLE `occ_cajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_categoriaclientesprovedor`
--

DROP TABLE IF EXISTS `occ_categoriaclientesprovedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_categoriaclientesprovedor` (
  `occ_CategoriaClientesProvedor_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador hacia la tabla ',
  `ClienteProvedor` varchar(1) DEFAULT NULL COMMENT 'P = PROVEDOR\nC = CLIENTE\nSe unifican las tablas para disminuir codigo',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo del cliente o el provedor',
  `Descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion del cliente o el provedor ',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_CategoriaClientesProvedor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Se encarga de el reguistro del cliente o del provedor segun su categoria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_categoriaclientesprovedor`
--

LOCK TABLES `occ_categoriaclientesprovedor` WRITE;
/*!40000 ALTER TABLE `occ_categoriaclientesprovedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_categoriaclientesprovedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_cheque`
--

DROP TABLE IF EXISTS `occ_cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_cheque` (
  `occ_Cheque_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Provedores_ID_41` int NOT NULL COMMENT 'Identificador hacia la tabla Provedor',
  `NumeroCheque` int DEFAULT NULL COMMENT 'Numero del cheque para identificar',
  `FechaEmicion` date DEFAULT NULL COMMENT 'Fecha de emicion del cheque',
  `Monto` float DEFAULT NULL COMMENT 'Monto a tramitar del cheque',
  `Motivo` varchar(45) DEFAULT NULL COMMENT 'Motivo del cheque',
  `EmisorCheque` varchar(45) DEFAULT NULL COMMENT 'Persona que emite el cheque',
  `Estado` varchar(45) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Cheque_ID`),
  KEY `fk_occ_Cheque_occ_Provedores1_idx` (`occ_Provedores_ID_41`),
  CONSTRAINT `fk_occ_Provedores_41` FOREIGN KEY (`occ_Provedores_ID_41`) REFERENCES `occ_provedores` (`occ_Provedores_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='La tabla cheque se encarga de registrar los cheches que se generen en la sucursal ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_cheque`
--

LOCK TABLES `occ_cheque` WRITE;
/*!40000 ALTER TABLE `occ_cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_clientes`
--

DROP TABLE IF EXISTS `occ_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_clientes` (
  `occ_Clientes_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_TipoDeCedula_ID_9` int NOT NULL COMMENT 'Identificador hacia la tabla TipoDeCedula',
  `occ_CategoriaClientesProvedor_ID_10` int NOT NULL COMMENT 'Identificador hacia la tabla CategoriaClientesProvedor',
  `occ_TiposContact_ID_11` int NOT NULL COMMENT 'Identificador hacia la tabla TiposContacto',
  `Nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre del cliente',
  `Cedula` int DEFAULT NULL COMMENT 'Cedula de identificacion del cliente',
  `FechaNacimento` date DEFAULT NULL COMMENT 'Fecha de nacimiento del cliente',
  `CategoriaCliente` varchar(45) DEFAULT NULL COMMENT 'Categoria del cliente',
  `LimiteCredito` float DEFAULT NULL COMMENT 'Limite de credito que tiene el cliente',
  `MontoCredito` float DEFAULT NULL COMMENT 'Monto del credito actual del cliente',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Clientes_ID`),
  KEY `fk_occ_Clientes_occ_TipoDeCedula1_idx` (`occ_TipoDeCedula_ID_9`),
  KEY `fk_occ_Clientes_occ_TiposDeContacto1_idx` (`occ_TiposContact_ID_11`),
  KEY `fk_occ_Clientes_occ_CategoriaClientesProvedor1_idx` (`occ_CategoriaClientesProvedor_ID_10`),
  CONSTRAINT `fk_occ_CategoriaClientesProvedor_10` FOREIGN KEY (`occ_CategoriaClientesProvedor_ID_10`) REFERENCES `occ_categoriaclientesprovedor` (`occ_CategoriaClientesProvedor_ID`),
  CONSTRAINT `fk_occ_TipoDeCedula_9` FOREIGN KEY (`occ_TipoDeCedula_ID_9`) REFERENCES `occ_tipodecedula` (`occ_TipoDeCedula_ID`),
  CONSTRAINT `fk_occ_TiposContacto_11` FOREIGN KEY (`occ_TiposContact_ID_11`) REFERENCES `occ_tiposdecontacto` (`occ_TiposDeContact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Es donde se registran todos los datos o informacionde los clientes ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_clientes`
--

LOCK TABLES `occ_clientes` WRITE;
/*!40000 ALTER TABLE `occ_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_credito`
--

DROP TABLE IF EXISTS `occ_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_credito` (
  `occ_Credito_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Facturas_ID_40` int NOT NULL COMMENT 'Identificador hacia la tabla  Factura',
  `MontoCredito` float DEFAULT NULL COMMENT 'Monto del credito disponible',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Credito_ID`),
  KEY `fk_occ_Credito_occ_Facturas1_idx` (`occ_Facturas_ID_40`),
  CONSTRAINT `fk_occ_Facturas_40` FOREIGN KEY (`occ_Facturas_ID_40`) REFERENCES `occ_facturas` (`occ_Facturas_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Donde se registran los creditos de las facturas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_credito`
--

LOCK TABLES `occ_credito` WRITE;
/*!40000 ALTER TABLE `occ_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_cuentasxcobrar`
--

DROP TABLE IF EXISTS `occ_cuentasxcobrar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_cuentasxcobrar` (
  `occ_CuentasXCobrar_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Clientes_ID_29` int NOT NULL COMMENT 'Identificador hacia la tabla Cliente',
  `occ_Credito_ID_30` int NOT NULL COMMENT 'Identificador hacia la tabla Credito',
  `MontoTotal` float DEFAULT NULL COMMENT 'Monto total de la cuenta por cobrar ',
  `FechaRegistro` date DEFAULT NULL COMMENT 'Fecha de reguistro de la cuenta',
  `FechaCancelacion` date DEFAULT NULL COMMENT 'Fecha de cancelacion de la cuenta',
  `FechaVencimiento` date DEFAULT NULL COMMENT 'Fecha de vencimiento de la cuenta ',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_CuentasXCobrar_ID`),
  KEY `fk_occ_CuentasXCobrar_occ_Clientes1_idx` (`occ_Clientes_ID_29`),
  KEY `fk_occ_CuentasXCobrar_occ_Credito1_idx` (`occ_Credito_ID_30`),
  CONSTRAINT `fk_occ_Clientes_29` FOREIGN KEY (`occ_Clientes_ID_29`) REFERENCES `occ_clientes` (`occ_Clientes_ID`),
  CONSTRAINT `fk_occ_Credito_30` FOREIGN KEY (`occ_Credito_ID_30`) REFERENCES `occ_credito` (`occ_Credito_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Donde se reguistra la informacion de las cuentas por cobrar de la empresa ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_cuentasxcobrar`
--

LOCK TABLES `occ_cuentasxcobrar` WRITE;
/*!40000 ALTER TABLE `occ_cuentasxcobrar` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_cuentasxcobrar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_cuentaxpagar`
--

DROP TABLE IF EXISTS `occ_cuentaxpagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_cuentaxpagar` (
  `occ_CuentaXPagar_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Facturas_ID_24` int NOT NULL COMMENT 'Identificador hacia la tabla Factura',
  `occ_Clientes_ID_25` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Cliente',
  `occ_Provedores_ID_26` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Provedor',
  `CodigoCredito` varchar(45) DEFAULT NULL COMMENT 'Codigo del credito de la cuenta por pagar',
  `MontoTotal` float DEFAULT NULL COMMENT 'Monto total de la cuenta ',
  `FechaRegistro` date DEFAULT NULL COMMENT 'Fecha de registro de la cuenta',
  `FechaCancelacion` date DEFAULT NULL COMMENT 'Fecha de cancelacion de la cuenta',
  `FechaVencimiento` date DEFAULT NULL COMMENT 'Fecha de vencimiento de la cuenta',
  `Acumulado` float DEFAULT NULL COMMENT 'Acumulado por pagar',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_CuentaXPagar_ID`),
  KEY `fk_occ_CuentaXPagar_occ_Facturas1_idx` (`occ_Facturas_ID_24`),
  KEY `fk_occ_CuentaXPagar_occ_Provedores1_idx` (`occ_Provedores_ID_26`),
  KEY `fk_occ_CuentaXPagar_occ_Clientes1_idx` (`occ_Clientes_ID_25`),
  CONSTRAINT `fk_occ_Clientes_25` FOREIGN KEY (`occ_Clientes_ID_25`) REFERENCES `occ_clientes` (`occ_Clientes_ID`),
  CONSTRAINT `fk_occ_Facturas_24` FOREIGN KEY (`occ_Facturas_ID_24`) REFERENCES `occ_facturas` (`occ_Facturas_ID`),
  CONSTRAINT `fk_occ_Provedores_26` FOREIGN KEY (`occ_Provedores_ID_26`) REFERENCES `occ_provedores` (`occ_Provedores_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Donde se reguistra la informacion de las cuentas por pagar de la empresa ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_cuentaxpagar`
--

LOCK TABLES `occ_cuentaxpagar` WRITE;
/*!40000 ALTER TABLE `occ_cuentaxpagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_cuentaxpagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_detallearticulo`
--

DROP TABLE IF EXISTS `occ_detallearticulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_detallearticulo` (
  `occ_DetalleArticulo_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Facturas_ID_20` int NOT NULL COMMENT 'Identificador hacia la tabla Factura',
  `occ_Articulos_ID_21` int NOT NULL COMMENT 'Identificador hacia la tabla Articulo',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_DetalleArticulo_ID`),
  KEY `fk_table1_occ_Facturas1_idx` (`occ_Facturas_ID_20`),
  KEY `fk_table1_occ_Articulos1_idx` (`occ_Articulos_ID_21`),
  CONSTRAINT `fk_occ_Articulos_21` FOREIGN KEY (`occ_Articulos_ID_21`) REFERENCES `occ_articulos` (`occ_Articulos_ID`),
  CONSTRAINT `fk_occ_Facturas_20` FOREIGN KEY (`occ_Facturas_ID_20`) REFERENCES `occ_facturas` (`occ_Facturas_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Es donde se almacena todos los productos que existen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_detallearticulo`
--

LOCK TABLES `occ_detallearticulo` WRITE;
/*!40000 ALTER TABLE `occ_detallearticulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_detallearticulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_detallecontactos`
--

DROP TABLE IF EXISTS `occ_detallecontactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_detallecontactos` (
  `occ_DetalleContactos_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_TiposDeContact_ID_1` int NOT NULL COMMENT 'Identificador hacia la tabla TiposDeContact',
  `Telefono` int DEFAULT NULL COMMENT 'Telefono del contacto ',
  `Fax` varchar(20) DEFAULT NULL COMMENT 'Fax del contacto',
  `Correo` varchar(76) DEFAULT NULL COMMENT 'Correo del contacto',
  `PaginaWeb` varchar(2053) DEFAULT NULL COMMENT 'Pagina web si es que posee una',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_DetalleContactos_ID`),
  KEY `fk_occ_DetalleContactos_occ_TiposDeContacto_idx` (`occ_TiposDeContact_ID_1`),
  CONSTRAINT `fk_occ_TiposDeContacto_1` FOREIGN KEY (`occ_TiposDeContact_ID_1`) REFERENCES `occ_tiposdecontacto` (`occ_TiposDeContact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Es donde se almacena todos los contactos ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_detallecontactos`
--

LOCK TABLES `occ_detallecontactos` WRITE;
/*!40000 ALTER TABLE `occ_detallecontactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_detallecontactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_detalleinventario`
--

DROP TABLE IF EXISTS `occ_detalleinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_detalleinventario` (
  `occ_DetalleInventario_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_TomaFisica_ID_31` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Toma fisica',
  `occ_Articulos_ID_32` int NOT NULL COMMENT 'Identificador hacia la tabla Articulo',
  `occ_Inventario_ID_33` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Inventario',
  `Catidad` int DEFAULT NULL COMMENT 'Cantidad de articulos del inventario',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_DetalleInventario_ID`),
  KEY `fk_occ_DetalleInventario_occ_Articulos1_idx` (`occ_Articulos_ID_32`),
  KEY `fk_occ_DetalleInventario_occ_Inventario1_idx` (`occ_Inventario_ID_33`),
  KEY `fk_occ_DetalleInventario_occ_TomaFisica1_idx` (`occ_TomaFisica_ID_31`),
  CONSTRAINT `fk_occ_Articulos_32` FOREIGN KEY (`occ_Articulos_ID_32`) REFERENCES `occ_articulos` (`occ_Articulos_ID`),
  CONSTRAINT `fk_occ_Inventario_33` FOREIGN KEY (`occ_Inventario_ID_33`) REFERENCES `occ_inventario` (`occ_Inventario_ID`),
  CONSTRAINT `fk_occ_TomaFisica_31` FOREIGN KEY (`occ_TomaFisica_ID_31`) REFERENCES `occ_tomafisica` (`occ_TomaFisica_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Es donde se almacena todos los productos queSe encuetran en el inventario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_detalleinventario`
--

LOCK TABLES `occ_detalleinventario` WRITE;
/*!40000 ALTER TABLE `occ_detalleinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_detalleinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_detallerobodaño`
--

DROP TABLE IF EXISTS `occ_detallerobodaño`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_detallerobodaño` (
  `occ_DetalleRoboDaño_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_RoboDaños_ID_34` int NOT NULL COMMENT 'Identificador hacia la tabla RoboDaños',
  `occ_DetalleInventario_ID_35` int NOT NULL COMMENT 'Identificador hacia la tabla DetalleInventario',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_DetalleRoboDaño_ID`),
  KEY `fk_occ_DetalleRoboDaño_occ_RoboDaños1_idx` (`occ_RoboDaños_ID_34`),
  KEY `fk_occ_DetalleRoboDaño_occ_DetalleInventario1_idx` (`occ_DetalleInventario_ID_35`),
  CONSTRAINT `fk_occ_DetalleInventario_35` FOREIGN KEY (`occ_DetalleInventario_ID_35`) REFERENCES `occ_detalleinventario` (`occ_DetalleInventario_ID`),
  CONSTRAINT `fk_occ_RoboDaños_34` FOREIGN KEY (`occ_RoboDaños_ID_34`) REFERENCES `occ_robodaños` (`occ_RoboDaños_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Es donde se almacena todos los productos que an sido robados o dañados ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_detallerobodaño`
--

LOCK TABLES `occ_detallerobodaño` WRITE;
/*!40000 ALTER TABLE `occ_detallerobodaño` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_detallerobodaño` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_detalletraslado`
--

DROP TABLE IF EXISTS `occ_detalletraslado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_detalletraslado` (
  `occ_DetalleTraslado_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Traslado_ID_36` int NOT NULL COMMENT 'Identificador hacia la tabla Traslado',
  `occ_Articulos_ID_37` int NOT NULL COMMENT 'Identificador hacia la tabla Articulo',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_DetalleTraslado_ID`),
  KEY `fk_occ_DetalleTraslado_occ_Traslado1_idx` (`occ_Traslado_ID_36`),
  KEY `fk_occ_DetalleTraslado_occ_Articulos1_idx` (`occ_Articulos_ID_37`),
  CONSTRAINT `fk_occ_Articulos1_37` FOREIGN KEY (`occ_Articulos_ID_37`) REFERENCES `occ_articulos` (`occ_Articulos_ID`),
  CONSTRAINT `fk_occ_Traslado_36` FOREIGN KEY (`occ_Traslado_ID_36`) REFERENCES `occ_traslado` (`occ_Traslado_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Es donde se almacena todos los productos que seran trasladados ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_detalletraslado`
--

LOCK TABLES `occ_detalletraslado` WRITE;
/*!40000 ALTER TABLE `occ_detalletraslado` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_detalletraslado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_empresa`
--

DROP TABLE IF EXISTS `occ_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_empresa` (
  `occ_Empresa_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_TiposDeContact_ID_2` int NOT NULL COMMENT 'Identificador hacia la tabla TipoDeContacto',
  `occ_TipoDeCedula_ID_3` int NOT NULL COMMENT 'Identificador hacia la tabla TipoDeCedula',
  `NombreEmpresa` varchar(100) DEFAULT NULL COMMENT 'Nombre de la empresa',
  `RazonSocial` varchar(100) DEFAULT NULL COMMENT 'Nombre o razon de la empresa',
  `CedulaJudirica` varchar(64) DEFAULT NULL COMMENT 'Cedula juridica de la empresa',
  `FechaCreacion` date DEFAULT NULL COMMENT 'fecha de creación de la empresa',
  `NombreEncargado` varchar(100) DEFAULT NULL COMMENT 'Nombre del encargado o dueño de la empresa',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Empresa_ID`),
  KEY `fk_occ_Empresa_occ_TiposDeContacto1_idx` (`occ_TiposDeContact_ID_2`),
  KEY `fk_occ_Empresa_occ_TipoDeCedula1_idx` (`occ_TipoDeCedula_ID_3`),
  CONSTRAINT `fk_occ_TiposDeContacto_2` FOREIGN KEY (`occ_TiposDeContact_ID_2`) REFERENCES `occ_tiposdecontacto` (`occ_TiposDeContact_ID`),
  CONSTRAINT `fkocc_TipoDeCedula_3` FOREIGN KEY (`occ_TipoDeCedula_ID_3`) REFERENCES `occ_tipodecedula` (`occ_TipoDeCedula_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra toda la informacion de la empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_empresa`
--

LOCK TABLES `occ_empresa` WRITE;
/*!40000 ALTER TABLE `occ_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_facturas`
--

DROP TABLE IF EXISTS `occ_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_facturas` (
  `occ_Facturas_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Provedores_ID_15` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Provedor',
  `occ_Cajas_ID_16` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Caja',
  `occ_Clientes_ID_17` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Cliente',
  `occ_Impuesto_ID_18` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Impuesto',
  `occ_Monedas_ID_19` int DEFAULT NULL COMMENT 'Identificador hacia la tabla Moneda',
  `CodigoFactura` varchar(45) DEFAULT NULL COMMENT 'Codigo que identifica la factura de las otras',
  `MontoTotal` float DEFAULT NULL COMMENT 'Monto total de la factura',
  `FechaRegistro` date DEFAULT NULL COMMENT 'Fecha de registro de la factura',
  `FechaCancelacion` date DEFAULT NULL COMMENT 'Fecha de cancelacion de la factura',
  `Exento` varchar(2) DEFAULT NULL COMMENT 'SI = Presenta exento\nNO = No presenta exento',
  `MontoDescuento` float DEFAULT NULL COMMENT 'Monto de descuento que tiene la factura',
  `FormaDePago` varchar(45) DEFAULT NULL COMMENT 'Efectivo o tarjeta',
  `EstadoFactura` varchar(2) DEFAULT NULL COMMENT 'FP = FACTURA PENDIENTE\nFC = FACTURA CANCELADA',
  `TipoFactura` varchar(1) DEFAULT NULL COMMENT 'A = Apartados\nP = Pre-Facturas\nF = Facturas\nC = Compras\nD = Devoluciones\nC = Credito\nEsto debido a que existen otros punto que se puenden simplificar y colocar en la\nmisma tabla para poder usar el mismo formato. ',
  `SaldoActualApartado` float DEFAULT NULL COMMENT 'es el saldo en caso de que sea un apartado en caso contrario se deja nula',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Facturas_ID`),
  KEY `fk_occ_Facturas_occ_Clientes1_idx` (`occ_Clientes_ID_17`),
  KEY `fk_occ_Facturas_occ_Monedas1_idx` (`occ_Monedas_ID_19`),
  KEY `fk_occ_Facturas_occ_Impuesto1_idx` (`occ_Impuesto_ID_18`),
  KEY `fk_occ_Facturas_occ_Cajas1_idx` (`occ_Cajas_ID_16`),
  KEY `fk_occ_Facturas_occ_Provedores1_idx` (`occ_Provedores_ID_15`),
  CONSTRAINT `fk_occ_Cajas_16` FOREIGN KEY (`occ_Cajas_ID_16`) REFERENCES `occ_cajas` (`occ_Cajas_ID`),
  CONSTRAINT `fk_occ_Clientes_17` FOREIGN KEY (`occ_Clientes_ID_17`) REFERENCES `occ_clientes` (`occ_Clientes_ID`),
  CONSTRAINT `fk_occ_Impuesto_18` FOREIGN KEY (`occ_Impuesto_ID_18`) REFERENCES `occ_impuesto` (`occ_Impuesto_ID`),
  CONSTRAINT `fk_occ_Monedas_19` FOREIGN KEY (`occ_Monedas_ID_19`) REFERENCES `occ_monedas` (`occ_Monedas_ID`),
  CONSTRAINT `fk_occ_Provedores_15` FOREIGN KEY (`occ_Provedores_ID_15`) REFERENCES `occ_provedores` (`occ_Provedores_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Las facruras registran toda la informacion de los productos o los tipos que hay de los cuales son:\nApartados, Pre-Facturas, Facturas, Compras, Devoluciones y Credito. \nEsto debido a que existen otros punto que se puenden simplificar y colocar en la\\\\nmisma tabla para poder usar el mismo formato. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_facturas`
--

LOCK TABLES `occ_facturas` WRITE;
/*!40000 ALTER TABLE `occ_facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_familias`
--

DROP TABLE IF EXISTS `occ_familias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_familias` (
  `occ_Familias_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo de la familia ',
  `Descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion de la familia',
  `Descuento` varchar(45) DEFAULT NULL COMMENT 'Descuento que tiene la familia',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Familias_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='El tipo de falimia a la que pertenecen los productos para poder realizar descuentos entre otras cosas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_familias`
--

LOCK TABLES `occ_familias` WRITE;
/*!40000 ALTER TABLE `occ_familias` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_familias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_impuesto`
--

DROP TABLE IF EXISTS `occ_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_impuesto` (
  `occ_Impuesto_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `Impuesto` float DEFAULT NULL COMMENT 'Impuesto actual',
  `Descripcion` varchar(45) DEFAULT NULL COMMENT 'Descripcion del impuesto',
  `FechaDeAplicacion` date DEFAULT NULL COMMENT 'Fecha en la que se aplico el impuesto',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Impuesto_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra los impuesto que se vayan a aplicar en la empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_impuesto`
--

LOCK TABLES `occ_impuesto` WRITE;
/*!40000 ALTER TABLE `occ_impuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_inventario`
--

DROP TABLE IF EXISTS `occ_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_inventario` (
  `occ_Inventario_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Bodega_ID_38` int NOT NULL COMMENT 'Identificador hacia la tabla Bodega ',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo del inventario',
  `Descripcion` varchar(45) DEFAULT NULL COMMENT 'Descripción del inventario',
  `Fecha` date DEFAULT NULL COMMENT 'Fecha del inventario',
  `Tipo` varchar(2) DEFAULT NULL COMMENT 'IN = Inventario\nTF = Toma Fisica ',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Inventario_ID`),
  KEY `fk_occ_Inventario_occ_Bodega1_idx` (`occ_Bodega_ID_38`),
  CONSTRAINT `fk_occ_Bodega_38` FOREIGN KEY (`occ_Bodega_ID_38`) REFERENCES `occ_bodega` (`occ_Bodega_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra la informacion de la mercancia que tiene la empresa ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_inventario`
--

LOCK TABLES `occ_inventario` WRITE;
/*!40000 ALTER TABLE `occ_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_monedas`
--

DROP TABLE IF EXISTS `occ_monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_monedas` (
  `occ_Monedas_ID` int NOT NULL COMMENT 'Identificador de la tabla ',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo de la moneda',
  `Descripccion` varchar(100) DEFAULT NULL COMMENT 'Descripcion de la moneda',
  `Abreviatura` varchar(3) DEFAULT NULL COMMENT 'todas las abreviaturas tienen un maximo de 3 carasteres',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Monedas_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra la informacion de las monedas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_monedas`
--

LOCK TABLES `occ_monedas` WRITE;
/*!40000 ALTER TABLE `occ_monedas` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_monedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_pagos`
--

DROP TABLE IF EXISTS `occ_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_pagos` (
  `occ_Pagos_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_CuentaXPagar_ID_39` int NOT NULL COMMENT 'Identificador hacia la tabla de cuentas por pagar',
  `MontoDePago` float DEFAULT NULL COMMENT 'Monto del pago a realizar',
  `MontoDeDeuda` float DEFAULT NULL COMMENT 'Monto de la deuda ',
  `CodigoPago` varchar(45) DEFAULT NULL COMMENT 'Codigo del pago ',
  `Fecha` date DEFAULT NULL COMMENT 'Fecha de los pagos ',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Pagos_ID`),
  KEY `fk_occ_Pagos_occ_CuentaXPagar1_idx` (`occ_CuentaXPagar_ID_39`),
  CONSTRAINT `fk_occ_CuentaXPagar_39` FOREIGN KEY (`occ_CuentaXPagar_ID_39`) REFERENCES `occ_cuentaxpagar` (`occ_CuentaXPagar_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra la informacion de los pagos realizados en la sucursal ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_pagos`
--

LOCK TABLES `occ_pagos` WRITE;
/*!40000 ALTER TABLE `occ_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_provedores`
--

DROP TABLE IF EXISTS `occ_provedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_provedores` (
  `occ_Provedores_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_TiposDeContact_ID_12` int NOT NULL COMMENT 'Identificador hacia la tabla TiposDeContact',
  `occ_TipoDeCedula_ID_13` int NOT NULL COMMENT 'Identificador hacia la tabla TipoDeCedula',
  `occ_CategoriaClientesProvedor_ID_14` int NOT NULL COMMENT 'Identificador hacia la tabla CategoriaClientesProvedor',
  `Nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre del provedor',
  `Cedula` int DEFAULT NULL COMMENT 'Cedula del provedor',
  `FechaIngreso` date DEFAULT NULL COMMENT 'Fecha de ingreso del provedor',
  `SaldoDeuda` float DEFAULT NULL COMMENT 'Saldo de la deuda al provedor',
  `CuentaBancaria` varchar(100) DEFAULT NULL COMMENT 'Cuenta bancaria a la cual se atribullen los datos',
  `BancoDePago` varchar(100) DEFAULT NULL COMMENT 'Banco de pagos ',
  `DiasDePago` date DEFAULT NULL COMMENT 'Dias de pago al provedor',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Provedores_ID`),
  KEY `fk_occ_Provedores_occ_TipoDeCedula1_idx` (`occ_TipoDeCedula_ID_13`),
  KEY `fk_occ_Provedores_occ_CategoriaClientesProvedor1_idx` (`occ_CategoriaClientesProvedor_ID_14`),
  KEY `fk_occ_Provedores_occ_TiposDeContacto1_idx` (`occ_TiposDeContact_ID_12`),
  CONSTRAINT `fk_occ_Provedores_occ_CategoriaClientesProvedor_13` FOREIGN KEY (`occ_CategoriaClientesProvedor_ID_14`) REFERENCES `occ_categoriaclientesprovedor` (`occ_CategoriaClientesProvedor_ID`),
  CONSTRAINT `fk_occ_Provedores_occ_TipoDeCedula_12` FOREIGN KEY (`occ_TipoDeCedula_ID_13`) REFERENCES `occ_tipodecedula` (`occ_TipoDeCedula_ID`),
  CONSTRAINT `fk_occ_Provedores_occ_TiposDeContacto_14` FOREIGN KEY (`occ_TiposDeContact_ID_12`) REFERENCES `occ_tiposdecontacto` (`occ_TiposDeContact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='La tabla se encarga de registrar la informacion de los provedores ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_provedores`
--

LOCK TABLES `occ_provedores` WRITE;
/*!40000 ALTER TABLE `occ_provedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_provedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_robodaños`
--

DROP TABLE IF EXISTS `occ_robodaños`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_robodaños` (
  `occ_RoboDaños_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla',
  `occ_Sucursales_ID_28` int NOT NULL COMMENT 'Identificador hacia la tabla Sucursal',
  `Fecha` date DEFAULT NULL COMMENT 'Fecha en la que se hizo el robo o daño',
  `Tipo` varchar(2) DEFAULT NULL COMMENT 'R = ROBO\nD = DAÑO',
  `Total` float DEFAULT NULL COMMENT 'Total de daño o robo',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO I = INACTIVO',
  PRIMARY KEY (`occ_RoboDaños_ID`),
  KEY `fk_occ_RoboDaños_occ_Sucursales1_idx` (`occ_Sucursales_ID_28`),
  CONSTRAINT `fk_occ_Sucursales_28` FOREIGN KEY (`occ_Sucursales_ID_28`) REFERENCES `occ_sucursales` (`occ_Sucursales_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra los robos y daños que presentan las sucursales o bodegas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_robodaños`
--

LOCK TABLES `occ_robodaños` WRITE;
/*!40000 ALTER TABLE `occ_robodaños` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_robodaños` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_sucursales`
--

DROP TABLE IF EXISTS `occ_sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_sucursales` (
  `occ_Sucursales_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Empresa_ID_5` int NOT NULL COMMENT 'Identificador hacia la tabla Empresa',
  `occ_TiposContact_ID_6` int NOT NULL COMMENT 'Identificador hacia la tabla TipoDeContacto',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo de la sucursal',
  `NombreSucursal` varchar(100) DEFAULT NULL COMMENT 'Nombre de la sucursal',
  `NombreEncargado` varchar(100) DEFAULT NULL COMMENT 'Nombre del dueño o encargado de la sucursal',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO I = INACTIVO',
  PRIMARY KEY (`occ_Sucursales_ID`),
  KEY `fk_occ_Sucursales_occ_Empresa1_idx` (`occ_Empresa_ID_5`),
  KEY `fk_occ_Sucursales_occ_TiposDeContacto1_idx` (`occ_TiposContact_ID_6`),
  CONSTRAINT `fk_occ_Empresa_5` FOREIGN KEY (`occ_Empresa_ID_5`) REFERENCES `occ_empresa` (`occ_Empresa_ID`),
  CONSTRAINT `fk_occ_TiposContacto_6` FOREIGN KEY (`occ_TiposContact_ID_6`) REFERENCES `occ_tiposdecontacto` (`occ_TiposDeContact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra toda la informacion de las sucursales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_sucursales`
--

LOCK TABLES `occ_sucursales` WRITE;
/*!40000 ALTER TABLE `occ_sucursales` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_tipodecambio`
--

DROP TABLE IF EXISTS `occ_tipodecambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_tipodecambio` (
  `occ_TipoDeCambio_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `DiaFecha` date DEFAULT NULL COMMENT 'Es el dia exacto que se hizo el tipo de cambio',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo del tipo de cambio',
  `Descripccion` varchar(100) DEFAULT NULL COMMENT 'Descripcion del tipo de cambio',
  `MonedaDestino` varchar(45) DEFAULT NULL COMMENT 'Moneda a la cual se desea cambiar',
  `MonedaOrigen` varchar(45) DEFAULT NULL COMMENT 'Moneda la cual se posee',
  `ValorDeTipoDeCambio` varchar(45) DEFAULT NULL COMMENT 'Valor actual del tipo de cambio',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_TipoDeCambio_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra los tipos de cambio que se precetan para hacer los\ncambios que se precentan al momento de poder hacer un pago ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_tipodecambio`
--

LOCK TABLES `occ_tipodecambio` WRITE;
/*!40000 ALTER TABLE `occ_tipodecambio` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_tipodecambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_tipodecedula`
--

DROP TABLE IF EXISTS `occ_tipodecedula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_tipodecedula` (
  `occ_TipoDeCedula_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo del tipo de cedula',
  `Descripcion` varchar(100) DEFAULT NULL COMMENT 'Descripccion de la cedula',
  `FormatoCedula` varchar(45) DEFAULT NULL COMMENT 'Formato que tiene la cedula',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_TipoDeCedula_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Se encarga de registrar los tipos de cedulas ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_tipodecedula`
--

LOCK TABLES `occ_tipodecedula` WRITE;
/*!40000 ALTER TABLE `occ_tipodecedula` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_tipodecedula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_tiposdecontacto`
--

DROP TABLE IF EXISTS `occ_tiposdecontacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_tiposdecontacto` (
  `occ_TiposDeContact_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `DireccionFisica` varchar(100) DEFAULT NULL COMMENT 'Direccion o ubicacion del contacto',
  `Descripccion` varchar(100) DEFAULT NULL COMMENT 'Descripcion del contacto',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_TiposDeContact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registra los tipos de contacto existentes ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_tiposdecontacto`
--

LOCK TABLES `occ_tiposdecontacto` WRITE;
/*!40000 ALTER TABLE `occ_tiposdecontacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_tiposdecontacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_tomafisica`
--

DROP TABLE IF EXISTS `occ_tomafisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_tomafisica` (
  `occ_TomaFisica_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo de la toma fisica',
  `Descripccion` varchar(45) DEFAULT NULL COMMENT 'Descripcion de la toma fisica ',
  `Estado` varchar(45) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_TomaFisica_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Se encarga de hacer un tipo de inventario para hacer chequeo de todos los productos de la sucursal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_tomafisica`
--

LOCK TABLES `occ_tomafisica` WRITE;
/*!40000 ALTER TABLE `occ_tomafisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_tomafisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_traslado`
--

DROP TABLE IF EXISTS `occ_traslado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_traslado` (
  `occ_Traslado_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `occ_Monedas_ID_27` int NOT NULL COMMENT 'Identificador hacia la tabla Moneda',
  `Encabesado` varchar(45) DEFAULT NULL COMMENT 'Encabezado del traslado',
  `Descripcion` varchar(45) DEFAULT NULL COMMENT 'Descripción del traslado',
  `Fecha` date DEFAULT NULL COMMENT 'Fecha del traslado',
  `SucursalEntrada` varchar(100) DEFAULT NULL COMMENT 'Es la sucursal de entrada del traslado realizado',
  `SucursalSalida` varchar(100) DEFAULT NULL COMMENT 'Es la sucursal de salida del traslado realizado',
  `MontoTotal` float DEFAULT NULL COMMENT 'Monto total del traslado',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Traslado_ID`),
  KEY `fk_occ_Traslado_occ_Monedas1_idx` (`occ_Monedas_ID_27`),
  CONSTRAINT `fk_occ_Monedas_27` FOREIGN KEY (`occ_Monedas_ID_27`) REFERENCES `occ_monedas` (`occ_Monedas_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Se encarga de hacer un registro de los traslados que se hagan entre sucursales ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_traslado`
--

LOCK TABLES `occ_traslado` WRITE;
/*!40000 ALTER TABLE `occ_traslado` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_traslado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occ_unidades`
--

DROP TABLE IF EXISTS `occ_unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occ_unidades` (
  `occ_Unidades_ID` int NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la tabla ',
  `Codigo` varchar(45) DEFAULT NULL COMMENT 'Codigo de las unidades',
  `Descipcion` varchar(100) DEFAULT NULL COMMENT 'Descripcion de las unidades',
  `Unidad` varchar(100) DEFAULT NULL COMMENT 'Unidad de medida',
  `Estado` varchar(1) DEFAULT NULL COMMENT 'A = ACTIVO\nI = INACTIVO',
  PRIMARY KEY (`occ_Unidades_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='La tabla occ_unidades es la encargada de especificar las unidades de\nmedidads de los productos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occ_unidades`
--

LOCK TABLES `occ_unidades` WRITE;
/*!40000 ALTER TABLE `occ_unidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `occ_unidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28 18:26:24
