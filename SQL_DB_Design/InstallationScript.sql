DROP DATABASE IF EXISTS `BookIndustry`;
CREATE DATABASE IF NOT EXISTS `BookIndustry`;
USE `BookIndustry`;

-- ------------------------------
-- Table Author
-- ------------------------------
CREATE TABLE `Author` (
	`AuthorID`		int NOT NULL,
    `Name`			varchar (40) NOT NULL,
    `Address`		varchar (40) NOT NULL,
    `Phone`			varchar (24) NOT NULL,
	PRIMARY KEY (`AuthorID`),
    INDEX `AuthorID` (`AuthorID` ASC)
);

-- ------------------------------
-- Populate Author
-- ------------------------------
INSERT INTO `Author` VALUES(01, 'Irene', 'Jupiter', '111111');
INSERT INTO `Author` VALUES(02, 'Anna', 'Mercury', '222222');
INSERT INTO `Author` VALUES(03, 'Leah', 'Venus', '333333');

-- ------------------------------
-- Table Book
-- ------------------------------
CREATE TABLE `Book`(
	`ISBN`			int NOT NULL,
    `Name`			varchar (40) NOT NULL,
    `Genre`			varchar (24) NOT NULL,		
    `Price`			float (10) NOT NULL,
    `Date`			date NULL,
    `Publisher`		varchar (40) NOT NULL,
    `Royalty`		float (10) NOT NULL,
    PRIMARY KEY (`ISBN`),
    INDEX `ISBN` (`ISBN` ASC)
);

-- ------------------------------
-- Populate Book
-- ------------------------------
INSERT INTO `Book` VALUES(0001, 'IreneAnnaBook1', 'Noval', '25', '1999-04-20', 'PublisherA', '10');
INSERT INTO `Book` VALUES(0002, 'IreneBook1', 'Science Fiction', '30', '1999-04-20', 'PublisherB', '10');
INSERT INTO `Book` VALUES(0003, 'IreneBook2', 'Noval', '45', '1999-04-20', 'PublisherA', '10');
INSERT INTO `Book` VALUES(0004, 'AnnaBook1', 'Noval', '25', '1998-04-18', 'PublisherA', '10');
INSERT INTO `Book` VALUES(0005, 'AnnaBook2', 'Noval', '25', '1999-04-20', 'PublisherB', '10');
INSERT INTO `Book` VALUES(0006, 'LeahBook1', 'Noval', '45', '1998-11-23', 'PublisherB', '10');

-- ------------------------------
-- Table Publisher
-- ------------------------------
CREATE TABLE `Publisher` (
	`PublisherID`		int NOT NULL,
    `Name`				varchar (40) NOT NULL,
    `Address`			varchar (40) NOT NULL,
    `Phone`				varchar (24) NOT NULL,
	PRIMARY KEY (`PublisherID`),
    INDEX `PublisherID` (`PublisherID` ASC)
);

-- ------------------------------
-- Populate Publisher
-- ------------------------------
INSERT INTO `Publisher` VALUES(01, 'PublisherA', 'Earth', '010101');
INSERT INTO `Publisher` VALUES(02, 'PublisherB', 'Earth', '020202');

-- ------------------------------
-- Table Editor
-- ------------------------------
CREATE TABLE `Editor` (
	`EditorID`		int NOT NULL,
    `Name`			varchar (40) NOT NULL,
    `Address`		varchar (40) NOT NULL,
    `Phone`			varchar (24) NOT NULL,
	PRIMARY KEY (`EditorID`),
    INDEX `EditorID` (`EditorID` ASC)
);

-- ------------------------------
-- Populate Editor
-- ------------------------------
INSERT INTO `Editor` VALUES(01, 'EditorA', 'Jupiter', '001001');
INSERT INTO `Editor` VALUES(02, 'EditorB', 'Mercury', '002002');
INSERT INTO `Editor` VALUES(03, 'EditorC', 'Venus', '003003');

-- ------------------------------
-- Table Customer
-- ------------------------------
CREATE TABLE `Customer` (
	`CustomerID`		int NOT NULL,
    `Name`				varchar (40) NOT NULL,
    `Address`			varchar (40) NOT NULL,
    `Phone`				varchar (24) NOT NULL,
	PRIMARY KEY (`CustomerID`),
    INDEX `CustomerID` (`CustomerID` ASC)
);

-- ------------------------------
-- Populate Customer
-- ------------------------------
INSERT INTO `Customer` VALUES(01, 'CustomerA', 'Saturn', '001001');
INSERT INTO `Customer` VALUES(02, 'CustomerB', 'Saturn', '002002');
INSERT INTO `Customer` VALUES(03, 'CustomerC', 'Saturn', '003003');

-- ------------------------------
-- Table Order
-- ------------------------------
DROP TABLE If EXISTS `CurrentOrder`;
CREATE TABLE `CurrentOrder` (
	`OrderNumber`		int NOT NULL,
    `Date`				date NULL,
    `ISBN`				varchar (40) NOT NULL,
    `Price`				float (24) NOT NULL,
    `Quantity`			int NOT NULL,
	-- PRIMARY KEY (`OrderNumber`),
    INDEX `OrderNumber` (`OrderNumber` ASC)
);

-- ------------------------------
-- Populate CurrentOrder
-- ------------------------------
INSERT INTO `CurrentOrder` VALUES(00001, '2020-01-01', '0001', '25', '1');
INSERT INTO `CurrentOrder` VALUES(00001, '2020-01-01', '0002', '30', '2');
INSERT INTO `CurrentOrder` VALUES(00001, '2020-01-01', '0003', '45', '1');
INSERT INTO `CurrentOrder` VALUES(00002, '2020-01-02', '0001', '25', '2');
INSERT INTO `CurrentOrder` VALUES(00003, '2020-01-03', '0002', '30', '1');
INSERT INTO `CurrentOrder` VALUES(00004, '2020-01-04', '0004', '25', '1');
INSERT INTO `CurrentOrder` VALUES(00004, '2020-01-04', '0005', '25', '1');
INSERT INTO `CurrentOrder` VALUES(00005, '2020-01-05', '0006', '45', '5');
INSERT INTO `CurrentOrder` VALUES(00006, '2020-01-06', '0006', '45', '1');

-- ------------------------------
-- Table Author_Book
-- ------------------------------
CREATE TABLE `Author_Book` (
	`AuthorID`			int NOT NULL,
    `ISBN`				varchar (40) NOT NULL
);

-- ------------------------------
-- Populate Author_Book
-- ------------------------------
INSERT INTO `Author_Book` VALUES(01, '0001');
INSERT INTO `Author_Book` VALUES(01, '0002');
INSERT INTO `Author_Book` VALUES(01, '0003');
INSERT INTO `Author_Book` VALUES(02, '0004');
INSERT INTO `Author_Book` VALUES(02, '0005');
INSERT INTO `Author_Book` VALUES(02, '0001');
INSERT INTO `Author_Book` VALUES(03, '0006');

-- ------------------------------
-- Table Editor_Book
-- ------------------------------
CREATE TABLE `Editor_Book` (
	`EditorID`			int NOT NULL,
    `ISBN`				varchar (40) NOT NULL
);

-- ------------------------------
-- Populate Editor_Book
-- ------------------------------
INSERT INTO `Editor_Book` VALUES(01, '0002');
INSERT INTO `Editor_Book` VALUES(01, '0004');
INSERT INTO `Editor_Book` VALUES(02, '0006');
INSERT INTO `Editor_Book` VALUES(02, '0001');
INSERT INTO `Editor_Book` VALUES(02, '0003');
INSERT INTO `Editor_Book` VALUES(03, '0005');
INSERT INTO `Editor_Book` VALUES(03, '0001');
INSERT INTO `Editor_Book` VALUES(03, '0006');

-- ------------------------------
-- Table Order_Customer
-- ------------------------------
CREATE TABLE `Order_Customer` (
	`OrderNumber`			int NOT NULL,
    `CustomerID`			int NOT NULL
);

-- ------------------------------
-- Populate Order_Customer
-- ------------------------------
INSERT INTO `Order_Customer` VALUES(00001, '02');
INSERT INTO `Order_Customer` VALUES(00002, '03');
INSERT INTO `Order_Customer` VALUES(00003, '03');
INSERT INTO `Order_Customer` VALUES(00004, '01');
INSERT INTO `Order_Customer` VALUES(00005, '02');
INSERT INTO `Order_Customer` VALUES(00006, '03');




