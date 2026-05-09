CREATE TABLE orders (
    id VARCHAR(5) PRIMARY KEY,
    customer VARCHAR(50) NOT NULL,
    "date" DATE
);

INSERT INTO orders (id, customer, "date") VALUES 
('A1111', 'Alice', '2022-01-01'),
('A1112', 'Bob', '2022-01-02'),
('A1113', 'Alice', '2022-01-03'),
('A1114', 'Charlie', '2022-01-04'),
('A1115', 'Alice', '2022-01-05');

[해보기]
orders 테이블에서 3번 이상 주문한 고객의 이름과 주문 횟수를 검색하는 SQL문을 작성하세요.
주문 횟수의 이름은 order_count 로 하세요.

[정답]
SELECT customer, COUNT(*) AS order_count 
FROM orders
GROUP BY customer 
HAVING COUNT(*) >= 3;