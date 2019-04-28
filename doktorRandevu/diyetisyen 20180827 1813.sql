-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema diyetisyen
--

CREATE DATABASE IF NOT EXISTS diyetisyen;
USE diyetisyen;

--
-- Definition of table `hastamuayene`
--

DROP TABLE IF EXISTS `hastamuayene`;
CREATE TABLE `hastamuayene` (
  `idhastamuayene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uye_id` int(11) DEFAULT NULL,
  `tc_no` varchar(45) NOT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `dtarihi` varchar(45) NOT NULL,
  `cinsiyet` varchar(45) NOT NULL,
  `dyeri` varchar(45) NOT NULL,
  `yas` varchar(45) NOT NULL,
  `kilo` varchar(45) NOT NULL,
  `boy` varchar(45) NOT NULL,
  `sikayet` varchar(45) DEFAULT NULL,
  `aciklama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhastamuayene`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hastamuayene`
--

/*!40000 ALTER TABLE `hastamuayene` DISABLE KEYS */;
INSERT INTO `hastamuayene` (`idhastamuayene`,`uye_id`,`tc_no`,`adi`,`soyadi`,`dtarihi`,`cinsiyet`,`dyeri`,`yas`,`kilo`,`boy`,`sikayet`,`aciklama`) VALUES 
 (1,5,'8','Beyza','Agir','02.05.1996','Kadin','Kadikoy','22','70','180',NULL,NULL);
/*!40000 ALTER TABLE `hastamuayene` ENABLE KEYS */;


--
-- Definition of table `muayenealma`
--

DROP TABLE IF EXISTS `muayenealma`;
CREATE TABLE `muayenealma` (
  `idmuayenealma` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uye_id` int(11) DEFAULT NULL,
  `randevu_saati` varchar(45) DEFAULT NULL,
  `randevu_tarihi` varchar(45) DEFAULT NULL,
  `kayit` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idmuayenealma`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `muayenealma`
--

/*!40000 ALTER TABLE `muayenealma` DISABLE KEYS */;
INSERT INTO `muayenealma` (`idmuayenealma`,`uye_id`,`randevu_saati`,`randevu_tarihi`,`kayit`) VALUES 
 (1,3,'ÖGLEDEN SONRA','01 / OCAK / 1950',1);
/*!40000 ALTER TABLE `muayenealma` ENABLE KEYS */;


--
-- Definition of table `uyeler`
--

DROP TABLE IF EXISTS `uyeler`;
CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tc_no` varchar(45) DEFAULT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `cinsiyet` varchar(45) NOT NULL,
  `dyeri` varchar(45) NOT NULL,
  `dtarihi` varchar(45) NOT NULL,
  `babaadi` varchar(45) NOT NULL,
  `anneadi` varchar(45) NOT NULL,
  `cepno` varchar(45) NOT NULL,
  `adres` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sifre` varchar(45) NOT NULL,
  `meslek` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uyeler`
--

/*!40000 ALTER TABLE `uyeler` DISABLE KEYS */;
INSERT INTO `uyeler` (`id`,`tc_no`,`adi`,`soyadi`,`cinsiyet`,`dyeri`,`dtarihi`,`babaadi`,`anneadi`,`cepno`,`adres`,`email`,`sifre`,`meslek`) VALUES 
 (2,'2','Jale','Male','Kadin','Istanbul','28.02.1993','Kamil','Emine','5368745585','Bakirkoy','jaledejale@hotmail.com','1','Sekreter'),
 (3,'3','Dursun','Danis','Erkek','Sivas','15.04.1956','Mehmet Turgut','Alime','5858585858','Mekani Avcilar','dursun@danis.com.tr','58','Esnaf'),
 (4,'4','Recep','Ayi','Erkek','Kayseri','01.NISAN.1990','Namik','Namiike','5345687985','Merkez','recep@ayi.com','1',NULL),
 (5,'5','lecep','Ayi','Erkek','Kayseri','01.NISAN.1990','Namik','Namiike','5345687985','Merkez','recep@ayi.com','1',NULL),
 (6,'6','Kemal','Ozturk','Erkek','Istanbul','28.02.1992','Osman','Nilay','5368745685','Taksim','kemalozturk@hotmail.com','1','Doktor'),
 (7,'51611','asdas','sadad','Erkek','ssad','02.OCAK.1931','sadsad','asdsad','35435','sad','sad@sadas','1',NULL),
 (8,'51611','234234','sadad','Erkek','ssad','02.OCAK.1931','sadsad','asdsad','35435','sad','sad@sadas','1',NULL),
 (9,'345435','asdasd','sadad','Erkek','ssad','02.OCAK.1931','sadsad','asdsad','35435','sad','sad@sadas','1',NULL),
 (10,'12321','asda','dasd','Kadin','','04.SUBAT.1931','','','','','','1',NULL);
/*!40000 ALTER TABLE `uyeler` ENABLE KEYS */;


--
-- Definition of table `vezne`
--

DROP TABLE IF EXISTS `vezne`;
CREATE TABLE `vezne` (
  `idvezne` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tc_no` varchar(45) NOT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `ucret` varchar(45) NOT NULL,
  PRIMARY KEY (`idvezne`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vezne`
--

/*!40000 ALTER TABLE `vezne` DISABLE KEYS */;
INSERT INTO `vezne` (`idvezne`,`tc_no`,`adi`,`soyadi`,`ucret`) VALUES 
 (1,'5','busra','korkmaz','55');
/*!40000 ALTER TABLE `vezne` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
