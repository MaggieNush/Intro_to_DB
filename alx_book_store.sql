CREATE DATABASE alx_book_store;

USE DATABASE alx_book_store;

CREATE TABLE Books(
    book_id PRIMARY KEY,
    title VARCHAR (130),
    author_id,
    price DOUBLE,
    publication_date DATE,

    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors(
    author_id PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE Customers(
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders(
    order_id PRIMARY KEY,
    customer_id,
    order_date DATE,

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details(
    orderdetailid PRIMARY KEY,
    order_id,
    book_id,
    quantity DOUBLE
);

