CREATE TABLE book (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publisher VARCHAR(100) NOT NULL,
    publication_date DATE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO book (id, title, author, publisher, publication_date, price, stock) VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '1925-04-10', 15000, 100);
INSERT INTO book (id, title, author, publisher, publication_date, price, stock) VALUES (2, 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '1960-07-11', 20000, 100);
INSERT INTO book (id, title, author, publisher, publication_date, price, stock) VALUES (3, '1984', 'George Orwell', 'Secker & Warburg', '1949-06-08', 25000, 100);

[해보기]
book 테이블에서 price가 20000 이상인 id, title, price 를 price의 내림차순으로 정렬해서 조회하세요.

[정답]
SELECT id, title, price FROM book WHERE price >= 20000 ORDER BY price DESC;