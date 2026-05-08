서브쿼리 : SQL 문 안에 포함된 또 다른 SELECT 문


-- 단일행 서브쿼리
-- 이름이 '김민준' 인 유저가 보유한 캐릭터명과 레벨을 조회하는 SELECT 문
SELECT 캐릭터명, 레벨
FROM 캐릭터
WHERE 유저번호 = (
  SELECT 유저번호
  FROM 유저
  WHERE 이름 = '김민준'
);


-- 다중행 서브쿼리
-- 등급이 '브론즈' 인 유저가 보유한 캐릭터명과 게임머니를 조회하는 SELECT 문
SELECT 캐릭터명, 게임머니
FROM 캐릭터
WHERE 유저번호 IN (
  SELECT 유저번호
  FROM 유저
  WHERE 등급 = '브론즈'
);


-- NOT IN 서브쿼리
-- 등급이 '브론즈' 가 아닌 유저가 보유한 캐릭터명과 유저번호를 조회하는 SELECT 문
SELECT 캐릭터명, 유저번호
FROM 캐릭터
WHERE 유저번호 NOT IN (
  SELECT 유저번호
  FROM 유저
  WHERE 등급 = '브론즈'
);


-- 비교 서브쿼리
-- 전체 캐릭터의 평균 레벨보다 레벨이 높은 캐릭터명과 레벨을 조회하는 SELECT 문
SELECT 캐릭터명, 레벨
FROM 캐릭터
WHERE 레벨 > (
  SELECT AVG(레벨)
  FROM 캐릭터
);


-- EXISTS 서브쿼리
-- 캐릭터를 1개 이상 보유한 유저의 아이디와 이름을 조회하는 SELECT 문
SELECT 아이디, 이름
FROM 유저
WHERE EXISTS (
  SELECT *
  FROM 캐릭터
  WHERE 캐릭터.유저번호 = 유저.유저번호
);


-- NOT EXISTS 서브쿼리
-- 캐릭터를 보유하지 않은 유저의 아이디와 이름을 조회하는 SELECT 문
SELECT 아이디, 이름
FROM 유저
WHERE NOT EXISTS (
  SELECT *
  FROM 캐릭터
  WHERE 캐릭터.유저번호 = 유저.유저번호
);


-- ALL 서브쿼리
-- 브론즈 등급 유저의 모든 캐릭터보다 레벨이 높은 캐릭터명과 레벨을 조회하는 SELECT 문
SELECT 캐릭터명, 레벨
FROM 캐릭터
WHERE 레벨 > ALL (
  SELECT 캐릭터.레벨
  FROM 캐릭터
  INNER JOIN 유저 ON 캐릭터.유저번호 = 유저.유저번호
  WHERE 유저.등급 = '브론즈'
);
