-- Create an index on the publication_year column of the books table to improve query performance.

CREATE INDEX idx_publication_year ON books(publication_year);