--All entries in one table

SELECT * 
FROM reviews;

-- All entries in one table where some criteria are true

SELECT * 
FROM reviews
WHERE rating > 3
AND post_date > 'January 1, 2023';

--all entries where some value is in common (A JOIN)


SELECT 
    books.title, 
    authors.first_name,
    authors.last_name,
	books.pages,
	books.summary
FROM 
    books
JOIN books_authors
   ON books.isbn = books_authors.isbn
JOIN 
    authors
ON books_authors.author_id = authors.author_id;


--DELETE single entry by id (deletes Big Fish)

DELETE FROM books
WHERE isbn = 9780743484251;

--DELETE multiple entries by some common criteria

DELETE FROM reviews
WHERE rating < 2;

--INSERT a new entry

INSERT INTO books (isbn, title, summary, publication_date, pages)
VALUES 
(9780439023481, 'The Hunger Games', 'Could you survive on your own in the wild, with every one out to make sure you don''t live to see the morning?

In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and one girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV.

Sixteen-year-old Katniss Everdeen, who lives alone with her mother and younger sister, regards it as a death sentence when she steps forward to take her sister''s place in the Games. But Katniss has been close to dead before—and survival, for her, is second nature. Without really meaning to, she becomes a contender. But if she is to win, she will have to start making choices that weight survival against humanity and life against love.', 'September 14, 2008', 374);

INSERT INTO authors (first_name, last_name, birthyear)
VALUES 
('Suzanne', 'Collins', 1962);

--UPDATE an entry

UPDATE users
SET email = 'newemail@fakeyfake.com'
WHERE username = 'ladylivs';

UPDATE users
SET username = 'sophiiiiieeeee'
WHERE email = 'newemail@fakeyfake.com';


-- be sure the INSERT, UPDATE, and DELETE make appropriate changes in the right direction


-- OLIVIA WISHLIST: 
 --TODO if life were great, routing query where you pull up reviews by isbn