-- -----------------------------------------------------
-- Schema proudwolf-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `proudwolf-ecommerce`;

CREATE SCHEMA `proudwolf-ecommerce`;
USE `proudwolf-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proudwolf-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proudwolf-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('TRENERKA');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TRENERKA-1000', 'Freedom Plava', 
'Detalji o proizvodu: Materijal: 95% poliester 5% elastin GSM: 280 Boja: Plava sa belim linijama. Održavanje: Dozvoljeno pranje u veš mašini.

ProudWolf Freedom muška trenerka modernih linija, uz dinamični dizajn, predstavlja autentičnost brenda PW, a to je smeli i odvažni sportsko-rekreativni stil. Trenerka poseduje kontrastne pruge koje se spuštaju niz ramena, rukave i nogavice.⁣ ⁣ Dukserica sa podesivom kapuljačom i bočnim džepovima zakopčava se na rajsferšlus. Bočni džepovi su otvoreni i idealni su za ruke ili neku sitnicu neophodnu tokom treninga. Ranfle oko rukava pružaju savršenu pokrivenost tokom različitih pokreta.⁣ ⁣ Donji deo trenerke inspirisan je klasičnim sportskim stilom sa nogavicama koje se sužavaju. Poseduje otvorene, bočne džepove, kao i zadnji džep.⁣ ⁣ Trenerka je izrađena od glatkog materijala - 95% poliester, 5% elastin koji se blago presijava ističući sportsku eleganciju. ⁣ ⁣ Idealna je za sve muškarce koji vole sportsku eleganciju, uživanje u potpunom komforu i slobodi pokreta.⁣ Sažmi
',
'assets/images/products/placeholder.png'
,1,100,5990.00,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('TRENERKA-1001', 'Freedom Siva', 
'Detalji o proizvodu: Materijal: 95% poliester 5% elastin GSM: 280 Boja: Siva sa crnim linijama Održavanje: Dozvoljeno pranje u veš mašini.

ProudWolf Freedom muška trenerka modernih linija, uz dinamični dizajn, predstavlja autentičnost brenda PW, a to je smeli i odvažni sportsko-rekreativni stil. Trenerka poseduje kontrastne pruge koje se spuštaju niz ramena, rukave i nogavice.⁣ ⁣ Dukserica sa podesivom kapuljačom i bočnim džepovima zakopčava se na rajsferšlus. Bočni džepovi su otvoreni i idealni su za ruke ili neku sitnicu neophodnu tokom treninga. Ranfle oko rukava pružaju savršenu pokrivenost tokom različitih pokreta.⁣ ⁣ Donji deo trenerke inspirisan je klasičnim sportskim stilom sa nogavicama koje se sužavaju. Poseduje otvorene, bočne džepove, kao i zadnji džep.⁣ ⁣ Trenerka je izrađena od glatkog materijala - 95% poliester, 5% elastin koji se blago presijava ističući sportsku eleganciju. ⁣ ⁣ Idealna je za sve muškarce koji vole sportsku eleganciju, uživanje u potpunom komforu i slobodi pokreta.⁣ Sažmi
',
'assets/images/products/placeholder.png'
,1,100,5990.00,1, NOW());

