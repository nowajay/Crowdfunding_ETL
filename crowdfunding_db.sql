DROP TABLE if exists contacts;
DROP TABLE if exists campaign;
DROP TABLE if exists category;
DROP TABLE if exists subcategory;

-- STARTING HOMEWORK--

--Create tables and import data--
CREATE TABLE category (
	category_id varchar(50) NOT NULL PRIMARY KEY,
	category varchar(50)
);
SELECT * FROM category;

CREATE TABLE subcategory (
	subcategory_id varchar(50) NOT NULL PRIMARY KEY,
	subcategory varchar(50)
);
SELECT * FROM subcategory;

CREATE TABLE campaign (
	cf_id integer NOT NULL PRIMARY KEY,
	contact_id integer UNIQUE, 
	company_name varchar(100),
	description varchar(100),
	goal float,
	pledged float,
	outcome varchar(50),
	backers_count integer,
	country varchar(50),
	currency varchar(50),
	launch_date date,
	end_date date,
	category_id varchar(50),
	subcategory_id varchar(50),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
SELECT * FROM campaign; 

CREATE TABLE contacts (
	contact_id integer NOT NULL PRIMARY KEY,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50),
	FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);
SELECT * FROM contacts; 
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign; 
