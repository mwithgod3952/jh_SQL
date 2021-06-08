-- Preview_1) 제약조건
-- : NOT NULL
-- : PRIMARY KEY, FORIEGN KEY 
-- : UNIQUE > 열에 중복값 입력을 규제
-- : CHECK  > 추가될 데이터에 대한 범위 규제  

-- Preview_2) 데이터타입
-- 숫자 > INT, FLOAT, DOUBLE

-- 비교연산자와 관련하여 순차적인 조회 접근
-- 1) 전체조회  
SELECT * FROM bookstore;
-- 2) 선택조회
SELECT name, price FROM bookstore
WHERE price IS NOT NULL;
-- 3) 문자열 선택조회 (대소문자 구분)
SELECT * FROM customer
WHERE BINARY name LIKE 'Jun%';
-- 4) 동일값 조회
SELECT name, publisher, price FROM bookstore
WHERE publisher = '김영사'; 
-- 5) 예외값 조회
SELECT name, publisher, price FROM bookstore
WHERE publisher != '김영사';
 -- 6) 범유조회_날짜 그리고 값
SELECT publish_date, name, publisher, price FROM bookstore
WHERE  publish_date BETWEEN '2015-01-01' AND '2021-12-31' AND price <= 20000;
 -- + 범위조회에서 일자로가 아닌 년에 기준해서만 조회하고자 하더라도 N년도 01월 01일 부터 M년도 12월 31일 가지의 조회를 통해 조회할 수 있음을 기억 
 SELECT publish_date, name, publisher, price FROM bookstore
WHERE  publish_date >= '2015-01-01' AND publish_date <= '2021-12-31' AND price <= 20000;

-- NULL 값 계산 시 NULL 반환 / ERROR 반환은 아님을 유의 
SELECT name, price, price*0.5 as discounted_price FROM mamber.bookstore
WHERE price IS NOT NULL;

-- === 
SELECT * FROM bookstore
WHERE publisher = '김영사' AND price >= 20000;

SELECT * FROM bookstore
WHERE publisher = '김영사' OR price >= 20000;

SELECT name, author FROM bookstore
WHERE author LIKE '마이클%'; 

SELECT name, author FROM bookstore
WHERE author LIKE '마이클__'; 

SELECT COUNT(*) AS '정보미기입집계' FROM bookstore
WHERE publisher IS NULL;

SELECT * FROM bookstore
WHERE author IS NOT NULL 
AND price IS NOT NULL 
AND author NOT LIKE '유빌%' 
AND author NOT LIKE '한스%' 
AND price <= 20000;

SELECT * FROM bookstore
WHERE author NOT IN ('유빌하하리라', '한스로슬링') 
AND price <= 20000;

-- 주의 WHERE 절에서 alias 쓸 수 없음 
SELECT name, publisher, publish_date AS original_appointment, DATE_FORMAT(publish_date + 2, '%Y-%m-%d') AS delayed_publish_date 
FROM bookstore
WHERE publish_date IS NOT NULL;  

-- 특수문자 및 공백에 대한 alias
SELECT name AS '**book titles**', publish_date AS '출간일' FROM bookstore
WHERE publish_date IS NOT NULL
AND publish_date BETWEEN '2020-01-01' AND '2020-12-31'; 

SELECT * FROM bookstore WHERE name LIKE '%(%';

SELECT * FROM bookstore WHERE price IS NOT NULL ORDER BY price DESC;

SELECT * FROM bookstore WHERE publisher = '김영사' ORDER BY publish_date DESC;

SELECT DISTINCT author FROM bookstore; 

SELECT DISTINCT author, publisher, price FROM bookstore
WHERE publisher IS NOT NULL;