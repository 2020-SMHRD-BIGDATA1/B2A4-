-- 개멤버 테이블 생성
create table gae_member(
mem_name varchar2(100) not null,
mem_mail varchar2(100),
mem_pw varchar2(100) not null,
mem_nick varchar2(100),
mem_gender varchar2(50) not null,
mem_birth varchar2(100) not null,
mem_tel varchar2(200) not null,
mem_addr varchar2(200) not null,
constraint name_nick_pk primary key(mem_name, mem_nick)
)

-- chat 방번호 시퀀스 생성
create sequence chat_index
increment by 1
start with 1

-- chat 테이블생성
create table chat(
chat_index int primary key,
mem_nick varchar2(100) not null,
receiver_nick varchar2(100) not null,
chat_time date not null,
chat_content varchar2(1000) not null,
constraint nick_fk foreign key(mem_nick)
references gae_member(mem_nick)
)


