-- Drop tables

DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;

-- Create tables
CREATE TABLE category (
    category_id VARCHAR(10) NOT NULL PRIMARY KEY,
	category VARCHAR(30) NOT NULL
	
);


CREATE TABLE contacts (
    contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(100) NOT NULL
);


CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(100) NOT NULL
);


CREATE TABLE campaign (
    cf_id int   NOT NULL PRIMARY KEY,
    contact_id int   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR(100)   NOT NULL,
    description VARCHAR   NOT NULL,
    goal money NOT NULL,
    pledged money NOT NULL,
    outcome VARCHAR(100)   NOT NULL,
    backers_count int   NOT NULL,
    country VARCHAR(100)   NOT NULL,
    currency VARCHAR(100)  NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id VARCHAR(100)  NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id VARCHAR(100)   NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
	
);
    

-- Verify the table creation by running a SELECT statement for each table

SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;
SELECT * FROM campaign;

