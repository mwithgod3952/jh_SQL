CREATE DATABASE mamber;
SHOW DATABASES;
USE member;

CREATE TABLE customer(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(15) NOT NULL,
email VARCHAR(20) NOT NULL,
gender ENUM('M', 'F')
);

-- > ALTER EXAMPLES
ALTER TABLE customer ADD birthday DATE;
ALTER TABLE customer MODIFY gender CHAR(1);
ALTER TABLE customer CHANGE email email_address TEXT;
ALTER TABLE custome DROP COLUMN birthday;

-- > DROP EXAMPLES
DROP TABLE customer; 
DROP DATABASE mamber;

-- 		>> DML(Data Manipulation Language) 
ALTER TABLE customer MODIFY email VARCHAR(50);
INSERT INTO customer(id, name, email, gender) VALUES(1, 'JunHee_LEE', 'mwithgod3952@naver.com', 'M');

INSERT INTO customer(id, name, email, gender)
VALUES(2, 'Eanjuu_CHE', 'Eanjuu@naver.com', 'F'),
(3, 'Meahwa_CHE', 'Meahwa@daum.net', 'F'),
(4, 'Sangmin_LEE', 'Sangmin@naver.com', 'M');

UPDATE customer SET email = 'eanju@daum.com' WHERE id = 2;
DELETE FROM customer WHERE name = 'JunHee_LEE';


-- > Training 
-- 1) Bookstore Table 만들기
-- 2) 열은 id, name, author, price, public_date, publisher, member_id
-- 3) 스키마 유형은 int, vharchar, vharchar, int, date, text, int
-- 4)  price, public_date, publisher, member_id는 필수항목은 아니다.
-- 4) id를 PK값으로 가질 것

USE mamber;
CREATE TABLE Bookstore(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
author VARCHAR(10),
price INT,
publish_date DATE,
publisher VARCHAR(30),
number_id INT
);
DESC Bookstore;

/*
Test
INSERT INTO Bookstore(name, author, price, publish_date, publisher, number_id)
VALUES('사피엔스', '유빌하하리라', 22000, '2015-11-23', '김영사', 2);
select * from Bookstore;
delete from Bookstore where id = 1;
*/
-- DROP TABLE Bookstore;

ALTER TABLE Bookstore MODIFY author VARCHAR(30);
DESC Bookstore;
INSERT INTO Bookstore(name, author, price, publish_date, publisher, number_id)
VALUES('사피엔스', '유빌하하리라', 22000, '2015-11-23', '김영사', 2),
('호모데우스', '유빌하하리라', 22000, '2017-05-15', '김영사', 1),
('사피엔스', '유빌하하리라', 22000, '2015-11-23', '김영사', 2),
('린스타트업', '에시모리아', 18000, '2012-11-01', '한빛미디어', 3),
('넛지', '리처드H', 21000, '2018-11-23', '리더스북', 4),
('팩트폴니스', '한스로슬링', 19800, '2019-03-08', '김영사', 1),
('정의란 무엇인가', '마이클센델', 15000, '2014-11-20', '와이즈베리', 1),
('사업의 철학', '마이클E', 16000, '2015-09-01', '라이팅하우스', 2),
('리펙터링2판', '마틴 파울러', 35000, '2020-04-01', '한빛미디어', 4),
('디_앤서', '뉴욕주민', 16000, '2021-02-05', NULL, NULL),
('아몬드(양장)', '손은평', NULL, NULL, NULL, 2);

SELECT * FROM Bookstore;
 
 
