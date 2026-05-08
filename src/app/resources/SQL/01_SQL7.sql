-- 유저 테이블에서 이름이 '이지은' 이거나 '최성훈' 인 아이디를 검색하는 SELECT 문
SELECT 아이디 FROM 유저 WHERE 이름 = '이지은' OR 이름 = '최성훈';
SELECT 아이디 FROM 유저 WHERE 이름 IN ('이지은', '최성훈');


-- 캐릭터 테이블에서 길드가 NULL 인 레코드의 캐릭터명을 조회하는 SELECT 문
SELECT 캐릭터명 FROM 캐릭터 WHERE 길드명 IS NULL;

-- 유저 테이블과 캐릭터 테이블에서 등급이 '브론즈' 인 캐릭터명과 게임머니를 검색하는 SELECT 문
SELECT 캐릭터.캐릭터명, 캐릭터.게임머니 FROM 캐릭터, 유저 WHERE 캐릭터.유저번호 = 유저.유저번호 AND 유저.등급 = '브론즈';
SELECT 캐릭터.캐릭터명, 캐릭터.게임머니 FROM 캐릭터 JOIN 유저 ON 캐릭터.유저번호 = 유저.유저번호 WHERE 유저.등급 = '브론즈';