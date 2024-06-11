-- GROUPING
-- GROUP BY 절을 이용해서 결과 집합을 특정 열의 값에 따라 그룹화 하는데 사용
-- HAVING은 GROUP BY 절과 함께 사용해야 하며, 그룹에 대한 조건을 적용하는데 사용된다.

-- MENU TABLE에서 카테고리 그룹 조회
select
    category_code
from
    tbl_menu
group by
    category_code

-- 카테고리 그룹에서 COUNT를 사용해서 갯수를 조회
-- 카테고리별 갯수 조회하기
select
    category_code,
    count(*) -- 매개변수와 위치에 따라 여러 사용방법이 있음
             -- 전체 행 중 일치하는 행이 몇개인지 갯수를 반환하는 역할
from
    tbl_menu
group by
    category_code;

-- SUM으로 그룹화된 값의 총합을 구할 수 있다.
-- 카테고리별 가격 총합 계산하기
select
    category_code,
    sum(menu_price)
from
    tbl_menu
group by category_code;

-- AVG 으로 그룹화된 값의 평균을 구할 수 있다.
-- 카테고리별 평균 계산하기
select
    category_code,
    count(*) 총갯수,
    sum(menu_price) 총합,
    avg(menu_price) 평균
from
    tbl_menu
group by
    category_code;

-- 2개 이상의 조건으로 그룹을 생성
-- menu_price, category_code
select
    menu_price,
    category_code,
    count(*)
from
    tbl_menu
group by
    menu_price,
    category_code;


-- category_code, orderable_status -> 그룹
select
    category_code,
    orderable_status,
    count(*) 총갯수,
    avg(menu_price) 평균,
    sum(menu_price) 총합
from
    tbl_menu
group by
    category_code,
    orderable_status
order by
    orderable_status;

/*
HAVING
- GROUP BY 와 함께 사용되며, 그룹화된 결과에 조건을 적용할 때 사용된다.
- WHERE 는 개별 형에 조건을 적용하는 것과 달리
- HAVING 절은 그룹화된 데이터에 조건을 적용한다.
*/
-- menu_price, category_code로 그루핑된 데이터에서
-- category_code 5이상 , 8이하 만 조회
select
    menu_price,
    category_code
from
    tbl_menu
group by
    menu_price,
    category_code
having
    category_code >= 5 and category_code <= 8;

-- where 절로도 할 수 있다.
select
    menu_price,
    category_code
from
    tbl_menu
where
    category_code >=5 and category_code <= 8
group by
    menu_price,
    category_code;
