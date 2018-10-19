-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: phpapi
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.17.10.1

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
-- Current Database: `phpapi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `phpapi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `phpapi`;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` mediumtext NOT NULL,
  `url` text,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'El viejo y el mar','El viejo y el mar es una novela escrita por Ernest Miller Hemingway en 1951 en Cuba y publicada en 1952. Fue su último trabajo de ficción importante publicado en vida y posiblemente su obra más famosa','https://books.google.es/books?id=isn88pG1CnUC','2014-06-01 01:12:26','2014-05-31 15:12:26'),(2,'Cien años de soledad','Es considerada una obra maestra de la literatura hispanoamericana y universal, así como una de las obras más traducidas y leídas en español','https://books.google.es/books?id=QBwnDwAAQBAJ&printsec=frontcover','2014-06-01 01:12:26','2014-05-31 15:12:26'),(3,'Don Quijote de la Mancha','El ingenioso hidalgo don Quijote de la Mancha, es la obra más destacada de la literatura española y una de las principales de la literatura universal','https://books.google.es/books?id=TwJ8GFSjezkC&printsec=frontcover','2014-06-01 01:12:26','2018-09-17 16:08:52'),(4,'Fahrenheit 451','Fahrenheit 451 es una novela distópica del escritor estadounidense Ray Bradbury, publicada en 1953 y considerada una de sus mejores obras. La novela presenta una sociedad estadounidense del futuro en la que los libros están prohibidos y existen «bomberos» que queman cualquiera que encuentren','https://books.google.es/books?id=r4YfNJDGx2AC&printsec=frontcover','2018-09-17 18:33:53','2018-09-17 16:33:53'),(5,'El lobo estepario','El lobo estepario es el título de una de las más célebres novelas del escritor suizo-alemán Hermann Hesse, la cual combina el estilo autobiográfico con algunos elementos de fantasía, especialmente hacia el final de la obra','https://books.google.es/books?id=goRpMpeyZYoC&printsec=frontcover','2018-09-19 18:47:02','2018-09-19 16:49:33'),(6,'Tokio blues','Tokio Blues, Norwegian Wood es una novela del autor japonés Haruki Murakami del año 1987. La novela es una historia nostálgica que trata los temas de la pérdida y la sexualidad','https://books.google.es/books?id=dT3OVymWkKkC&printsec=frontcover','2014-06-01 01:12:26','2018-09-19 16:54:43'),(8,'Ética para Amador','Ética para Amador es un ensayo publicado en abril de 1991 por el escritor y filósofo español Fernando Savater. El libro consta de 9 capítulos y trata sobre la ética, moral y filosofía de la vida a través de la historia','https://books.google.es/books?id=xA14s-rFZn4C&printsec=frontcover','2018-09-17 18:33:53','2018-09-19 16:59:54'),(9,'El hombre duplicado','El hombre duplicado es una novela escrita por el autor portugués José Saramago, ganador del Premio Nobel de Literatura de 1998. La novela fue publicada en 2002','https://books.google.es/books?id=7vPFRSTehO0C&printsec=frontcover','2018-09-17 18:33:53','2018-09-19 17:03:41'),(11,'A través del espejo y lo que Alicia encontró allí','A través del espejo y lo que Alicia encontró allí es una novela infantil escrita por Lewis Carroll en 1871. Es la continuación de Las aventuras de Alicia en el país de las maravillas. Muchas cosas de las que acontecen en el libro parecen, metafóricamente, reflejadas en un espejo','https://books.google.es/books?id=QOkFCwAAQBAJ&printsec=frontcover','2018-09-17 18:33:53','2018-09-19 17:24:33'),(12,'La ciudad y los perros','La ciudad y los perros es la primera novela del escritor peruano Mario Vargas Llosa. Ganador con el Premio Biblioteca Breve en 1962, fue publicada en octubre de 1963 y ganó el Premio de la Crítica Española. Originalmente el autor la tituló La morada del héroe y luego Los impostores','https://books.google.es/books?id=eLGhCwAAQBAJ&printsec=frontcover','2018-09-19 19:16:03','2018-09-19 17:16:03'),(13,'Veinte mil leguas de viaje submarino','Veinte mil leguas de viaje submarino es una de las obras literarias más conocidas del escritor francés Julio Verne. Se dio a conocer en la Magasin d\'Éducation et de Récréation desde el 20 de marzo de 1869 hasta el 20 de junio de 1870.​ De manera íntegra, la obra fue publicada en Francia en dos partes','https://books.google.es/books?id=GNAv8Ti8PjIC&printsec=frontcover','2018-09-19 19:16:59','2018-09-19 17:23:44');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-19 19:56:47
