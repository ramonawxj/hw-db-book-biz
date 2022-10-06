-- ------------------------------
-- Populate Author
-- ------------------------------
INSERT INTO `Author` VALUES(01, 'Irene', 'Jupiter', '111111');
INSERT INTO `Author` VALUES(02, 'Anna', 'Mercury', '222222');
INSERT INTO `Author` VALUES(03, 'Leah', 'Venus', '333333');

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
-- Populate Publisher
-- ------------------------------
INSERT INTO `Publisher` VALUES(01, 'PublisherA', 'Earth', '010101');
INSERT INTO `Publisher` VALUES(02, 'PublisherB', 'Earth', '020202');

-- ------------------------------
-- Populate Editor
-- ------------------------------
INSERT INTO `Editor` VALUES(01, 'EditorA', 'Jupiter', '001001');
INSERT INTO `Editor` VALUES(02, 'EditorB', 'Mercury', '002002');
INSERT INTO `Editor` VALUES(03, 'EditorC', 'Venus', '003003');

-- ------------------------------
-- Populate Customer
-- ------------------------------
INSERT INTO `Customer` VALUES(01, 'CustomerA', 'Saturn', '001001');
INSERT INTO `Customer` VALUES(02, 'CustomerB', 'Saturn', '002002');
INSERT INTO `Customer` VALUES(03, 'CustomerC', 'Saturn', '003003');

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
-- Populate Order_Customer
-- ------------------------------
INSERT INTO `Order_Customer` VALUES(00001, '02');
INSERT INTO `Order_Customer` VALUES(00002, '03');
INSERT INTO `Order_Customer` VALUES(00003, '03');
INSERT INTO `Order_Customer` VALUES(00004, '01');
INSERT INTO `Order_Customer` VALUES(00005, '02');
INSERT INTO `Order_Customer` VALUES(00006, '03');
