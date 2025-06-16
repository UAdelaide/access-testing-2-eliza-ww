CREATE TABLE user (
    user_id int NOT NULL AUTO_INCREMENT,
    username varchar(255),
    pass varchar(255),
    address_id int,
    PRIMARY KEY (user_id)
);

INSERT INTO user (username, pass, address_id) VALUES ("abigail1", "password", 1);
INSERT INTO user (username, pass, address_id) VALUES ("bobbyhill", "somethingaintright", 2);


CREATE TABLE listing (
    listing_id int NOT NULL AUTO_INCREMENT,
    user_id int,
    book_isbn int,
    price int,
    PRIMARY KEY (listing_id)
);

INSERT INTO listing (user_id, book_isbn, price) VALUES (1, 1, 500);

CREATE TABLE message (
    message_id int NOT NULL AUTO_INCREMENT,
    messenger_id int,
    recipient_id int,
    contents varchar(255),
    timestamp DATETIME,
    PRIMARY KEY (message_id)
);

INSERT INTO message (messenger_id, recipient_id, contents) VALUES (1, 2, "do you want to buy some books, kid?")

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
    address_id int NOT NULL AUTO_INCREMENT,
    house_number varchar(255),
    street varchar(255),
    city varchar(255),
    postcode int,
    PRIMARY KEY (address_id)
);

INSERT INTO address (house_number, street, city, postcode) VALUES (101, "Kitchener", "Netherby", 5062);