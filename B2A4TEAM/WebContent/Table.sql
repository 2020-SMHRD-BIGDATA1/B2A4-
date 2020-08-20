drop table gae_member;

create table gae_member(
mem_name varchar2(100) not null,
mem_mail varchar2(100),
mem_pw varchar2(100) not null,
mem_nick varchar2(100),
mem_gender varchar2(50) not null,
mem_birth varchar2(100) not null,
mem_tel varchar2(200) not null,
mem_addr varchar2(200) not null,
constraint mem_mail_pk primary key(mem_mail)
)

select * from GAE_MEMBER;

drop table gae_member;
insert into GAE_MEMBER values('ÀÌÁöÈÆ','jihoon','1234','º¸¸®¸¾','man','940715','010-8877-2725','´ë¿ì');
insert into GAE_MEMBER values('¹®¿äÇÑ','yohan','1234','·çºñ¸¾','man','940715','010-8877-2725','´ë¿ì');

delete from GAE_MEMBER where mem_mail = 'jihoon2723@naver.com'

-- chat_room

create sequence chat_index
increment by 1
start with 1

create table chat_room(
chat_index int ,
chat_user1 varchar2(100) not null,
chat_user2 varchar2(100) not null,
chat_time date
)

insert into chat_room values(chat_index.nextval, 'º¸¸®¸¾', '·çºñ¸¾', sysdate);
insert into chat_room values(chat_index.nextval, 'º¸¸®¸¾', '¹¶Ä¡', sysdate);
insert into chat_room values(chat_index.nextval, 'º¸¸®¸¾', 'ÈÞÁö', sysdate);

select * from chat_room

--chat_content

drop table chat_content

create table chat_content(
chat_index int,
writer varchar2(100) not null,
chat_conent varchar2(1000) not null,
chat_time date,
constraint index_fk foreign key(chat_index)
references chat_room(chat_index) 
)

insert into CHAT_CONTENT values(chat, 'º¸¸®¸¾', '·çºñ¸¾ ¾È³çÇÏ¼¼¿ä', sysdate);
insert into CHAT_CONTENT values(1, '·çºñ¸¾', 'º¸¸®¸¾ ¹Ý°¡¿ö¿ä', sysdate);
insert into CHAT_CONTENT values(1, 'º¸¸®¸¾', '·çºñ¾Ö±á ³Ñ ±Í¿±³×¿©', sysdate);


insert into CHAT_CONTENT values(3, '¹¶Ä¡', 'º¸¸®µµ ³Ê¹« ±Í¿±±Í¿±', sysdate);
insert into CHAT_CONTENT values(3, 'º¸¸®¸¾', '¿ì¸® °°ÀÌ »êÃ¥½ÃÄÑ¿ä', sysdate);
insert into CHAT_CONTENT values(3, '¹¶Ä¡', 'º¸¸®¾Ö±á ³Ñ ±Í¿±³×¿©', sysdate);

select * from chat_content order by chat_time DESC
