SELECT title, author, timestamp FROM history
WHERE user_id = {id here}
INNER JOIN listing ON listing.listing_id = history.listing_id
INNER JOIN book ON book_isbn = listing.isbn; 

-- obtain title, author, and timestamp
    -- title and author obtained in book
    -- isbn obtained in listing
    -- listing id obtained in history
    -- timestamp obtained in history
-- of books bought by a given user
-- ordered from most to least recent

SELECT * FROM 

SELECT * FROM history
WHERE user_id = 1
INNER JOIN listing ON history.listing_id = listing.listing_id
INNER JOIN book ON listing.isbn = book_isbn; 