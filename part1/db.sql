CREATE TABLE user (
    id int NOT NULL AUTO_INCREMENT,
    username varchar(255),
    pass varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE listing (
    id int NOT NULL AUTO_INCREMENT,
    user_id int,
    book_isbn int,
    price int,
    PRIMARY KEY (id)
);

CREATE TABLE message (
    id int NOT NULL AUTO_INCREMENT,
    messenger_id int,
    recipient_id int,
    contents varchar(255),
    timestamp DATETIME,
    PRIMARY KEY (id)
);

CREATE TABLE book (
    isbn int,
    title varchar(255),
    author varchar(255),
    PRIMARY KEY (isbn)
);

CREATE TABLE history (
    user_id int,
    listing_id int,
    timestamp DATETIME,
    FOREIGN KEY (user_id)
);

CREATE TABLE address (
    address_id int,
    listing_id int,
    timestamp DATETIME,
    FOREIGN KEY (user_id)
);
