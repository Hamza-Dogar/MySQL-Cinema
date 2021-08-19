DROP DATABASE if exists cinema;
CREATE DATABASE cinema ;
USE cinema ;

CREATE TABLE films (
    film_id INT AUTO_INCREMENT,
    film_name VARCHAR(50) NOT NULL,
    screen BIT UNIQUE,
    screen_time DATETIME NOT NULL,
    luxury_seat BOOLEAN NOT NULL,
    seat SMALLINT NOT NULL,
    film_price DECIMAL NOT NULL,
    PRIMARY KEY (film_id)
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    customer_address VARCHAR(50) NOT NULL,
    rewards_customer BOOLEAN NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT,
    fk_film_id INT,
    fk_customer_id INT,
    film_time DATETIME NOT NULL,
    PRIMARY KEY (ticket_id),
    FOREIGN KEY (fk_film_id) REFERENCES films(film_id)
    FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id)
);