-- WHERE
-- 특저 조건에 맞는 레코드(데이터)만을 선택하는데 사용된다.
-- 방법이 다양하다.

-- 같음(=) 연산자를 활용한 WHERE
select -- 보여줘
    menu_name,
    menu_price,
    orderable_status
from -- 여기에 있는
    tbl_menu
where -- 이 조건에 맞는
    orderable_status = 'Y';

/*
tbl_menu 테이블에 있는 컬럼
menu_name, menu_price, orderable_status 를 조회할건데,
단, menu_price 가 13000 인 데이터만 조회해줘
*/
select
    menu_name,
    menu_price,
    orderable_status
from
    tbl_menu
where
    menu_price = 13000;

-- select에 담지 않아도, 다른 컬럼의 속성으로 제한 할 수 있다.
select
    menu_name,
    menu_price
from
    tbl_menu
where
    orderable_status = 'Y'


-- 같지 않음(!=, <>) 연산자를 사용하는 WHERE
-- ColumnA != B 컬럼에 있는 내용 중 B와 같지 않은 데이터만 보여주기
-- ColumnA <> B 컬럼에 있는 내용 중 B와 같지 않은 데이터만 보여주기
select
    menu_code,
    menu_name,
    orderable_status
from
    tbl_menu
where
#    orderable_status != 'Y';
    orderable_status <> 'Y';

-- 대소 비교 연산자(>, >=, <, <=)를 사용하는 WHERE
select
    menu_code,
    menu_name,
    menu_price
from
    tbl_menu
where
    menu_price >= 20000;

-- AND 연산자와 함께 where 절 사용
-- 둘중에 하나라도 false 면 false, 둘다 true 여야지 true
/*
true = 1; // false = 0
null : 값이 없다.
*/

-- true 가 되는 조건
select 1 and 1; -- true and true -> true

-- false 가 되는 조건
select 1 and 0, 0 and 0, 0 and null;

-- null 이 되는 조건
select 1 and null, null and null;

-- WHERE에서의 AND 조건은 두 조건을 모두 충족시키는 것을 조회한다.
select
    menu_name,
    menu_price,
    category_code,
    orderable_status
from
    tbl_menu
where
    orderable_status = 'Y' and -- 주문가능여부가 'Y' 이고
    category_code = 10; -- 카테고리코드가 10인 데이터만 출력

/*
tbl_menu 테이블에 있는 menu_name, menu_price, category_code,
orderable_Status 를 조회하는데,
주문 가능여부가 Y 이고, 가격이 10000원 이하인 데이터 조회
*/
select
    menu_name,
    menu_price,
    category_code,
    orderable_status
from
    tbl_menu
where orderable_status = 'Y' and
      menu_price <= 10000;

-- OR 연산자와 함께 WHERE 절 사용
-- true가 되는 조건
select 1 or 1, 0 or 1, 1 or null;

-- false가 되는 조건
select 0 or 0;

-- null이 될 조건
select 0 or null, null or null;


-- WHERE 에서의 OR 조건
-- 두 조건 중 하나라도 충족하면 조회한다.
select
    menu_name,
    menu_price,
    category_code,
    orderable_status
from
    tbl_menu
where
    orderable_status = 'Y' or
    category_code = 12;


/*
AND와 OR 연산의 우선순위
- AND가 OR 보다 우선순위가 높다.
- OR의 우선순위를 높이고 싶으면 () 소괄호를 이용한다.
*/
-- 0 AND 0이 먼저 진행되므로 두번째 연산은 1 or 0이 된다. => 1
select 1 or 0 and 0;
-- 1 or 0 이 먼저 연산되므로 두번째 연산 1 AND 0 => 0
select (1 or 0) and 0;