drop table gae_member ;
drop table gae_info;
-- È¸¿ø°¡ÀÔ Å×ÀÌºí
create table gae_member(
mem_name varchar2(100) not null,
mem_mail varchar2(100),
mem_pw varchar2(100) not null,
mem_nick varchar2(100) not null,
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

drop sequence chat_index;

create sequence chat_index
increment by 1
start with 1;

drop table chat_room ;

create table chat_room(
chat_index int primary key,
chat_user1 varchar2(100) not null,
chat_user2 varchar2(100) not null,
chat_time date
);

select * from CHAT_ROOM;

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

--°­¾ÆÁö Á¤º¸ Å×ÀÌºí

create table gae_info (
mem_mail varchar2(100),
gae_name varchar2(100),
gae_age varchar2(100),
gae_gender varchar2(100),
gae_kind varchar2(100),
gae_neu varchar2(100),
gae_weight varchar2(100),
gae_type varchar2(100),
gae_img varchar2(500),
gae_walking varchar2(10),
gae_dog_react varchar2(10),
gae_human_react varchar2(10),
gae_test1 varchar2(10),
gae_test2 varchar2(10),
gae_test3 varchar2(10),
gae_test4 varchar2(10),
gae_test5 varchar2(10),
gae_test6 varchar2(10),
gae_test7 varchar2(10),
gae_test8 varchar2(10)
);
alter table gae_info
add constraint mail_fk foreign key(mem_mail)
references gae_member(mem_mail)


insert into gae_info values('jihoon', 'º¸¸®', '2', '¿©ÀÚ', 'Çªµé', 'ÇÔ','5','¼Ò½ÉÈ°¹ß','');
insert into gae_info values('yohan', '·çºñ', '2', '¿©ÀÚ', 'ºñ¼õ', 'ÇÔ','5','¼Ò½ÉÈ°¹ß','');

select * from gae_info



