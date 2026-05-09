CREATE TABLE table1(col1 int, col2 int);
CREATE TABLE table2(col3 int, col4 int);
CREATE TABLE table3(col1 int, col2 int, col3 int, col4 int);
CREATE TABLE table4(col1 int, col2 int, col3 int, col4 int);

INSERT INTO table1 (col1, col2) VALUES (1, 2), (2, 2), (3, 3);
INSERT INTO table2 (col3, col4) VALUES (1, 2), (2, 4), (4, 5);
INSERT INTO table3 (col1, col2, col3, col4) VALUES (1, 2, 1, 2), (2, 2, 2, 4), (NULL, NULL, 4, 5);
INSERT INTO table4 (col1, col2, col3, col4) VALUES (1, 2, 1, 2), (2, 2, 2, 4), (3, 3, NULL, NULL);

[해보기]
table1과 table2를 JOIN 하여 table3 과 같은 결과가 나오게 SELECT SQL문을 작성하세요.

[해보기]
table1과 table2를 JOIN 하여 table4 와 같은 결과가 나오게 SELECT SQL문을 작성하세요.

[정답]
SELECT * FROM table1 RIGHT JOIN table2 ON table1.col1 = table2.col3;
SELECT * FROM table1 LEFT JOIN table2 ON table1.col1 = table2.col3;