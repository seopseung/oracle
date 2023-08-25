-- ex02_datatype.sql

/*


관계형 데이터베이스
- 변수(X) > SQL은 프로그래밍 언어가 아니다.
- SQL > 대화형 언어 > DB와 대화를 목적으로 하는 언어
- 자료형 > 데이터 저장하는 규칙 > 테이블 정의할 때 사용 >



ANSI-SQL 자료형
- 오라클 자료형

1. 숫자형
    - 정수, 실수
    a. number
        - (유효자리)39자리 이하의 숫자를 표현하는 자료형
        - 12345678901234567890123456789012345678
        - 5~22byte
        - 1x10^-130 ~ 9.9999x10^125
        
        - number : 정수 & 실수
        - number(precision): 전체 자릿수, 정수
        - number(precision,scale): 전체 자릿수, 소수이하 자릿수, 실수
        

2. 문자형
    - 문자, 문자열 > SQL은 구분하지 않음 > 문자형으로 뭉탱이
    - char vs nchar > n의 의미?
    - char vs varchar > var의 의미는 저장 공간의 차이를 주고자..
    - 자바와 다르게 문자열은 최대길이를 정해야함
    
    a. char
        - 고정 자릿수 문자열 > 공간(컬럼)의 크기가 불변
        - char(n): 최대 n자리 문자열, n(바이트)
        - char(n char)
        - 최소 크기 : 1바이트
        - 최대 크기 : 2000바이트
        
    b. nchar
        - n: natinal > 오라클 인코딩과 상관없이 해당 컬럼을 UTF-16으로 동작하게 하려고
        - char(n): 최대 n자리 문자열, n(문자수) > 무조건 하나당 2바이트로 취급하기 때문에 문자수로 계산
        - 최소 크기 : 1글자
        - 최대 크기 : 1000글자
    
    c. varchar2(숫자가 붙는 이유 : varchar, varchar2 두개라서) > variable char > 바캐릭터, 바차
        - 가변 자릿수 문자열 > 공간(컬럼)의 크기가 상황에 따라 변함
        - varchar2(n): 최대 n자리 문자열, n(바이트)
        - varchar2(n char)
        - 최소 자릿수: 1바이트
        - 최대 자릿수: 4000바이트
    
    d. nvarchar2
        - n: natinal > 오라클 인코딩과 상관없이 해당 컬럼을 UTF-16으로 동작하게 하려고
        - 가변 자릿수 문자열 > 공간(컬럼)의 크기가 상황에 따라 변함
        - varchar2(n): 최대 n자리 문자열, n(문자수)
        - 최소 자릿수: 1글자
        - 최대 자릿수: 2000글자
        
    e. clob, nclob
        - 대용량 텍스트
        - character large object
        - 최대 128TB까지 저장 가능
        - 참조형
    
    
    
    a. 고정 자릿수 문자열 > 주민등록번호, 전화번호 같은건 char를 썼음
    b. 가변 자릿수 문자열 > 주소, 자기소개 등은 varchar2
    
    a. 고정/가변 > varchar2
    
    

3. 날짜/시간형
    a. date
        - 년월일시분초
        - 7byte
        - 기원전 4712년 1월 1일 ~ 9999년 12월 31일
    
    b. timestamp
        - 년월일시분초 + 밀리초 + 나노초
    
    c. interval
        - 시간
        - 틱값 저장용


4. 이진 데이터형
    - 비 텍스트 데이터 --문자열이 아닌 데이터
    - 이미지, 영상, 음악, 실행파일, 압축파일 등..
    - 잘 사용 안함.
    ex) 게시판(첨부파일==이진 데이터), 회원가입(사진==이진 데이터) > 입출력 하는 속도가 느림
        > 파일명만 저장(문자열)
    a. blob
        - 최대 128TB
        

***결론
1. 숫자는 number가 끝
2. 문자는 varchar2랑 char
3. 날짜는 date
세가지만 정리 잘해도 

자바도 마찬가지
1. 숫자는 int + long, double, boolean
2. 문자열 > String
3. 날짜 > Calendar


*/


/*
-- 테이블 선언(생성)

CREATE table 테이블명 (
    컬럼 선언,
    컬럼 선언,
    컬럼 선언, == 컬럼 3개짜리 테이블 생성
    컬럼명 자료형

);

*** 복습할 때 잘 정리를 해라(코드 순서대로 하지 않으니) ***
테이블 세팅 > 데이터 추가 > 데이터 가져오기


*/

-- 식별자 > 타입 접두어 > 헝가리안 표기법
create table tblType(
    -- num number
    -- num number(3) --  -999 ~ +999까지 넣을 수 있다.
    -- num NUMBER(4,2) --  -99.99 ~ + 99.99까지 넣을 수 있다. 4 == 소수포함 자릿수 , 2 == 소수 둘째자리까지
    -- num number
    
    -- txt char(10) -- 최대 10바이트까지의 문자열
    -- txt char(10 char) -- 최대 10글자까지의 문자열
    
    -- txt VARCHAR2(10)
    
    --  txt1 char(10),
    -- txt2 varchar(10)
    
    regdate date
    
    
);

drop table tbltype;

-- 데이터 추가
-- insert into 테이블명 (컬럼) values (값);
insert into tblType (num) values (100); -- 정수 리터럴
insert into tblType (num) values (3.14); -- 실수 리터럴
insert into tblType (num) values (3.99); -- 반올림 가능
insert into tblType (num) values (1234); 
insert into tblType (num) values (999);
insert into tblType (num) values (-999);
insert into tblType (num) values (99.99);
insert into tblType (num) values (-99.99);

insert into tblType (num) values (1234567890);
insert into tblType (num) values (12345678901234567890);
insert into tblType (num) values (123456789012345678901234567890);
insert into tblType (num) values (1234567890123456789012345678901234567890);
insert into tblType (num) values (12345678901234567890123456789012345678901234567890);
-- 12345678901234567890123456789012345678900000000000

-- Java : Strong Type Language
-- SQL : Weak Type Language

-- *** SQL은 암시적인 형변환이 자주 일어난다.
insert into tbltype (txt) values (100); -- 100(number) > '100'(char)
insert into tbltype (txt) values ('100');
insert into tbltype (txt) values ('홍길동'); -- 문자 리터럴 > ''(O)/""(X)

-- 오라클 인코딩 > UTF-8 > 영어(1byte), 한글(3byte) ->txt(10)까지
insert into tbltype (txt) values ('abcdefga');

-- value too large for column "HR"."TBLTYPE"."TXT" (actual: 11, maximum: 10)
insert into tbltype (txt) values ('abcdefgadaf');


insert into tbltype (txt) values ('홍길동입니다.'); -- actual: 19, maximum: 10
insert into tbltype (txt) values ('홍길동');
insert into tbltype (txt) values ('홍길동님'); -- (actual: 12, maximum: 10)



insert into tbltype (txt1, txt2) VALUES ('abc','abc');
-- char 데이터가 아무리 적더라도 10바이트 공간 유지, varchar는 남는 공간을 버림
-- "abc       " , "abc"


insert into tblType (regdate) values ('2023-08-25'); -- 자바는 캘린더 객체를 생성해야하는데 오라클은 상수가 있음





-- 데이터 가져오기 > 결과 테이블, 결과셋(ResultSet)
select * from tblType;

commit;--



-- *** 오라클은 모든 식별자를 대문자로 저장한다.




/*

DB Client Tools
1. SQL Developer > 오라클 제공. 무료
2. SQL*Plus > 오라클 제공. 무료. 오라클 설치될 때 같이 설치. CLI
3. SQLGate
4. Orange
5. DBeaver
6. ..
7. Toad
8. DataGrid(jetbranis) > 학교 계정(이메일) > 1년 단위(갱신)

*/











