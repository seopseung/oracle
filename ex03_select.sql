-- ex03_select.sql


/*

    SQL, Query(질의)
    
    SELECT문
    - DML, DQL,
    - SQL은 SELECT로 시작해서 SELECT로 끝난다.
    
    - CRUD
    
    하나의 절로 부름
    [WITH <Sub Query>] 
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expresstion [ASC|DESC]]
    
    
    [기본적인 SELECT문]
    SELECT column_list -- 원하는 컬럼을 지정해라.
    FROM table_name; -- 데이터소스, 어떤 테이블로부터 데이터를 가져와라.
    
    각 절의 순서
    
    2. SELECT
    1. FROM
    영어 해석하듯이 하면 될듯 ㅋ
    

*/

select * -- * :모든 컬럼 /을 가져와라
from tbltype; -- FROM table_name;

-- 테이블 구조를 스키마라고 한다. (Scheme) > 명세서 같은 느낌
desc employees; -- 테이블의 구조 알려주는 문법

select * from employees; -- 교육용 테이블

select first_name from employees;



select * from tbladdressbook;
select * from tblcomedian;
select * from tblcountry;
select * from tbldiary;
select * from tblhousekeeping;
select * from tblinsa;
select * from tblmen;
drop table tblname;
select * from tblsalary;
select * from tbltodo;
select * from tbltype;
select * from tblwomen;
select * from tblzoo;
select * from zipcode;








-- SELECT절
-- FROM절 > 테이블 지정하는 역할이 끝

-- select 컬럼리스트
-- 단일 컬럼
select first from tblcomedian;
select nick from tblcomedian;

select * from tblcomedian;
select first, last, gender, height, weight, nick from tblcomedian;

-- 다중 컬럼(컬럼명, 컬럼명, 컬럼명..)
select first, last from tblcomedian;

-- 컬럼 순서 > 내 마음대로 조합 가능
select last, first from tblcomedian;

-- 동일 컬럼 반복
select last, last from tblcomedian;
select last, length(LAST) from tblcomedian; -- 자바의 length와 동일함


-- 절을 정리하는 스타일(취향)
select last, last from tblcomedian;

select last, last 
from tblcomedian;

select last, last 
    from tblcomedian;
    
-- ORA-00942: table or view does not exist > 테이블명 틀릴 때
-- ORA-00904: "FIRS": invalid identifier > 컬럼 이름 틀릴 때

select 
    last, first
from 
    tblcomedian;





























