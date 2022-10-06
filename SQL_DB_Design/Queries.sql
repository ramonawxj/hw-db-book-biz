USE `BookIndustry`;

-- ------------------------------
-- Books per author
-- ------------------------------
SELECT *
FROM Author AS A
Join Author_Book  AS AB
	ON A.AuthorID = AB.AuthorID
Join Book AS B
	ON B.ISBN = AB.ISBN;
    
-- ------------------------------
-- Authors per book
-- ------------------------------
SELECT *
FROM Book AS B
Join Author_Book  AS AB
	ON B.ISBN = AB.ISBN
Join Author AS A
	ON A.AuthorID = AB.AuthorID
Order BY
	AB.ISBN;
    
-- ------------------------------
-- Author royalties on a book 
-- ------------------------------
SELECT Author.AuthorID, Book.ISBN, Book.Royalty,
Author_Book.AuthorID, Author_Book.ISBN
FROM Author 
Join Author_Book 
	ON Author.AuthorID = Author_Book.AuthorID
Join Book
	ON Book.ISBN = Author_Book.ISBN
Order BY
	Book.ISBN;

-- ------------------------------
-- Book royalties per author
-- ------------------------------
SELECT Author.AuthorID, Book.ISBN, Book.Royalty,
Author_Book.AuthorID, Author_Book.ISBN
FROM Author 
Join Author_Book 
	ON Author.AuthorID = Author_Book.AuthorID
Join Book
	ON Book.ISBN = Author_Book.ISBN
Order BY
	Book.ISBN;
    
-- ------------------------------
-- Books in a genre
-- ------------------------------
SELECT *
FROM Book
WHERE GENRE = 'Science Fiction';

-- ------------------------------
-- Books published by a publisher
-- ------------------------------
SELECT Book.Publisher, Book.ISBN
FROM Book
ORDER BY Publisher;
    
-- ------------------------------
-- Editors per book
-- ------------------------------
SELECT *
FROM Book AS B
Join Editor_Book AS EB
	ON B.ISBN = EB.ISBN
Join Editor AS E
	ON E.EditorID = EB.EditorID
Order BY
	EB.ISBN;
    
-- ------------------------------
-- Books per editor
-- ------------------------------
SELECT *
FROM Editor AS E
Join Editor_Book AS EB
	ON E.EditorID = EB.EditorID
Join Book AS B 
	ON B.ISBN = EB.ISBN 
Order BY
	EB.EditorID;
    
-- ------------------------------
-- Books in an order (#00001)
-- ------------------------------
SELECT *
FROM CurrentOrder
Where OrderNumber = 00001;
    
-- ------------------------------
-- Orders for a book (ISBN = 0002)
-- ------------------------------
SELECT *
FROM CurrentOrder
Where ISBN = 0002;

-- ------------------------------
-- Customer orders
-- ------------------------------
SELECT *
FROM CurrentOrder AS O
Join Order_Customer AS OC
	ON O.OrderNumber = OC.OrderNumber
Join Customer AS C
	ON C.CustomerID = OC.CustomerID;
    
-- ------------------------------
-- Orders per customer
-- ------------------------------
SELECT *
FROM Customer AS C
Join Order_Customer AS OC
	ON C.CustomerID = OC.CustomerID
Join CurrentOrder AS O
	ON O.OrderNumber = OC.OrderNumber 
Order BY
	OC.CustomerID;