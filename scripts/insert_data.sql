-- Insert sample data
INSERT INTO books (book_id, title, author, publication_year, isbn)
VALUES
    (1, 'To Kill a Mockingbird', 'Harper Lee', 1960, '9780061120084'),
    (2, '1984', 'George Orwell', 1949, '9780451524935'),
    (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, '9780743273565'),
    (4, 'Pride and Prejudice', 'Jane Austen', 1813, '9780679783268'),
    (5, 'The Catcher in the Rye', 'J.D. Salinger', 1951, '9780316769488'),
    (6, 'Brave New World', 'Aldous Huxley', 1932, '9780060850524'),
    (7, 'The Lord of the Rings', 'J.R.R. Tolkien', 2020, '9780544003415'),
    (8, 'Moby-Dick', 'Herman Melville', 1851, '9780142437247'),
    (9, 'Frankenstein', 'Mary Shelley', 1818, '9780141439471'),
    (10, 'The Hobbit', 'J.R.R. Tolkien', 1937, '9780547928227'),
    (11, 'The Odyssey', 'Homer',2020, '9780140268867'),
    (12, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 2020, '9780747532743');

INSERT INTO users (user_id, first_name, last_name, email, registration_date)
VALUES
    (1, 'John', 'Doe', 'john@example.com', '2023-01-15'),
    (2, 'Jane', 'Smith', 'jane@example.com', '2022-05-20'),
    (3, 'Alice', 'Johnson', 'alice@example.com', '2023-09-10'),
    (4, 'Michael', 'Brown', 'michael@example.com', '2022-07-03'),
    (5, 'Emily', 'Garcia', 'emily@example.com', '2023-03-28'),
    (6, 'William', 'Martinez', 'william@example.com', '2022-11-11'),
    (7, 'Sophia', 'Anderson', 'sophia@example.com', '2023-06-05'),
    (8, 'Daniel', 'Wilson', 'daniel@example.com', '2022-09-19'),
    (9, 'Olivia', 'Taylor', 'olivia@example.com', '2023-02-14'),
    (10, 'Matthew', 'Thomas', 'matthew@example.com', '2022-04-30'),
    (11, 'Ella', 'Robinson', 'ella@example.com', '2023-08-22'),
    (12, 'James', 'Hernandez', 'james@example.com', '2022-12-17');

INSERT INTO borrowed_books (borrow_id, user_id, book_id, borrow_date, return_date)
VALUES
    (1, 1, 1, '2023-02-01', '2023-02-15'),
    (2, 2, 2, '2022-06-10', '2022-06-30'),
    (3, 3, 3, '2023-10-05', NULL),
    (4, 4, 4, '2022-08-05', NULL),
    (5, 5, 5, '2020-04-15', '2023-05-05'),
    (6, 6, 6, '2022-12-20', '2023-01-10'),
    (7, 7, 7, '2023-06-25', NULL),
    (8, 8, 8, '2022-10-02', NULL),
    (9, 9, 9, '2023-03-10', '2023-04-01'),
    (10, 10, 10, '2022-05-05', NULL),
    (11, 2, 3, '2022-12-25', NULL),
    (12, 12, 12, '2022-12-25', NULL),
    (13, 1, 2, '2022-12-25', NULL),
    (14, 1, 3, '2022-12-25', NULL);
