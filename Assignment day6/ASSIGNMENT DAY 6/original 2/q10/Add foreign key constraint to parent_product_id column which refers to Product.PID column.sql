ALTER TABLE product
ADD FOREIGN KEY (parent_product_id) REFERENCES product(PID);

DESCRIBE PRODUCT;
show create table product ;

product	CREATE TABLE `product` (
   `PID` int NOT NULL,
   `Name` varchar(30) DEFAULT NULL,
   `colour` varchar(10) DEFAULT NULL,
   `Manufacturer_Date` date DEFAULT NULL,
   `Manufacturer_ID` int DEFAULT NULL,
   `parent_product_id` int DEFAULT NULL,
   PRIMARY KEY (`PID`),
   KEY `Manufacturer_ID` (`Manufacturer_ID`),
   KEY `parent_product_id` (`parent_product_id`),
   CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturer` (`MID`),
   CONSTRAINT `product_ibfk_2` FOREIGN KEY (`parent_product_id`) REFERENCES `product` (`PID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci