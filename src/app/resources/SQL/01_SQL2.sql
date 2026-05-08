-- 유저 테이블에 연락처를 추가한다.
-- 기본값은 010-0000-0000 으로 설정한다.
ALTER TABLE 유저 ADD 연락처 VARCHAR(20) DEFAULT '010-0000-0000';

SELECT * FROM 유저;

-- 캐릭터 테이블에서 서버명을 삭제한다.
ALTER TABLE 캐릭터 DROP COLUMN 서버명;

SELECT * FROM 캐릭터;

-- 유저 테이블에서 연락처 속성을 삭제한다. 이때 참조하고 있는 테이블이 있다면 연쇄 삭제 한다.
ALTER TABLE 유저 DROP COLUMN 연락처 CASCADE;

SELECT * FROM 유저;