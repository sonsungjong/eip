UPDATE SET : 테이블의 데이터를 수정한다

-- 캐릭터명이 감자 인 레코드의 게임머니를 90000 로 변경하는 UPDATE문
UPDATE 캐릭터 SET 게임머니 = 90000 WHERE 캐릭터명 = '감자';

SELECT * FROM 캐릭터;

-- 캐릭터명이 '개' 으로 시작하는 레코드의 게임머니를 10000 줄이는 UPDATE문
UPDATE 캐릭터 SET 게임머니 = 게임머니 - 10000 WHERE 캐릭터명 LIKE '개%';

SELECT * FROM 캐릭터;