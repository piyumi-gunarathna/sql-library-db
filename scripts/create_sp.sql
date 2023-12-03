-- Create a stored procedure that calculates the average number of days a book is borrowed before being returned. 
-- The procedure should take a book_id as input and return the average number of days.

CREATE PROCEDURE CalculateAverageBorrowDays
    @input_book_id INT
AS
BEGIN
    DECLARE @avgDays FLOAT;

    SELECT @avgDays = AVG(DATEDIFF(day, borrow_date, ISNULL(return_date, GETDATE())))
    FROM borrowed_books
    WHERE book_id = @input_book_id;

    SELECT @avgDays AS AverageBorrowDays;
END;
