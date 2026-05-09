CREATE TABLE sample1(col1 int, col2 int, col3 int);
CREATE TABLE sample2(col1 int, col2 int, col3 int);

INSERT INTO sample1 (col1, col2, col3) VALUES (1, 1, 3), (1, 2, 3), (2, 1, 3), (3, 1, 3), (3, 2, 3);
INSERT INTO sample2 (col1, col2, col3) VALUES (1, 1, 3), (1, 2, 3), (2, 1, 3), (3, 1, 3), (3, 2, 3);

[해보기]
sample1 테이블과 sample2 테이블에 대해서 col1 이 같은 경우의 Record(Tuple)의 수를 구하세요.

[정답]
SELECT COUNT(*) FROM sample1, sample2 WHERE sample1.col1 = sample2.col1;