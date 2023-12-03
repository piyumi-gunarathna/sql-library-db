-- SQL query to retrieve the top 10 most borrowed books, along with the number of times each book has been borrowed.
SELECT TOP 10 b.book_id, b.title, b.author, COUNT(bb.book_id) AS borrow_count
FROM books b
JOIN borrowed_books bb ON b.book_id = bb.book_id
GROUP BY b.book_id, b.title, b.author
ORDER BY borrow_count DESC;


-- SQL query to find the user who has borrowed the most books from the library.
SELECT TOP 1 u.user_id, u.first_name, u.last_name, COUNT(bb.borrow_id) AS borrowed_count
FROM users u
JOIN borrowed_books bb ON u.user_id = bb.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY borrowed_count DESC;


-- SQL query to find all books published in the year 2020 that have not been borrowed by any user.
SELECT b.book_id, b.title, b.author
FROM books b
LEFT JOIN borrowed_books bb ON b.book_id = bb.book_id
WHERE b.publication_year = 2020
    AND bb.borrow_id IS NULL;


-- SQL query that lists users who have borrowed books published by a specific author (e.g., "J.K. Rowling").
SELECT DISTINCT u.user_id, u.first_name, u.last_name
FROM users u
JOIN borrowed_books bb ON u.user_id = bb.user_id
JOIN books b ON bb.book_id = b.book_id
WHERE b.author = 'J.K. Rowling';

