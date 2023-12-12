CREATE TABLE books(
    book_id INT AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY(book_id)
);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

--REVERSE--
SELECT REVERSE(UPPER("why does my cat look at me with such hatred?"))

--REPLACE--
SELECT REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'), '', '-')

--REPLACE add -> in the title--
SELECT REPLACE(title, ' ', '->')
AS title FROM books;

--REVERSE lastname--
SELECT author_lname AS forwards,
REVERSE(author_lname) AS backwards 
FROM books;

--fullname in one row and uppercase--
SELECT UPPER(CONCAT(author_fname, ' ', author)) 
AS "full name in caps" FROM books;

--combine title, 'was released', and released_year--
SELECT CONCAT(title, ' was released in ', released_year)
AS 'blurb' FROM books;

--combining title adding ..., combining autho name, and adding "in stock" after quantity--
SELECT CONCAT(SUBSTRING(title,1,10),'...') AS 'short title',
CONCAT(author_lname, ',', author_fname) AS 'author',
CONCAT(stock_quantity, ' ', 'in stock') AS quantiy
FROM books;

INSERT INTO books(title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


