CREATE DATABASE Amazon;
USE Amazon;
select * from amazon;
CREATE TABLE amazon (
    invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    product_line VARCHAR(30) NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    VAT FLOAT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    date DATE NOT NULL,
    time TIMESTAMP NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    cogs DECIMAL(12, 2) NOT NULL,
    gross_margin_percentage FLOAT NOT NULL,
    gross_income DECIMAL(10, 2) NOT NULL,
    rating FLOAT NOT NULL
);


select * from amazon;

-- Add a new column for time of day
ALTER TABLE amazon ADD COLUMN timeofday VARCHAR(10);

UPDATE amazon
SET timeofday = CASE
    WHEN HOUR(time) < 12 THEN 'Morning'
    WHEN HOUR(time) < 18 THEN 'Afternoon'
    ELSE 'Evening'
END;

-- Add a new column for day of the week
ALTER TABLE amazon ADD COLUMN dayname VARCHAR(10);

UPDATE amazon
SET dayname = DAYNAME(date);

-- Add a new column for month name
ALTER TABLE amazon ADD COLUMN monthname VARCHAR(10);

UPDATE amazon
SET monthname = MONTHNAME(date);

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE amazon ADD COLUMN timeofday VARCHAR(10);

UPDATE amazon
SET timeofday = CASE
    WHEN HOUR(time) < 12 THEN 'Morning'
    WHEN HOUR(time) < 18 THEN 'Afternoon'
    ELSE 'Evening'
END;


ALTER TABLE amazon ADD COLUMN dayname VARCHAR(10);

UPDATE amazon
SET dayname = DAYNAME(date);

ALTER TABLE amazon ADD COLUMN monthname VARCHAR(10);

UPDATE amazon
SET monthname = MONTHNAME(date);
select * from amazon;
