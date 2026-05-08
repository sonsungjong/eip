-- 유저 테이블에서 이름과 등급을 조회하는 SELECT 문
SELECT 이름, 등급 FROM 유저;

-- 캐릭터 테이블에서 게임머니가 100만 이상인 레코드의 캐릭터명과 레벨
SELECT 캐릭터명, 레벨 FROM 캐릭터 WHERE 게임머니 >= 1000000;

-- 캐릭터 테이블에서 게임머니가 100만 이상이고 150만 이하인 레코드의 모든 정보
SELECT * FROM 캐릭터 WHERE 게임머니 >= 1000000 AND 게임머니 <= 1500000;
SELECT * FROM 캐릭터 WHERE 게임머니 BETWEEN 1000000 AND 1500000;

-- 캐릭터 테이블에서 길드명을 중복없이 조회하는 SELECT 문
SELECT DISTINCT 길드명 FROM 캐릭터;

-- 캐릭터 테이블에서 유저번호가 1인 레코드의 캐릭터명, 레벨, 게임머니를 레벨의 내림차순으로 검색하는 SELECT문
SELECT 캐릭터명, 레벨, 게임머니 FROM 캐릭터 WHERE 유저번호 = 1 ORDER BY 레벨 DESC;

-- 캐릭터 테이블에서 유저번호가 1인 레코드의 캐릭터명, 레벨, 게임머니를 레벨의 오름차순으로 검색하는 SELECT문
SELECT 캐릭터명, 레벨, 게임머니 FROM 캐릭터 WHERE 유저번호 = 1 ORDER BY 레벨;

-- 캐릭터 테이블에서 유저번호가 1인 레코드의 개수를 '캐릭터수' 로 검색하는 SELECT 문
SELECT COUNT(*) AS "캐릭터수" FROM 캐릭터 WHERE 유저번호 = 1;

-- 캐릭터 테이블에서 캐릭터수가 2개 이상인 유저를 대상으로 유저번호별 게임머니 합계를 '게임머니합계'로 검색하는 SELECT 문
SELECT 유저번호, SUM(게임머니) AS "게임머니합계" FROM 캐릭터 GROUP BY 유저번호 HAVING COUNT(*) >= 2;