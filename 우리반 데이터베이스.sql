-- favorite_subject 테이블 생성
create table favorite_subject
(
    subject_no int primary key auto_increment,
    subject_name varchar(255) not null unique

);

-- class 테이블 생성
create table if not exists class
(
    student_no int primary key auto_increment,
    student_name varchar(255) not null,
    gender varchar(5) not null check(gender in('남','여')),
    github_id varchar(255) not null unique,
    email varchar(255) not null unique,
    mbti varchar(10) ,
    subject_no int,
    foreign key(subject_no)
        references favorite_subject (subject_no)
);

describe class; -- 테이블 구성 확인
describe favorite_subject;

insert into favorite_subject
(subject_name)
values('JAVA'),
      ('MYSQL'),
      ('JDBC'),
      ('MYBATIS'),
      ('SPRING'),
      ('REACT');

select * from favorite_subject
order by subject_no;

insert into class
(/*안넣어도됨*/student_name,gender,github_id,email,mbti,subject_no)
values
    ('박태근','남','Ohgiraffers-bear','bear.ohgiraffers@gmail.com',null,5),
    ('지동현','남','Bring2it2on','yjkl0516@gmail.com',null,3),
    ('김강현','남','kimkinghyeon','modan8199@gmail.com',null,1),
    ('이득규','남','MANTISKYU','asdaron44@gmail.com',null,2),
    ('홍주연','여','juyeon99','juyeon0806@gmail.com',null,1),
    ('양혜연','여','yanghyeyeon','yhy4058@gmail.com',null,5),
    ('이규섭','남','LKS9616','lks609591@gmail.com',null,2),
    ('전유안','남','euuuuuuan','euan.may24@gmail.com',null,4),
    ('박성은','여','seongeun223','jklun080921@gmail.com',null,2),
    ('박하얀','여','parkhayarn','s0224y92@gmail.com',null,1),
    ('위성민','남','wdh970616','wdh970616@naver.com',null,6),
    ('박효찬','남','qwes5674','qwes5674@gmail.com',null,2),
    ('이의정','남','himisterlee','lejlej100418@gmail.com',null,2),
    ('권은혜','여','dmsgpk237','a01027947353@gmail.com',null,2),
    ('권보현','남','Kwonbohyun','kwon18923@gmail.com',null,2),
    ('배하은','여','HEun0420','usialeta@gmail.com',null,2),
    ('강연진','여','kangyeonjin','yeonjin917n.n@gmail.com',null,5),
    ('강진영','남','weed97','weed9935@gmail.com',null,2);

select * from class;