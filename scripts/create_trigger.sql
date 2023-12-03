-- Create a trigger that automatically updates the return_date 
-- in the borrowed_books table to the current date when a book is returned.

CREATE TRIGGER UpdateReturnDateOnBookReturn
ON borrowed_books
AFTER UPDATE
AS
BEGIN
    IF UPDATE(return_date) 
    BEGIN
        UPDATE borrowed_books
        SET return_date = GETDATE()
        FROM borrowed_books AS bb
        INNER JOIN inserted AS i ON bb.borrow_id = i.borrow_id
        WHERE bb.return_date <> GETDATE() 
          AND bb.return_date IS NOT NULL;
    END
END;