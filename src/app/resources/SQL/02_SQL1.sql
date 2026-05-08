[관계대수 용어 정리]
릴레이션(Relation) = 테이블(Table) : 전체 표
튜플(Tuple) = 행(Row, Record) : 데이터의 한 줄 (예: 회원의 한 명의 정보 전체)
속성(Attribute) = 열(Column, Field) : 데이터의 특징 (예: 이름, 나이, 전화번호 등)
도메인(Domain) = 한 속성이 가질 수 있는 값의 범위 (예: 성별 열의 도메인은 '남', '여')

CREATE TABLE 릴레이션 (학번 INT, 과목 VARCHAR(20), 상책 VARCHAR(5), 참수 INT);
INSERT INTO 릴레이션 VALUES (100, '자료구조', 'A', 90), (100, '운영체제', 'A', 96), (200, '운영체제', 'B', 86), (300, '프로그래밍', 'A', 90), (300, '데이터베이스', 'C', 75);

Cardinality : 행의 개수(튜플 수) : 5
Degree : 열의 개수(속성 수) : 4
