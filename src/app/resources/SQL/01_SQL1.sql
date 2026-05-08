Database : 현실 세계 정보를 데이터로 저장하기 위한 데이터 집합
DBMS : 데이터베이스 관리 시스템 (MySQL, PostgreSQL, Oracle, SQL Server 등)
SQL (Structured Query Language) : DBMS에서 데이터를 조작하기 위해 사용하는 언어

[PostgreSQL 설치 방법]
1. 공식 다운로드 페이지에 접속한다.
   https://www.postgresql.org/download/windows/

2. Windows installers 항목에서 Download the installer를 선택한다.

3. 다운로드 페이지에서 Windows용 PostgreSQL 설치 파일을 내려받는다.

4. 설치 파일을 실행하고 기본 옵션으로 진행한다.
   - PostgreSQL Server
   - pgAdmin 4
   - Command Line Tools
   - Stack Builder는 필수 아님

5. 설치 중 비밀번호를 root 입력한다.
   - 이 비밀번호는 관리자 계정 비밀번호이다.
   - 실습용이면 잊어버리지 않게 따로 기록한다.

6. 포트는 기본값 5432를 사용한다.

7. 설치가 끝나면 pgAdmin 또는 DBeaver에서 접속할 수 있다.


[DBeaver 설치 방법]
1. 공식 다운로드 페이지에 접속한다.
   https://dbeaver.io/download/

2. DBeaver Community 버전을 다운로드한다.

3. 설치 파일을 실행하고 기본 옵션으로 설치한다.

4. DBeaver를 실행한 뒤 새 데이터베이스 연결을 선택한다.

5. PostgreSQL을 선택하고 다음 정보를 입력한다.
   - Host : localhost
   - Port : 5432
   - Database : postgres
   - Username : postgres
   - Password : PostgreSQL 설치 때 입력한 비밀번호

6. Test Connection을 눌러 연결을 확인한다.
   - 드라이버 다운로드 창이 나오면 Download를 눌러 진행한다.

7. 연결에 성공하면 Finish를 누르고 SQL Editor에서 실습을 시작한다.