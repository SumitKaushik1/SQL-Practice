show create table `order`;
order, CREATE TABLE `order` (
  `OID` int NOT NULL,
  `Customer_id` int DEFAULT NULL,
  `Reference` int DEFAULT NULL,
  `Purchase_Date` date DEFAULT NULL,
  PRIMARY KEY (`OID`),
  KEY `Customer_id` (`Customer_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci




ALTER TABLE `Order`
DROP CONSTRAINT `order_ibfk_1`;

-- order_ibfk_1 it is the constraint id taht server allocate  now iit is before drop of this constraint

# Table, Create Table
