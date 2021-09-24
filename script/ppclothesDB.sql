-- MySQL Script generated by MySQL Workbench
-- Mon Sep 20 12:06:19 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `project` ;

-- -----------------------------------------------------
-- Schema project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8 ;
USE `project` ;

-- -----------------------------------------------------
-- Table `project`.`Brand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`Brand` ;

CREATE TABLE IF NOT EXISTS `project`.`Brand` (
  `idBrand` INT NOT NULL AUTO_INCREMENT,
  `brandName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idBrand`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idBrand_UNIQUE` ON `project`.`Brand` (`idBrand` ASC) VISIBLE;

CREATE UNIQUE INDEX `Brandcol_UNIQUE` ON `project`.`Brand` (`brandName` ASC) VISIBLE;

/*
-- Query: SELECT * FROM project.brand
LIMIT 0, 1000

-- Date: 2021-09-02 16:11
*/
START TRANSACTION;
USE `project`;
INSERT INTO `project`.`brand` (`idBrand`,`brandName`) VALUES (3,'H&M');
INSERT INTO `project`.`brand` (`idBrand`,`brandName`) VALUES (1,'LOUIS VUITTON');
INSERT INTO `project`.`brand` (`idBrand`,`brandName`) VALUES (2,'SHEIN');
INSERT INTO `project`.`brand` (`idBrand`,`brandName`) VALUES (4,'UNIQLO');

COMMIT;

-- -----------------------------------------------------
-- Table `project`.`Color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`Color` ;

CREATE TABLE IF NOT EXISTS `project`.`Color` (
  `idColor` INT NOT NULL AUTO_INCREMENT,
  `colorName` VARCHAR(45) NOT NULL,
  `colorCode` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idColor`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idColor_UNIQUE` ON `project`.`Color` (`idColor` ASC) VISIBLE;

CREATE UNIQUE INDEX `nameColor_UNIQUE` ON `project`.`Color` (`colorName` ASC) VISIBLE;

CREATE UNIQUE INDEX `colorCode_UNIQUE` ON `project`.`Color` (`colorCode` ASC) VISIBLE;

/*
-- Query: SELECT * FROM project.color
LIMIT 0, 1000

-- Date: 2021-09-02 16:12
*/
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (1,'Black','#000000');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (2,'White','#FFFFFF');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (3,'Navy Blue','#141a2a');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (4,'Burgundy','#2f0b0d');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (5,'Rose','#FF75B8');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (6,'Orange Vif','#E9581F');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (7,'Grey','#504E4A');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (8,'Green','#85B09A');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (9,'Lilac Purple','#CECFE8');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (10,'Dusty Blue','#88ACC1');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (11,'Beige','#D6CFBD');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (12,'Light Blue','#AEC2D9');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (13,'Ecru','#FFF1C2');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (14,'Light Grey','#E1E1E9');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (15,'Charcoal Grey','#302E31');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (16,'Light Pink','#DFC3C2');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (17,'Mustard','#E7AF42');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (18,'Blue','#2B4C9B');
INSERT INTO `color` (`idColor`,`colorName`,`colorCode`) VALUES (19,'Light Yellow','#FDDA98');

-- -----------------------------------------------------
-- Table `project`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`Product` ;

CREATE TABLE IF NOT EXISTS `project`.`Product` (
  `idPro` INT NOT NULL AUTO_INCREMENT,
  `proName` VARCHAR(100) NOT NULL,
  `proDescript` LONGTEXT NOT NULL,
  `proPrice` DECIMAL(10,2) NOT NULL,
  `proAmount` INT NOT NULL,
  `proMFD` DATE NOT NULL,
  `proPathImg` MEDIUMTEXT NOT NULL,
  `idBrand` INT NOT NULL,
  PRIMARY KEY (`idPro`, `idBrand`),
  CONSTRAINT `fk_Product_Brand`
    FOREIGN KEY (`idBrand`)
    REFERENCES `project`.`Brand` (`idBrand`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idProduct_UNIQUE` ON `project`.`Product` (`idPro` ASC) VISIBLE;

CREATE UNIQUE INDEX `proName_UNIQUE` ON `project`.`Product` (`proName` ASC) VISIBLE;

CREATE INDEX `fk_Product_Brand_idx` ON `project`.`Product` (`idBrand` ASC) VISIBLE;

/*
-- Query: SELECT * FROM project.product
LIMIT 0, 1000

-- Date: 2021-09-02 16:12
*/
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (1,'MONOGRAM OMBRE SILK PAJAMA TOP','The House’s iconic Monogram motif is playfully scaled-up and printed in a summery ombre effect to give this short-sleeved pajama top a fresh lounge feel. Cut from comfortable, lightweight silk that further relaxes the boxy silhouette. White piping and a front patch pocket refine the easy-to-wear style.',73999.00,100,'2021-02-23','img01.png',1);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (2,'GALAXY PRINT MIXED-MATERIAL T-SHIRT','The playful graphic on this mixed-material T-shirt is inspired by comic books: vibrant LV Initials and Monogram Flowers collide with stars and planets on printed silk twill. The contrasting back is cut slightly longer, in cotton jersey. The silhouette is relaxed and roomy. The top square button on the shoulder is engraved with a House signature.',3039900.00,50,'2020-03-30','img03.png',1);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (3,'MIXED KNIT LIGHTWEIGHT SUMMER PULLOVER','Different textures and tones of natural fibers combine to create this summer pullover. The shoulders and left sleeve stand out in contrast cotton poplin, while a mix of knitted cotton panels complete the silhouette. The collection’s essential leather Monogram patch signs the chest.',80880.00,80,'2019-06-15','img05.png',1);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (4,'SHEIN Slogan Graphic Hoodie','Wide top in sweatshirt fabric with a lined, drawstring hood, long raglan sleeves and ribbing at the cuffs and hem. Soft brushed inside.',380.00,65,'2020-12-23','img07.png',2);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (5,'SHEIN Twist Hem Rib-knit Tee','Short twist in a soft, fine knit with a lightly brushed finish. Round neckline and long sleeves.',160.00,110,'2019-11-06','img09.png',2);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (6,'SHEIN Ribbed Mock Neck Lettuce-Edge Top','Short Lettuce Trim in soft cotton jersey with overlocked edges.',180.00,60,'2021-08-09','img11.png',2);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (7,'Cut-out-detail Top','Short-sleeved top in soft cotton jersey with a small stand-up collar and cut-out shape at the top. Overlocked edges around the collar, cuffs and hem.',399.00,55,'2019-01-09','img16.png',3);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (8,'Motif-detail Hoodie','Hoodie in soft sweatshirt fabric with a motif. Lined, drawstring hood, low dropped shoulders, long sleeves and ribbing at the cuffs and hem. Soft brushed inside. The polyester content of the hoodie is recycled.',499.00,100,'2020-04-06','img18.png',3);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (9,'Jersey Dress','Short jersey dress with a small gathered collar and an opening and button at the back of the neck. Seam at the waist and long, cuffed sleeves. Unlined.',799.00,55,'2021-07-28','img21.png',3);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (10,'WOMEN premium lambswool crew neck Long Sleevesweater','Fabric Details 100% and wool. Washing instruction that use Hand wash cold.',990.00,150,'2021-05-21','img23.png',4);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (11,'WOMEN Rayon Long Sleeve Blouse','Soft, silky rayon fabric and Wrinkle-resistant even after washing for easy care.',790.00,85,'2021-02-18','img27.png',4);
INSERT INTO `product` (`idPro`,`proName`,`proDescript`,`proPrice`,`proAmount`,`proMFD`,`proPathImg`,`idBrand`) VALUES (12,'WOMEN color crew neck Short Sleeve T-Shirt','Made from soft and supple cotton viscose. A crew neck with a perfect opening at the neck.',190.00,68,'2019-10-03','img30.png',4);

-- -----------------------------------------------------
-- Table `project`.`ProWithColors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`ProWithColors` ;

CREATE TABLE IF NOT EXISTS `project`.`ProWithColors` (
  `idProWithCol` INT NOT NULL AUTO_INCREMENT,
  `idColor` INT NOT NULL,
  `idPro` INT NOT NULL,
  PRIMARY KEY (`idProWithCol`, `idColor`, `idPro`),
  CONSTRAINT `fk_Color_has_Product_Color`
    FOREIGN KEY (`idColor`)
    REFERENCES `project`.`Color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Color_has_Product_Product`
    FOREIGN KEY (`idPro`)
    REFERENCES `project`.`Product` (`idPro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Color_has_Product_Product_idx` ON `project`.`ProWithColors` (`idPro` ASC) VISIBLE;

CREATE INDEX `fk_Color_has_Product_Color_idx` ON `project`.`ProWithColors` (`idColor` ASC) VISIBLE;

CREATE UNIQUE INDEX `idProWithCol_UNIQUE` ON `project`.`ProWithColors` (`idProWithCol` ASC) VISIBLE;

/*
-- Query: SELECT * FROM project.prowithcolors
LIMIT 0, 1000

-- Date: 2021-09-02 16:12
*/
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (1,5,1);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (2,6,1);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (3,1,2);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (4,2,2);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (5,1,3);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (6,13,3);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (7,3,4);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (8,4,4);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (9,2,5);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (10,4,5);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (11,2,6);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (12,7,6);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (13,8,6);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (14,9,6);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (15,10,6);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (16,11,7);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (17,12,7);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (18,14,8);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (19,15,8);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (20,16,8);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (21,4,9);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (22,1,9);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (23,17,10);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (24,18,10);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (25,2,10);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (26,1,10);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (27,3,11);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (28,2,11);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (29,1,11);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (30,19,12);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (31,2,12);
INSERT INTO `prowithcolors` (`idProWithCol`,`idColor`,`idPro`) VALUES (32,3,12);

-- -----------------------------------------------------
-- Table `project`.`Cart`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`Cart` ;

CREATE TABLE IF NOT EXISTS `project`.`Cart` (
  `idCart` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idCart`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `idCart_UNIQUE` ON `project`.`Cart` (`idCart` ASC) VISIBLE;

/*
-- Query: SELECT * FROM project.cart
LIMIT 0, 1000

-- Date: 2021-09-02 16:11
*/
INSERT INTO `cart` (`idCart`) VALUES (1);
INSERT INTO `cart` (`idCart`) VALUES (2);
INSERT INTO `cart` (`idCart`) VALUES (3);
INSERT INTO `cart` (`idCart`) VALUES (4);

-- -----------------------------------------------------
-- Table `project`.`Account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`Account` ;

CREATE TABLE IF NOT EXISTS `project`.`Account` (
  `idAccount` INT NOT NULL AUTO_INCREMENT,
  `accUsername` VARCHAR(45) NOT NULL,
  `accPass` VARCHAR(45) NOT NULL,
  `accRole` VARCHAR(45) NOT NULL,
  `accFname` VARCHAR(45) NOT NULL,
  `accLname` VARCHAR(45) NOT NULL,
  `accPhone` VARCHAR(20) NOT NULL,
  `accAddress` VARCHAR(300) NOT NULL,
  `idCart` INT NOT NULL,
  PRIMARY KEY (`idAccount`, `idCart`),
  CONSTRAINT `fk_Account_Cart1`
    FOREIGN KEY (`idCart`)
    REFERENCES `project`.`Cart` (`idCart`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `accUsername_UNIQUE` ON `project`.`Account` (`accUsername` ASC) VISIBLE;

CREATE INDEX `fk_Account_Cart1_idx` ON `project`.`Account` (`idCart` ASC) VISIBLE;

CREATE UNIQUE INDEX `idAccount_UNIQUE` ON `project`.`Account` (`idAccount` ASC) VISIBLE;

/*
-- Query: SELECT * FROM project.account
LIMIT 0, 1000

-- Date: 2021-09-02 16:10
*/
INSERT INTO `account` (`idAccount`,`accUsername`,`accPass`,`accRole`,`accFname`,`accLname`,`accPhone`,`accAddress`,`idCart`) VALUES (1,'yamjaii','jaiyen123','member','yamcha','fainting','0833333333','88 north kaio\'s planet 86868',1);
INSERT INTO `account` (`idAccount`,`accUsername`,`accPass`,`accRole`,`accFname`,`accLname`,`accPhone`,`accAddress`,`idCart`) VALUES (2,'sunshinewink','moonsun','member','arthit','songsaeng','0822222222','99 land-ofthesun99/9 sawang 12345 ',2);
INSERT INTO `account` (`idAccount`,`accUsername`,`accPass`,`accRole`,`accFname`,`accLname`,`accPhone`,`accAddress`,`idCart`) VALUES (3,'somdui','12345','admin','somdui','puipui','0811111111','112 inyourheart22/2 forever 12222',3);
INSERT INTO `account` (`idAccount`,`accUsername`,`accPass`,`accRole`,`accFname`,`accLname`,`accPhone`,`accAddress`,`idCart`) VALUES (4,'kiritokun','asuna','admin','kirito','kirigaya','0812345689','36 swordland10 underworld 11111',4);

-- -----------------------------------------------------
-- Table `project`.`CartDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`CartDetails` ;

CREATE TABLE IF NOT EXISTS `project`.`CartDetails` (
  `idCartDetail` INT NOT NULL AUTO_INCREMENT,
  `idPro` INT NOT NULL,
  `idCart` INT NOT NULL,
  `proPerPiece` INT NOT NULL,
  `idColor` INT NOT NULL,
  PRIMARY KEY (`idCartDetail`, `idPro`, `idCart`, `idColor`),
  CONSTRAINT `fk_CartDetail_Product1`
    FOREIGN KEY (`idPro`)
    REFERENCES `project`.`Product` (`idPro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CartDetail_Cart1`
    FOREIGN KEY (`idCart`)
    REFERENCES `project`.`Cart` (`idCart`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CartDetails_Color1`
    FOREIGN KEY (`idColor`)
    REFERENCES `project`.`Color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_CartDetail_Product_idx` ON `project`.`CartDetails` (`idPro` ASC) VISIBLE;

CREATE INDEX `fk_CartDetail_Cart_idx` ON `project`.`CartDetails` (`idCart` ASC) VISIBLE;

CREATE UNIQUE INDEX `idCartDetail_UNIQUE` ON `project`.`CartDetails` (`idCartDetail` ASC) VISIBLE;

CREATE INDEX `fk_CartDetails_Color1_idx` ON `project`.`CartDetails` (`idColor` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `project`.`Receipt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`Receipt` ;

CREATE TABLE IF NOT EXISTS `project`.`Receipt` (
  `idReceipt` INT NOT NULL AUTO_INCREMENT,
  `idAccount` INT NOT NULL,
  `datePurchase` DATETIME NULL,
  PRIMARY KEY (`idReceipt`, `idAccount`),
  CONSTRAINT `fk_Receipt_Account1`
    FOREIGN KEY (`idAccount`)
    REFERENCES `project`.`Account` (`idAccount`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Receipt_Account1_idx` ON `project`.`Receipt` (`idAccount` ASC) VISIBLE;

CREATE UNIQUE INDEX `idReceipt_UNIQUE` ON `project`.`Receipt` (`idReceipt` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `project`.`ReceiptDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `project`.`ReceiptDetails` ;

CREATE TABLE IF NOT EXISTS `project`.`ReceiptDetails` (
  `idReceiptDetails` INT NOT NULL AUTO_INCREMENT,
  `idReceipt` INT NOT NULL,
  `brandName` VARCHAR(45) NOT NULL,
  `proName` VARCHAR(100) NOT NULL,
  `proPrice` DECIMAL(10,2) NOT NULL,
  `proPerPiece` INT NOT NULL COMMENT 'เสื้อ A มีจำนวน 10 ชิ้น\nเสื้อ B มีจำนวน 10 ชิ้น\nproPerPiece(A) = 10\nproPerPiece(B) = 10',
  `idColor` INT NOT NULL,
  PRIMARY KEY (`idReceiptDetails`, `idReceipt`, `idColor`),
  CONSTRAINT `fk_ReceiptDetails_Receipt1`
    FOREIGN KEY (`idReceipt`)
    REFERENCES `project`.`Receipt` (`idReceipt`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ReceiptDetails_Color1`
    FOREIGN KEY (`idColor`)
    REFERENCES `project`.`Color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_ReceiptDetails_Receipt1_idx` ON `project`.`ReceiptDetails` (`idReceipt` ASC) VISIBLE;

CREATE UNIQUE INDEX `idReceiptDetails_UNIQUE` ON `project`.`ReceiptDetails` (`idReceiptDetails` ASC) VISIBLE;

CREATE INDEX `fk_ReceiptDetails_Color1_idx` ON `project`.`ReceiptDetails` (`idColor` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
