-- VIEW
-- SELECT 쿼리문을 저장한 객체 --> 가상테이블이라고 불린다.
-- 실질적인 데이터를 물리적으로 저장하고 있지 않음
-- 테이블을 사용하는 것과 같이 동일하게 사용 가능하다.

select * from tbl_menu;

-- hansik
select * from tbl_menu
where
    category_code = 4;

-- VIEW 생성
create view hansik as
select *
from
    tbl_menu
where
    category_code = 4;

select * from hansik;

-- 베이스 테이블(tbl_menu) 정보가 변경되면 VIEW의 결과도 같이 변경된다.
insert into tbl_menu values (null, '식혜맛국밥', 5500, 4, 'Y');
select * from hansik;