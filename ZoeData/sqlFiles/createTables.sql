
CREATE TABLE PAYMENT (
	ID INT NOT NULL PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL
);

CREATE TABLE SHIPMENT (
	ID INT NOT NULL PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL,
	DELIVERY_DATE DATE,
	FEES FLOAT
);

CREATE TABLE AUTHOR (
	ID INT NOT NULL PRIMARY KEY,
	NAME_AUTHOR VARCHAR(50) NOT NULL
);

CREATE TABLE CONTACT (
	ID INT NOT NULL PRIMARY KEY,
	TITLE NVARCHAR(200) NOT NULL,
	CONTENT NVARCHAR(1500) NOT NULL,
	SENDER_NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL
);

CREATE TABLE PUBLICATION (
	ID INT NOT NULL PRIMARY KEY,
	NAME_PUBLICATION NVARCHAR(50) NOT NULL
);

CREATE TABLE TYPELANGUAGE (
	ID INT NOT NULL PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL
);

CREATE TABLE GROUP_BOOK (
	ID INT NOT NULL PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL,
	ID_LANGUAGE INT NOT NULL REFERENCES TYPELANGUAGE(ID)
);

CREATE TABLE CATEGORIES (
	ID INT NOT NULL PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL,
	ID_GROUP INT NOT NULL REFERENCES GROUP_BOOK(ID)
);

CREATE TABLE BOOK (
	ID INT NOT NULL PRIMARY KEY,
	NAME NVARCHAR(200) NOT NULL,
	PRICE DECIMAL(13,2) NOT NULL,
	PRICESALE DECIMAL(13,2) NOT NULL,
	NEW BOOLEAN,
	HOT BOOLEAN,
	PROMOTION BOOLEAN,
	BESTSELLER BOOLEAN,
	ACTIVE BOOLEAN,
	DATE_CREATED DATE NOT NULL,
	QUANTITY INT UNSIGNED NOT NULL,
	DESCRIPTION NVARCHAR(5000) NOT NULL, 
	INFORMATION NVARCHAR(15000) NOT NULL,
	ID_PUBLICATION INT NOT NULL REFERENCES PUBLICATION(ID),
	ID_CATEGORIES INT NOT NULL REFERENCES CATEGORIES(ID)
);

CREATE TABLE IMAGE (
	ID INT NOT NULL PRIMARY KEY,
	ID_BOOK INT NOT NULL REFERENCES BOOK(ID),
	LINK VARCHAR(200) NOT NULL
);

CREATE TABLE COMPOSED (
	ID INT NOT NULL PRIMARY KEY,
	ID_AUTHOR INT NOT NULL REFERENCES AUTHOR(ID),
	ID_BOOK INT NOT NULL REFERENCES BOOK(ID)
);

CREATE TABLE CART (
	ID INT NOT NULL PRIMARY KEY,
	TOTAL DECIMAL(13,2) DEFAULT 0,
	DATE_CREATED DATE NOT NULL
);

CREATE TABLE USER (
	ID INT NOT NULL PRIMARY KEY,
	NAME NVARCHAR(50) NOT NULL,
	EMAIL NVARCHAR(50) NOT NULL,
	PHONE VARCHAR(15) NOT NULL,
	PASSWORD NVARCHAR(50) NOT NULL,
	ADDRESS NVARCHAR(200) NOT NULL,
	CITY NVARCHAR(50) NOT NULL,
	IMG VARCHAR(200) NOT NULL,
	BIRTHDAY DATE NOT NULL,
	ACTIVE BOOLEAN NOT NULL,
	ISADMIN BOOLEAN NOT NULL,
	ID_CART INT NOT NULL REFERENCES CART(ID)
    
);

CREATE TABLE BLOG (
	ID INT NOT NULL PRIMARY KEY,
	TITLE NVARCHAR(200) NOT NULL,
	IMG VARCHAR(200) NOT NULL,
	ID_WRITER INT NOT NULL REFERENCES USER(ID),
	WRITE_DATE DATE NOT NULL,
	ABSTRACT NVARCHAR(1500) NOT NULL
--	CONTENT NVARCHAR(1500) NOT NULL, CHUA BIET LUU NTN
-- CO THE LUU THEO DOAN
-- TAO THEM BANG PARAGRAPH: ID, ID_BLOG, TEXT
);

CREATE TABLE FAVORITE (
	ID INT NOT NULL PRIMARY KEY,
	ID_USER INT NOT NULL REFERENCES USER(ID),
	ID_BOOK INT NOT NULL REFERENCES BOOK(ID)
);

CREATE TABLE COMMENT (
	ID INT NOT NULL PRIMARY KEY,
	ID_BOOK INT NOT NULL REFERENCES BOOK(ID),
	ID_USER INT NOT NULL REFERENCES USER(ID),
	TITLE NVARCHAR(200) NOT NULL,
	STAR TINYINT NOT NULL,
	CONTENT NVARCHAR(1500) NOT NULL,
	DATE_CREATED DATE NOT NULL
);

CREATE TABLE CART_DETAIL (
	ID INT NOT NULL PRIMARY KEY,
	ID_BOOK INT NOT NULL REFERENCES BOOK(ID),
	QUANTITY INT UNSIGNED,
	ID_CART INT NOT NULL REFERENCES CART(ID)
);

CREATE TABLE BILL (
	ID INT NOT NULL PRIMARY KEY,
	ID_USER INT NOT NULL REFERENCES USER(ID),
	STATUS NVARCHAR(50) NOT NULL,
	ID_SHIPMENT INT NOT NULL REFERENCES SHIPMENT(ID),
	ID_PAYMENT INT NOT NULL REFERENCES PAYMENT(ID),
	ADDRESS NVARCHAR(200) NOT NULL,
	CITY NVARCHAR(50) NOT NULL,
	NOTE NVARCHAR(200)
);

CREATE TABLE BILL_DETAIL (
	ID INT NOT NULL PRIMARY KEY,
	ID_BILL INT NOT NULL REFERENCES BILL(ID),
	ID_BOOK INT NOT NULL REFERENCES BOOK(ID),
	QUANTITY INT UNSIGNED
);
