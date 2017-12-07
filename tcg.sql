-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tcg
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fotos_recetas`
--

DROP TABLE IF EXISTS `fotos_recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_recetas` (
  `id_recetas` int(11) NOT NULL,
  `ruta_foto` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `num_paso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_recetas`
--

LOCK TABLES `fotos_recetas` WRITE;
/*!40000 ALTER TABLE `fotos_recetas` DISABLE KEYS */;
INSERT INTO `fotos_recetas` VALUES (1,'paso_1.webp',1),(1,'paso_2.webp',2),(1,'paso_3.webp',3),(1,'paso_4.webp',4),(1,'paso_5.webp',5),(1,'paso_6.webp',6),(1,'paso_7.webp',7),(1,'paso_8.webp',8),(1,'paso_9.webp',9),(1,'paso_10.webp',10),(1,'paso_11.webp',11),(1,'paso_12.webp',12);
/*!40000 ALTER TABLE `fotos_recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientes` (
  `idIngredientes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ingrediente` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idIngredientes`),
  UNIQUE KEY `idIngredientes_UNIQUE` (`idIngredientes`),
  UNIQUE KEY `nombre_ingrediente_UNIQUE` (`nombre_ingrediente`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (32,'Aceite'),(13,'Agua'),(24,'Ajo'),(15,'Apio'),(10,'Azúcar'),(2,'Azúcar extafina'),(21,'Bollo de Hamburguesa'),(20,'Carne de res molida 85% magra'),(14,'Cebolla'),(8,'Chispas de chocolate'),(4,'Chocolate en polvo'),(18,'Concentrado de Pollo'),(1,'Harina de trigo'),(3,'Huevo'),(36,'Jamón'),(22,'Ketchup'),(17,'Laurel'),(27,'Lechuga'),(5,'Mantequilla'),(6,'Margarina'),(30,'Mayonesa'),(23,'Mostaza'),(34,'Orégano'),(35,'Orégano Seco'),(38,'Pan de Caja'),(37,'Papas (frituras)'),(31,'Pechuga de Pollo'),(12,'Perejil'),(19,'Pimienta'),(11,'Pollo'),(7,'Polvo de hornear'),(26,'Queso'),(28,'Queso Amarillo'),(9,'Sal'),(25,'Tomates'),(33,'Tomillo'),(16,'Zanahoria');
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes_receta`
--

DROP TABLE IF EXISTS `ingredientes_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientes_receta` (
  `id_ingrediente` int(11) NOT NULL,
  `id_receta` int(11) NOT NULL,
  `cantidad` varchar(45) CHARACTER SET ucs2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes_receta`
--

LOCK TABLES `ingredientes_receta` WRITE;
/*!40000 ALTER TABLE `ingredientes_receta` DISABLE KEYS */;
INSERT INTO `ingredientes_receta` VALUES (1,1,'55 g'),(2,1,'225 g'),(3,1,'2'),(4,1,'3 cda'),(5,1,'55 g'),(7,1,'1/4 cdta'),(8,1,'170 g'),(9,1,'1/4 cdta'),(10,1,'Al gusto'),(11,5,'1-2 kg'),(12,5,'1 manojo'),(18,5,'22 g'),(13,5,'2 1/2 l'),(16,5,'2 pzs'),(15,5,'2 pzs'),(17,5,'1 pz'),(9,5,'Al gusto'),(19,5,'Al gusto'),(31,3,'500 g'),(24,3,'4 dientes molidos'),(33,3,'1 ctda'),(35,3,'1/2 ctda'),(9,3,'1 1/4 cda'),(19,3,'1/2 cda'),(20,2,'500 g'),(21,2,'6 pzas'),(3,2,'1 pza'),(14,2,'1/2 pza'),(22,2,'Al gusto'),(23,2,'Al gusto'),(24,2,'1 diente'),(27,2,'Al gusto'),(9,2,'Al gusto'),(19,2,'Al gusto'),(28,2,'6 pzas'),(25,2,'1 pza'),(30,2,'Al gusto'),(38,4,'2 rebanadas'),(23,4,'Al gusto'),(30,4,'Al gusto'),(26,4,'2 rebanadas'),(36,4,'Dos rebanadas'),(25,4,'1 pza'),(27,4,'2 hojas');
/*!40000 ALTER TABLE `ingredientes_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasos_receta`
--

DROP TABLE IF EXISTS `pasos_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasos_receta` (
  `id_receta` int(11) NOT NULL,
  `pasos` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ruta_foto` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `num_paso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasos_receta`
--

LOCK TABLES `pasos_receta` WRITE;
/*!40000 ALTER TABLE `pasos_receta` DISABLE KEYS */;
INSERT INTO `pasos_receta` VALUES (5,'Lava bien el pollo. Como con todas las aves, lávalo con agua fría. El agua tibia o caliente promueve el crecimiento de las bacterias que causan la salmonella y otras enfermedades.','Receta_CaldoPollo_id5/paso1.png',1),(5,'Corta el exceso de grasa. Con un cuchillo afilado, un par de tijeras de cocina o tus manos, saca la grasa en exceso que se encuentra en la base del torso del pollo. Si la pones en el caldo, esta grasa suelta será una sorpresa desagradable para el desdichado comensal.','Receta_CaldoPollo_id5/paso2.png',2),(5,'Saca las patas. Jala cada pata del cuerpo y córtalas con un cuchillo afilado. Cuando las hayas cortado, deberás dividir el muslo de la pierna cortándolo a lo largo de la “línea de grasa” que marca la articulación entre la pierna y el muslo.','Receta_CaldoPollo_id5/paso3.png',3),(5,'Saca las alas. Este proceso es parecido al anterior: jala cada ala del cuerpo y córtala del torso con un cuchillo afilado. Corta el ala a la mitad en la articulación y tira la “punta” pequeña a la basura.','Receta_CaldoPollo_id5/paso4.png',4),(5,'Corta la pechuga. Con movimientos hacia delante y hacia atrás, saca la pechuga de las costillas. Coloca la pechuga en una tabla de picar y sepárala del hueso haciendo cortes verticales a lo largo de cualquier lado del centro. Vuelve a revisar cada pechuga después de haberla cortado para asegurarte de que no haya huesos o fragmentos restantes.','Receta_CaldoPollo_id5/paso5.png',5),(5,'Pon las presas de pollo en una olla grande. Cuando hayas cortado la cantidad deseada de carne de pollo, sencillamente ponla en una olla grande y listo. Si lo prefieres, podrás quitar la piel, aunque no es obligatorio.','Receta_CaldoPollo_id5/paso6.png',6),(5,'Agrega agua hasta cubrir el pollo, sal y una hoja de laurel. Añade la cantidad necesaria de agua para cubrir toda la carne, pero eso sí, no añadas demasiado, porque en el caso de que el caldo esté muy espeso, siempre podrás echar más agua después. Si esperas a que un caldo con mucha agua se reduzca, tomará mucho tiempo.','Receta_CaldoPollo_id5/paso7.png',7),(5,'Tapa la olla y deja que hierva. A fuego medio alto, te tomará entre 8 a 10 minutos, pero podría tomar menos o más tiempo dependiendo de cuánta agua utilices.','Receta_CaldoPollo_id5/paso8.png',8),(5,'Deja que el caldo hierva a fuego lento unas 2 1/4 horas. El objetivo será conseguir que la carne de pollo esté tan suave que se desprenda del hueso. Mientras el caldo se cocina, revísalo periódicamente para asegurarte de que esté cociéndose bien y para sacar la espuma que se forme en la parte superior del caldo.','Receta_CaldoPollo_id5/paso9.png',9),(5,'Añade las cebollas, el apio, las zanahorias y una pizca o dos de perejil. Después de que el pollo se haya cocido unas cuantas horas, deberás agregar los vegetales, porque su tiempo de cocción es menor.','Receta_CaldoPollo_id5/paso10.png',10),(5,'Deja que el caldo hierva a fuego lento durante 45 minutos. Revuélvelo periódicamente para asegurarte de que se mezcle bien y para eliminar la espuma superior.','Receta_CaldoPollo_id5/paso11.png',11),(5,'Cuela la sopa, pero retén el caldo. Cuela la sopa en otra olla o recipiente similar de modo que retengas el caldo. Saca la carne de pollo del hueso y tira a la basura las partes que no te apetezcan. Cuando hayas terminado, pon el caldo, el pollo y los vegetales a la olla nuevamente y sírvelo.','Receta_CaldoPollo_id5/paso12.png',12),(2,'Comienza con buena carne. Consigue que un carnicero muela tu carne, con un contenido de grasa del 15 % (si tiene más grasa comenzará a gotear y provocará incendios y llamaradas; y las hamburguesas quedarán muy secas). Si es posible, compra la carne el día en que vayas a cocinarla.','Receta_HamburquesaQueso_id2/paso1.png',1),(2,'Coloca la carne molida en un tazón. Pica la cebolla y el ajo. Colócalos en un tazón y mézclalos hasta que estén bien combinados.','Receta_HamburquesaQueso_id2/paso2.png',2),(2,'Agrega la yema de huevo. Condimenta con sal y pimienta y mezcla bien.','Receta_HamburquesaQueso_id2/paso3.png',3),(2,'Mezcla bien todos los ingredientes. Es más fácil comenzar a mezclar con una cuchara y luego usar tus manos limpias para combinar completamente todos los ingredientes.','Receta_HamburquesaQueso_id2/paso4.png',4),(2,'Forma las hamburguesas. Manipula la carne lo menos posible, para no exprimir los jugos. Forma 6 bolas de igual tamaño con la mezcla, usando tus manos. Presiona las bolas para hacer hamburguesas planas de alrededor de 1 1/2 cm de espesor (Si gustas puedes hacerlas más gruesas, pero la cocción tardara más y puede quedar cruda en el centro). Haz una pequeña hendidura en el centro de la hamburguesa con tu dedo pulgar. Esto evita que el centro se hinche y provoque una cocción desigual.','Receta_HamburquesaQueso_id2/paso5.png',5),(2,'Acomoda las hamburguesas en una bandeja. Cúbrelas con envoltorio plástico o papel de cera. Enfríalas desde 30 minutos a varias horas para que queden más firmes y más fáciles de cocinar. La carne de hamburguesa se cocina mejor cuando está fría. Puedes incluso congelarla pero al cocerla perderá más jugos la carne','Receta_HamburquesaQueso_id2/paso6.png',6),(2,'Después de sacar las hamburguesas del refrigerador, rocíalas con un poco de aceite de cocina o pincélalas con mantequilla fundida antes de cocinarlas. Agrega aceite o mantequilla a la sartén y fríe así las hamburguesas. Asegúrate de cocinarlas a fuego bajo y el tiempo suficiente, hasta que estén completamente cocidas. Puedes hacerlo en una parrilla también pero el tiempo de cocción y la textura son distintos, dependerá de tu gusto.','Receta_HamburquesaQueso_id2/paso7.png',7),(2,'Mientras se cocinan las hamburguesas, prepara los ingredientes. Lava la lechuga y los tomates. Corta los panes por la mitad, y los tomates en rodajas finas, y deshoja la lechuga (procura que solo sea la que vayas a consumir, el resto puedes guardarlo). Embarra las mitades de los panes de con una cucharada de mayonesa cada uno (o puede ser al gusto)','Receta_HamburquesaQueso_id2/paso8.png',8),(2,'Coloca la carne cocida sobre una de las mitades, luego la pieza de queso amarillo, sobre éste la hoja de lechuga (depende del tamaño de la misma, si quieres puedes omitirla), luego pon 1 o 2 rodajas de tomate sobre ésta, y por último cierra los panes uniendo las mitades, y disfruta de tu hamburguesa.','Receta_HamburquesaQueso_id2/paso9.png',9),(3,'Coloca las pechugas de pollo en una bolsa de plástico con cierre hermético y golpéalas con un mazo hasta que tengan 1 cm (1/2 pulgada) de espesor. De esta forma, nivelarás las pechugas para que se cocinen de una manera más uniforme. Si no tienes un mazo, puedes usar un rodillo de cocina o un frasco pesado. Si no tienes bolsas de plástico con cierre hermético que sean lo suficientemente grandes, puedes usar dos pedazos de plástico para envolver.Enfócate en las áreas gruesas de la pechuga de pollo','Receta_PolloParrilla_id3/paso1.png',1),(3,'Condimenta el pollo con sal y pimienta al gusto, con los dedos machaca el oregano seco y espárcelo en todo el pollo, igual con el tomillo. Cubre el tazón con plástico para envolver y déjalo en el refrigerador durante al menos 1 a 2 horas para que se penetren más los sabores.','Receta_PolloParrilla_id3/paso2.png',2),(3,'Limpia, engrasa la parrilla y precaliéntala a temperatura alta. Limpia la rejilla raspándola. Moja una toalla de papel doblada con aceite vegetal y luego limpia la rejilla con ella. El aceite debe hacer que la rejilla luzca brillante. Configura la hornilla a temperatura alta.','Receta_PolloParrilla_id3/paso3.png',3),(3,'Coloca las pechugas de pollo sobre la parrilla cuando se haya terminado de calentar. Si vas a usar dos zonas de fuego, coloca el pollo en la parte más caliente de la parrilla. De ese modo, podrás moverlo hacia la parte más fría si se cocina demasiado rápido. Los pedazos de pollo pueden estar juntos pero sin tocarse.','Receta_PolloParrilla_id3/paso4.png',4),(3,'Cocina el pollo durante 3 a 5 minutos en cada lado, girándolo una vez. Cocínalo hasta que la parte inferior se dore, aproximadamente durante 3 a 5 minutos. Usa un par de tenazas para voltear el pollo, luego cocínalo durante otros 3 a 5 minutos.Estará listo cuando el centro ya no luzca rosado y los jugos estén claros.A diferencia de la carne de res, debes cocinar el pollo por completo. ','Receta_PolloParrilla_id3/paso5.png',5),(3,'Deja que el pollo repose durante 5 a 10 minutos antes de servirlo. De esa manera, los jugos se impregnarán nuevamente en la carne. Mantén el pollo cubierto con papel de aluminio mientras repose para que no se enfríe o se seque.','Receta_PolloParrilla_id3/paso6.png',6),(4,'Toma dos rebanadas de tu tipo de pan favorito. Tuesta el pan en un tostador hasta que esté ligeramente tostado.','Receta_Sandwich_id4/paso1.webp',1),(4,'Esparce mayonesa en una rebanada de pan.','Receta_Sandwich_id4/paso2.webp',2),(4,'Coloca tres rebanadas delgadas de tomate en el lado en el cual esparciste la mayonesa.','Receta_Sandwich_id4/paso3.webp',3),(4,'Coloca muchas hojas de lechuga romana sobre los tomates.','Receta_Sandwich_id4/paso4.webp',4),(4,'Coloca un par de rebanadas de jamón sobre la lechuga.','Receta_Sandwich_id4/paso5.webp',5),(4,'Coloca una rebanada de tu queso favorito sobre el jamón.','Receta_Sandwich_id4/paso6.webp',6),(4,'Sirve con sus papas fritas favoritas y disfrute.','Receta_Sandwich_id4/paso7.webp',7),(1,'Precalienta el horno a 190 ºC (375 ºF).','Receta_Brownie_id1/paso_1.webp',1),(1,'Engrasa y forra una bandeja para hornear de 20 x 20 cm (9 x 9 pulgadas) de unos 3 cm (1 pulgada) de profundidad. También si quieres, podrás forrar la bandeja con papel aluminio.','Receta_Brownie_id1/paso_2.webp',2),(1,'Derrite la mantequilla o margarina en una cacerola pequeña a fuego lento. Mientras esté derritiéndose, haz los dos siguientes pasos. Se supone que derretirla te tomará 1 o 2 minutos. Se derretirá más rápidamente si antes está a temperatura ambiente.','Receta_Brownie_id1/paso_3.webp',3),(1,'Mezcla la azúcar extrafina y los huevos en un tazón por separado. Vierte la azúcar y los huevos a un tazón mediano y revuelve los ingredientes hasta que estén bien integrados. Te tomará 1 minuto. Podrás hacerlo con una cuchara de palo, un batidor manual o incluso una batidora eléctrica.','Receta_Brownie_id1/paso_4.webp',4),(1,'Mezcla la harina y el chocolate en polvo en un tazón separado. Luego, vierte esos ingredientes en un tazón separado y revuélvelos hasta que estén completamente integrados.','Receta_Brownie_id1/paso_5.webp',5),(1,'Vierte la mantequilla derretida en la mezcla de azúcar y huevo. Luego, revuelve hasta que la mantequilla esté bien integrada. Así tendrás una mezcla cremosa y de color amarillo claro.','Receta_Brownie_id1/paso_6.webp',6),(1,'Tamiza la mezcla de cacao dentro de la mezcla de huevo poco a poco. Solo vierte los ingredientes en un tamizador y sacúdelo suavemente para que se airee mientras la mezcla de cacao cae a la mezcla de huevo. Incluso podrás pasar suavemente un tenedor en el fondo del colador para que el cacao se tamice mejor.','Receta_Brownie_id1/paso_7.webp',7),(1,'Añade las chispas de chocolate en la masa. Ahora podrás agregar las chispas de chocolate al resto de los ingredientes. Podrás usar las chispas regulares o las mini chispas, si las quieres usar. Si quieres experimentar y variar un poco las cosas, también podrás optar por las chispas de chocolate blanco.','Receta_Brownie_id1/paso_8.webp',8),(1,'Vierte la mezcla en la bandeja para hornear. Como la bandeja ya está enmantequillada, estará lista para que eches la masa. Uniformiza la masa con un batidor de mano o un cuchillo. No tendrá que estar perfectamente uniforme, pero procura distribuirla lo más uniformemente que puedas para que todos los brownies salgan con una altura parecida.','Receta_Brownie_id1/paso_9.webp',9),(1,'Introduce la bandeja en la rejilla del medio del horno y hornéala durante 30 minutos. Después del minuto 25, sigue revisando los brownies para que no se quemen. Incluso podrías hacer la limpieza mientras esperas a que se horneen. Si rondas por la cocina mientras los brownies empiezan a solidificarse, ¡te darán muchas más ganas de comértelos!','Receta_Brownie_id1/paso_10.webp',10),(1,'Saca los brownies del horno y déjalos enfriar. Espera al menos 5 minutos para que enfríen. A su vez, se solidificarán un poco. Si los cortas mientras todavía estén enfriando, será más difícil hacer cortes limpios.','Receta_Brownie_id1/paso_11.webp',11),(1,'Corta los brownies en trozos masticables. Podrás cortarlos en trozos pequeños para que te los puedas comer de un solo mordisco. También podrás cortar brownies más grandes para que cada porción sea más sustanciosa. ','Receta_Brownie_id1/paso_12.webp',12);
/*!40000 ALTER TABLE `pasos_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetas` (
  `idrecetas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_receta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `costo_aprox` double NOT NULL,
  `foto` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idrecetas`),
  UNIQUE KEY `idrecetas_UNIQUE` (`idrecetas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` VALUES (1,'Brownies','2017-11-29',200,'brownie_demicroondas.jpg'),(2,'Hamburgesa con Queso','2017-11-29',150,'HamburguesaConQueso.jpg'),(3,'Pechuga de pollo a la parrilla','2017-11-29',220,'PechugaPollo.jpg'),(4,'Club Sandwich','2017-11-29',140,'RikoSandwich.jpg'),(5,'Caldo de Pollo','2017-11-29',350,'CalditoDePosho.jpg');
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombre_usuario` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_usuario` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `correo_usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contraseña` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idusuarios`),
  UNIQUE KEY `idusuarios_UNIQUE` (`idusuarios`),
  UNIQUE KEY `corre_usuario_UNIQUE` (`correo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-07 14:06:13
