-- obtain title, author, and timestamp
    -- title and author obtained in book
    -- isbn obtained in listing
    -- listing id obtained in history
    -- timestamp obtained in history
-- of books bought by a given user
-- ordered from most to least recent

SELECT book.title, book.author, history.timestamp FROM history
WHERE user_id = 1
INNER JOIN listing ON history.listing_id = listing.listing_id
INNER JOIN book ON listing.book_isbn = book.isbn
ORDER BY history.timestamp DESC;

-- select titles, authors, and the number of sold books for the 10 most sold books
-- ordered by most to least sold 

SELECT title, author FROM history
ORDER BY (
COUNT(isbn) FROM history
) DESC;