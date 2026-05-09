CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    age INT,
    major VARCHAR(255),
    grade INT
);

INSERT INTO student (id, name, gender, age, major, grade) VALUES (1, 'Alice', 'Female', 21, 'Computer Science', 3);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (2, '김철수', 'Male', 24, 'Business', 4);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (3, '이영희', 'Female', 20, 'Computer Science', 2);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (4, '박민수', 'Male', 23, 'Mathematics', 4);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (6, '최지윤', 'Female', 22, 'Physics', 3);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (7, '정현우', 'Male', 19, 'Computer Science', 1);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (8, '강하늘', 'Male', 25, 'Business', 4);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (9, '송지효', 'Female', 20, 'English', 2);
INSERT INTO student (id, name, gender, age, major, grade) VALUES (10, '유승호', 'Male', 21, 'Mathematics', 3);

[해보기]
student 테이블에서 grade가 3학년 이상인 학생의 name과 major를 조회하세요.

[해보기]
student 테이블에서 name이 'Alice'인 학생의 age를 22로 변경하세요.

[해보기]
student 테이블에서 grade가 4 이하이고, major가 'Computer Science'인 학생들의 grade 를 5로 변경하세요.

[해보기]
student 테이블에서 id가 5이고, name이 'Tomas' 이고, gender가 'Male' 이고, age가 24 이고, major가 'English'이고, grade가 1 인 학생을 추가하세요.

[해보기]
student 테이블에서 grade가 4인 학생의 튜플(행, Cardinality)을 삭제하세요.

[정답]
SELECT name, major FROM student WHERE grade >= 3;
UPDATE student SET age = 22 WHERE name = 'Alice';
UPDATE student SET grade = 5 WHERE grade <= 4 AND major = 'Computer Science';
INSERT INTO student (id, name, gender, age, major, grade) VALUES (5, 'Tomas', 'Male', 24, 'English', 1);
DELETE FROM student WHERE grade = 4;