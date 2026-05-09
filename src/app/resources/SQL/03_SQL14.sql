GRANT 와 REVOKE

GRANT : 권한 부여 (SELECT, INSERT, UPDATE, DELETE 등 할 수 있는 권한을 특정 사용자에게 부여한다)
REVOKE : 권한 회수

-- GRANT 권한 ON 테이블명 TO 사용자명;
-- REVOKE 권한 ON 테이블명 FROM 사용자명;
-- WITH GRANT OPTION : 부여받은 권한을 다른 사용자에게도 부여할 수 있는 권한.
-- PUBLIC : 모든 사용자

-- 사용자 X1 에게 employee 테이블에 대해서 모든 권한을 부여하고, X2 에게는 SELECT 권한만 부여하고 싶다.
GRANT ALL ON employee TO X1;
GRANT SELECT ON employee TO X2;

-- 사용자 X2 에게 검색 연산을 회수하고 싶다.
REVOKE SELECT ON employee FROM X2;

[해보기]
student 릴레이션에 대한 SELECT 권한을 모든 사용자에게 허가하는 SQL 문을 작성하세요.

[정답]
GRANT SELECT ON student TO PUBLIC;