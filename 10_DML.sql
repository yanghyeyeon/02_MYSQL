-- DML (Date Manipulation Language)
-- 데이터 조작 언어, 테이블에 값을 삽입, 수정 또는 삭제 하는 SQL

-- INSERT
-- 새로운 행을 추가하는 구문
-- 테이블의 행의 수가 증가한다.
-- null 허용 가능한 컬럼이나, auto-increment가 있는 컬럼을 제외하고,
-- INSERT 하고 싶은 데이터 컬럼을 지정해서 INSERT 가능
select * from tbl_menu;

-- insert into [테이블명] values ([컬럼 내용] ...)
insert into tbl_menu values (null, '바나나해장국', 8500, 4, 'Y');

insert into tbl_menu(orderable_status,menu_price, menu_name, category_code)
values('Y', 5500, '파인애플탕', 4);

-- 여러 컬럼을 한번에 INSERT
insert into
    tbl_menu
values
    (null, '참치맛아이스크림', 1700 ,12, 'Y'),
    (null, '멸치맛아이스크림', 1500 ,11, 'Y'),
    (null, '소시지맛커피', 2500 ,8, 'Y');

-- UPDATE
-- 테이블에 기록된 컬럼의 값을 수정하는 구문
-- 테이블의 전체 행 갯수는 변화가 없다.

select
    *
from
    tbl_menu
where
    menu_name = '파인애플탕';

update tbl_menu
set
    category_code = 7
where -- 바꿀 행 조건
    menu_code = 23;

-- DELETE
-- 테이블의 행을 삭제하는 구문
-- 테이블의 행의 갯수 줄어든다

-- LIMIT를 사용한 삭제
-- 20000원 이상인 데이터중, 가격이 높은순으로 2개 삭제
delete
from tbl_menu
where -- 삭제할 행 조건
menu_price >= 20000
order by menu_price desc -- 내림차순
limit 2;

-- 20000원 이상 가격 높은 순으로 조회
select
    menu_name,
    menu_price
from
    tbl_menu
where
    menu_price  >= 20000
order by
    menu_price desc;

-- 단일 행 삭제
delete
from tbl_menu
where
    menu_code = 26;

select
    *
from
    tbl_menu;

-- 테이블 전체행 삭제
delete
from tbl_menu
where menu_code > 0;
