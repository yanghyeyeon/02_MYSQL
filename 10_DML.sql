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

/*
REPLACE
-- REPLACE를 통해 중복된 데이터를 덮어 쓸 수 있다.
-- 해당 행을 삭제하고 새로운 값을 삽입한다.

-- INSERT 시 PRIMARY KEY(기본키) 또는 UNIQUE KEY 충돌이 발생할 수 있다.

-- UPDATE 조건을 충족하는 모든 행을 수정 할 수 있지만,
-- REPLACE무조건 한 행에 대해 수행만 가능하다
*/

/*
PRIMARY KEY : 기본키, PK 유일성과 최소성을 충족한다. 해당 행을 식별할때 기준이되는 필수 키
UNIQUE KEY : 테이블 내에서 유일성을 만족하는 키, 해당 행을 식별할때 사용 가능

최소성 : 키를 구성하는 속성들 중 가장 최소로 필요한 속성들로만 키를 구성하는 성질
유일성 : 여러개의 데이터가 존재할때, 각각의 행을 유일하게 식별가능한 조건
*/

select * from tbl_menu;
-- [23000][1062] Duplicate entry '17' for key 'tbl_menu.PRIMARY'
insert into tbl_menu values (17, '참기름소주', 5000, 10, 'Y');

replace into tbl_menu values (17, '참기름소주', 5000, 10, 'Y');

-- into 생략 가능
replace tbl_menu values (17, '참기름맥주', 5000, 10, 'Y');

replace tbl_menu
set menu_code = 9,
    menu_name = '딸기마카롱',
    menu_price = 2000,
    category_code = 9,
    orderable_status = 'Y';
