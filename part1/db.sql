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
    message varchar(255),
    date,
    PRIMARY KEY (id)
);