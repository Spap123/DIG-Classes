-- For todays project we will be creating a bookstore database manually , 
-- we will be feeding data into the same
-- by creating tables and then will solve some problem statements based on to the database itself
-- Now that the database is created , we will select the database as default for our workspace
use bookstore;
-- Now we will start creating tables into it
create table Sales(
	SaleID INT,
    BookID INT, 
    CustomerID INT,
    SaleDate DATE,
    Quantity INT,
    TotalPrice DECIMAL(10,2),
    primary key (SaleID)
);
-- above we have created a table , specified different columns and it's data types in it
-- Now we would be entering data in it

insert into Sales(
	SaleID,
    BookID, 
    CustomerID,
    SaleDate,
    Quantity,
    TotalPrice
) values
(1,25,8,'2020-01-05',4,71.31);
-- As an example i have shown how to insert one single data point in it , 
-- i will copy the rest of the code 
-- which i have already prepared for creating rest of the tables and adding 
-- rest of the values to save on time
-- As i said i have copied the rest of the code , let's go through them
INSERT INTO Sales (SaleID, BookID, CustomerID, SaleDate, Quantity, TotalPrice) VALUES 
(2, 24, 1, '2020-01-12', 2, 6.99),
(3, 23, 4, '2020-01-19', 5, 44.0),
(4, 25, 12, '2020-01-26', 4, 17.49),
(5, 20, 19, '2020-02-02', 4, 59.77),
(6, 3, 8, '2020-02-09', 5, 78.65),
(7, 4, 5, '2020-02-16', 2, 67.92),
(8, 22, 2, '2020-02-23', 2, 63.91),
(9, 19, 17, '2020-03-01', 3, 30.07),
(10, 16, 9, '2020-03-08', 1, 65.61),
(11, 25, 17, '2020-03-15', 1, 53.65),
(12, 14, 9, '2020-03-22', 4, 97.83),
(13, 23, 5, '2020-03-29', 4, 87.55),
(14, 14, 15, '2020-04-05', 2, 63.79),
(15, 16, 4, '2020-04-12', 3, 92.06),
(16, 5, 1, '2020-04-19', 5, 63.13),
(17, 12, 5, '2020-04-26', 1, 70.54),
(18, 3, 6, '2020-05-03', 3, 18.23),
(19, 12, 8, '2020-05-10', 3, 37.76),
(20, 3, 15, '2020-05-17', 4, 25.97);

CREATE TABLE Customers (
    CustomerID INT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    JoinDate DATE,
    PRIMARY KEY (CustomerID)
);
-- here the varchar is variable characted with a maximum length of 255 characters
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, JoinDate)
VALUES
(1, 'Ishaani', 'Jain', 'ishaani.jain22@example.com', '2021-05-24'),
(2, 'Vihaan', 'Jain', 'vihaan.jain80@example.com', '2019-06-07'),
(3, 'Aadhya', 'Mehta', 'aadhya.mehta16@example.com', '2020-12-13'),
(4, 'Kavya', 'Jain', 'kavya.jain34@example.com', '2017-02-17'),
(5, 'Arjun', 'Reddy', 'arjun.reddy42@example.com', '2016-04-29'),
(6, 'Aadhya', 'Sharma', 'aadhya.sharma7@example.com', '2012-04-16'),
(7, 'Ananya', 'Reddy', 'ananya.reddy5@example.com', '2017-05-08'),
(8, 'Vivaan', 'Shah', 'vivaan.shah88@example.com', '2016-08-28'),
(9, 'Aditya', 'Shah', 'aditya.shah35@example.com', '2014-05-24'),
(10, 'Ishaani', 'Gupta', 'ishaani.gupta13@example.com', '2017-09-14'),
(11, 'Ishaani', 'Gupta', 'ishaani.gupta76@example.com', '2016-04-15'),
(12, 'Vivaan', 'Shah', 'vivaan.shah73@example.com', '2010-04-17'),
(13, 'Aadhya', 'Reddy', 'aadhya.reddy81@example.com', '2010-12-31'),
(14, 'Kavya', 'Reddy', 'kavya.reddy80@example.com', '2021-07-02'),
(15, 'Vihaan', 'Kumar', 'vihaan.kumar31@example.com', '2020-05-19'),
(16, 'Ananya', 'Verma', 'ananya.verma96@example.com', '2011-01-04'),
(17, 'Aditya', 'Verma', 'aditya.verma37@example.com', '2010-12-21'),
(18, 'Aditya', 'Verma', 'aditya.verma20@example.com', '2018-10-27'),
(19, 'Kavya', 'Mehta', 'kavya.mehta55@example.com', '2013-02-22'),
(20, 'Kavya', 'Shah', 'kavya.shah42@example.com', '2020-08-16');
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(255),
    Nationality VARCHAR(100),
    BirthYear INT,
    DeathYear INT
);
INSERT INTO Authors (AuthorID, Name, Nationality, BirthYear, DeathYear)
VALUES
(1, 'R.K. Narayan', 'Canadian', 1876, 1910.0),
(2, 'J.K. Rowling', 'British', 1953, 1932.0),
(3, 'Gabriel Garcia Marquez', 'French', 1960, NULL),
(4, 'Oscar Wilde', 'Canadian', 1952, 1907.0),
(5, 'J.R.R. Tolkien', 'Canadian', 1946, 1941.0),
(6, 'Rohinton Mistry', 'Canadian', 1873, NULL),
(7, 'Jhumpa Lahiri', 'French', 1908, 2019.0),
(8, 'Charles Dickens', 'Canadian', 1889, 1913.0),
(9, 'Jhumpa Lahiri', 'Australian', 1955, 1944.0),
(10, 'Chetan Bhagat', 'Canadian', 1899, NULL),
(11, 'George Orwell', 'British', 1928, NULL),
(12, 'Harper Lee', 'American', 1851, NULL),
(13, 'Arundhati Roy', 'Australian', 1856, NULL),
(14, 'William Shakespeare', 'British', 1945, 1904.0),
(15, 'Mark Twain', 'Australian', 1977, NULL),
(16, 'Agatha Christie', 'Canadian', 1874, 1903.0),
(17, 'F. Scott Fitzgerald', 'French', 1981, 2005.0),
(18, 'Ernest Hemingway', 'British', 1877, NULL),
(19, 'Leo Tolstoy', 'Canadian', 1975, 1987.0),
(20, 'J.R.R. Tolkien', 'Australian', 1982, 1930.0),
(21, 'Rohinton Mistry', 'French', 1970, NULL),
(22, 'Ernest Hemingway', 'American', 1866, NULL),
(23, 'Anita Desai', 'British', 1859, NULL),
(24, 'Ernest Hemingway', 'French', 1914, 1905.0),
(25, 'Arundhati Roy', 'Canadian', 1963, NULL);

CREATE TABLE Books (
    BookID INT,
    Title VARCHAR(255),
    AuthorID INT,
    Genre VARCHAR(255),
    Price DECIMAL(10, 2),
    PublishYear INT,
    PRIMARY KEY (BookID)
);
INSERT INTO Books (BookID, Title, AuthorID, Genre, Price, PublishYear) VALUES
(1, 'Mystery of the Old House', 101, 'Mystery', 12.99, 2010),
(2, 'Journey through the Stars', 102, 'Science Fiction', 15.99, 2012),
(3, 'The Art of Cooking', 103, 'Non-Fiction', 20.00, 2015),
(4, 'History of the Ancient World', 104, 'History', 18.50, 2011),
(5, 'Understanding the Cosmos', 105, 'Science', 22.99, 2013),
(6, 'The Great Adventures', 106, 'Adventure', 14.99, 2014),
(7, 'Computer Fundamentals', 107, 'Education', 30.00, 2016),
(8, 'Meditation and Mindfulness', 108, 'Self-Help', 12.00, 2017),
(9, 'The Poet’s Heart', 109, 'Poetry', 11.99, 2009),
(10, 'World War II Chronicles', 110, 'History', 19.99, 2018),
(11, 'Gardening for Beginners', 111, 'Hobby', 16.99, 2019),
(12, 'The Universe Within Us', 112, 'Philosophy', 21.99, 2011),
(13, 'Exploring the Deep Ocean', 113, 'Science', 13.99, 2013),
(14, 'The Secrets of Magic', 114, 'Fantasy', 17.99, 2008),
(15, 'Life on Other Planets', 115, 'Science Fiction', 20.50, 2020),
(16, 'The Digital Revolution', 116, 'Technology', 29.99, 2012),
(17, 'A Guide to Classical Music', 117, 'Music', 24.99, 2014),
(18, 'The Lost Civilization', 118, 'Historical Fiction', 23.99, 2010),
(19, 'Basics of Photography', 119, 'Art', 18.99, 2019),
(20, 'Tales of the Unknown', 120, 'Mystery', 14.99, 2020);

-- Now as you can see , we have executed every part of the code block separately , so 
-- that we didn't get the table not existing error

-- Let's get into the problem statements now one by one 

-- Q1. Select the titles of all books and showcase
select title from books;
-- Q2. Select the names of all the authors 
select name from authors;
-- Q3. Where Claues - Select all the books with a price greater than $15
select * from books where price > 15;
-- Q4. Now we need to select all the customers who have joined after january 1 , 2011
select * from customers where joindate > '2011-01-01';
-- Q5. try the reverse as well
select * from customers where joindate < '2011-01-01';
-- Q6. Now we will be using the group by clause  , we will group books by genre and count the 
-- number of books in in genre
select genre,count(*) as no_of_books
from books
group by genre;
-- Q7. Now lets group sales by customers and the sum the total price for each customer 
select customerid,sum(totalprice) as total
from sales
group by customerid;
-- Q8. Now we will be selecting all the books and order them based on publish year
select * from books 
order by PublishYear desc;
-- Q9. Now lets get to the authors , we will be ordering the authors based on their 
-- birth year.
select * from authors order by BirthYear;
-- the data inserted are incorrect so 
-- please excuse that , nobody can be born in 1982 and die on 1930
-- Q10. Now we will select genres having more than one book 
select genre from books group by genre 
having count(*) > 1;
-- Q11. Select customers who have made purchase more than $100
select customerid from sales
group by customerid 
having sum(TotalPrice)>100;

-- Aggregate Functions
-- Q12. Find out average price for books in each genre
select genre,avg(price) as 'average_price' from books 
group by genre;
-- Q13. Now let's find out how many books were published each year
select PublishYear,count(*) as no_of_books from books 
group by PublishYear;
-- Q14. What is the total number of books sold
select sum(quantity) as 'total_books_sold' from sales;

-- JOINS
-- Q15. what is the title of the books bought by a specific customer (e.g - customerid -5)
select 
b.title , b.genre , b.price , s.customerid
from sales s 
inner join books b 
on s.bookid = b.bookid 
where s.CustomerID = 5;

-- Q16. provide list of all sales transaction including book title ,customer name ,sale date 
-- price
select b.title , concat(c.firstname,' ',c.lastname)as cust_name, s.saledate,s.totalprice 
from sales s 
inner join books b on s.bookid =b.bookid
inner join customers c on s.customerid = c.CustomerID;
-- lets provide a space between first and last name
-- Q17. Now we will be using sub query , find out the customer name joined latest 
-- This first query is written to fetch the latest joining date
select concat(firstname,' ',lastname) as 'cust_name' from customers
where joindate = (select max(joindate) from customers);
-- Q18. Now let's list the authors who have not sold a single book 
select name from authors 
where authorid not in (
	select authorid from books where bookid in(
		select bookid from sales
    )
);
-- so we are using multiple subqueries here -
-- the first layer -  select bookid from sales
-- the second (parent layer) - select authorid from books where bookid in
-- the third (final layer) - select name from authors 
-- where authorid not in
-- Q19. lets go ahead and find out the customer that has made the highest number of purchase 

select concat(firstname,' ',lastname) as cust_name from customers
where customerid = (
	select customerid from sales group by customerid order by count(*) desc limit 1
);
-- now lets see what the individual query is doing here 
-- select customerid from sales group by customerid order by count(*) desc limit 1
-- Q20. lets find out the average price of books in each genre 
select genre , avg(price) as 'avergae_price' from books group by genre;
-- Q21.Lets find out how many customers joined each year 
select year(joindate) as year, count(*) as no_of_customers 
from customers group by year(joindate);
-- Q22. What is the total price generated each year from sales 
select year(saledate) as year , sum(totalprice) as 'totalprice'
from sales group by year(saledate);
-- Q23. what is the quantity of books sold yeach year 
select year(saledate) as saleyear, sum(quantity) as 'total_qty' from sales 
group by year(saledate)






























