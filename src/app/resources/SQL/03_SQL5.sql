CREATE TABLE account (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    money INT,
    grade VARCHAR(20)
);

INSERT INTO account (id, name, money, grade) VALUES 
('A1111', '김민수', 50000, '브론즈'),
('A1112', '이서연', 150000, '실버'),
('A1113', '박준호', 2500000, '실버'),
('A1114', '최지윤', 3000000, '실버'),
('A1115', '정현우', 90000, '브론즈');

[해보기]
account 테이블에서 money가 1000000원에서 3000000원 사이인 사람들의 grade를 '골드' 로 변경하는 SQL문을 작성하세요.

[정답]
UPDATE account SET grade = '골드' WHERE money BETWEEN 1000000 AND 3000000;