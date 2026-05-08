-- Database : 현실 세계 정보를 데이터로 저장하기 위한 데이터 집합
-- DBMS : 데이터베이스 관리 시스템
-- SQL (Structured Query Language) : DBMS에서 데이터를 관리하기 위한 언어

-- CREATE TABLE : 테이블을 생성한다

-- 유저 테이블 생성
CREATE TABLE 유저 (
  유저번호 INT PRIMARY KEY,
  아이디 VARCHAR(50),
  이름 VARCHAR(50),
  등급 VARCHAR(10)
);

-- 캐릭터 테이블 생성 (유저 테이블을 참조)
CREATE TABLE 캐릭터 (
  캐릭터번호 INT PRIMARY KEY,
  캐릭터명 VARCHAR(50),
  서버명 VARCHAR(20),
  길드명 VARCHAR(100),
  성별 VARCHAR(10),
  레벨 INT,
  게임머니 INT,
  유저번호 INT,
  FOREIGN KEY (유저번호) REFERENCES 유저(유저번호)
    ON DELETE SET NULL
);

SELECT * FROM 유저;
SELECT * FROM 캐릭터;