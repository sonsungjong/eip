CREATE TABLE performance (
    location VARCHAR(50),
    name VARCHAR(50),
    count INT
);

INSERT INTO performance (location, name, count) VALUES 
('Seoul', 'A', 1),
('Busan', 'A', 1),
('Seoul', 'B', 1),
('Busan', 'B', 1),
('Seoul', 'C', 1),
('Busan', 'C', 1),
('Seoul', 'A', 1),
('Busan', 'A', 1),
('Seoul', 'B', 1),
('Busan', 'B', 1),
('Seoul', 'C', 1),
('Busan', 'C', 1);

[해보기]
performance 테이블에서 'B'의 count를 올림차순으로 name 과 count 를 조회하세요.

[정답]
SELECT name, count 
FROM performance 
WHERE name = 'B' 
ORDER BY count;