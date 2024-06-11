-- LIMIT
-- SELECT 문의 결과 집합에서, 반환할 행의 수를 제한 할 때 사용된다.
/*
LIMIT
SELECT
    [columnName]
FROM
    [tableName]
LIMIT [OFFSET], [ROWCOUNT]

OFFSET : 시작할 행의 번호 (인덱스 체계)
ROW_COUNT : 이후 행부터 반환 받을 행의 갯수
*/

-- tbl_menu 테이블의 menu_code, menu_name, menu_price
-- menu_code 기준 내림차순 정렬
select
    menu_code,
    menu_name,
    menu_price
from
    tbl_menu
order by
    menu_code desc;

-- 상위 다섯 줄의 행만을 조회
select
    menu_code,
    menu_name,
    menu_price
from
    tbl_menu
order by
    menu_code desc
limit 5;

-- 2번 행부터 5번 행까지 조회
select
    menu_code,
    menu_name,
    menu_price
from
    tbl_menu
order by
    menu_code desc
limit 1,4;


/*
tbl_menu 테이블에서
menu_name 과 menu_price
가장 저렴한 순으로 3가지를 보여주세요
*/
select
    menu_name,
    menu_price
from
    tbl_menu
order by
    menu_price -- 오름차순 default
limit 3;