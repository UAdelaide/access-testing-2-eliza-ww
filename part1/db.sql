CREATE TABLE user (
    user_id int NOT NULL AUTO_INCREMENT,
    username varchar(255),
    pass varchar(255),
    PRIMARY KEY (user_id)
);

CREATE TABLE listing (
    listing_id int NOT NULL AUTO_INCREMENT,
    user_id int,
    book_isbn int,
    price int,
    PRIMARY KEY (listing_id)
);

CREATE TABLE message (
    message_id int NOT NULL AUTO_INCREMENT,
    messenger_id int,
    recipient_id int,
    contents varchar(255),
    timestamp DATETIME,
    PRIMARY KEY (message_id)
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
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE address (
    address_id int,
    house_number varchar(255),
    street varchar(255),
    city varchar(255),
    postcode int,
    PRIMARY KEY (address_id)
);
