SELECT title, author, timestamp FROM history
WHERE user_id = {id here}
INNER JOIN listing ON listing.listing_id = history.listing_id
INNER JOIN book ON book_isbn = listing.isbn; 

SELECT * FROM history
WHERE user_id = 1
INNER JOIN listing ON history.listing_id = listing.listing_id
INNER JOIN book ON listing.isbn = book_isbn; 