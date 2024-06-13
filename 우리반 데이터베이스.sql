create table favorite_subject
(
    subject_no int primary key auto_increment,
    subject_name varchar(255) not null unique

);

create table if not exists class
(
    student_no int primary key auto_increment,
    student_name varchar(255) not null,
    gender varchar(5) not null check(gender in('남','여')),
    github_id varchar(255) not null unique,
    email varchar(255) not null unique,
    mbti varchar(10) ,
    subject_no int,
    subject_name varchar(255),
    foreign key(subject_no)
        references favorite_subject (subject_no)
);