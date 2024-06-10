/*
SQL이란?
Structured Query Language 의 약자로 직역하면 구조화된 질의 언어이다.
단순히 질의만 하는 것이 아니라,
DML, DDL, DCL, TCL 이런 데이터베이스를 조작 및 조회하기 위해
사용하는 표준 언어이다.
*/

-- SELECT
-- mysql의 가장 기본적인 명령로 특정 테이블에서 원하는 데이터를
-- 조회 할 수 있다.

select -- 조회 해줘
    menu_name -- 어떤 칼럼을
from tbl_menu; -- 어늘 테이블에서?

-- 여러 컬럼을 한번에 조회 할 수 있다.
select
    menu_code,
    menu_name,
    menu_price
from tbl_menu;

-- 모든 컬럼을 직접 써서 조회하기
select
    menu_code,
    menu_name,
    menu_price,
    category_code,
    orderable_status
from tbl_menu;

-- * 써서 전체를 조회 할 수 있다.
select
    *
from tbl_menu;

/*
SELECT 단독 활용
- from 없이 단독으로 사용 가능
- 단독으로 사용할 때는 단순한 테스트 용도로 사용된다.
*/
select(5 + 5 );
select(5 - 5 );
select(5 * 5 );
select(5 / 5 );
select(5 % 5 );

-- mysql 내장 함수도 사용 가능
select now(); -- 현재 시간 출력
select concat('bear', '안녕', 'ohgiraffers');

-- 컬럼에 별칭을 사용 할 수 있다.
select concat('박',' ', '태근') as name;
select concat('박',' ', '태근') as 'Full name';