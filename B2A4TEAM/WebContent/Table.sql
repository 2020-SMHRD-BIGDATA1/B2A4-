drop table gae_member ;
drop table gae_info;

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

delete from GAE_MEMBER where mem_nick= '¼öÁ¦ºñ'


select * from GAE_INFO;

drop table gae_member;


delete from GAE_MEMBER where mem_mail = 'ljh2725'
delete from gae_info where mem_mail='ljh2725'
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


insert into CHAT_CONTENT values(1, 'º¸¸®¸¾', '·çºñ¸¾ ¾È³çÇÏ¼¼¿ä', sysdate);
insert into CHAT_CONTENT values(1, '·çºñ¸¾', 'º¸¸®¸¾ ¹Ý°¡¿ö¿ä', sysdate);
insert into CHAT_CONTENT values(1, 'º¸¸®¸¾', '·çºñ¾Ö±á ³Ñ ±Í¿±³×¿©', sysdate);

insert into CHAT_CONTENT values(2, '¹¶Ä¡', 'º¸¸®µµ ³Ê¹« ±Í¿±±Í¿±', sysdate);
insert into CHAT_CONTENT values(2, 'º¸¸®¸¾', '¿ì¸® °°ÀÌ »êÃ¥½ÃÄÑ¿ä', sysdate);
insert into CHAT_CONTENT values(2, '¹¶Ä¡', 'º¸¸®¾Ö±á ³Ñ ±Í¿±³×¿©', sysdate);

select * from chat_content order by chat_time DESC;
select * from chat_room order by chat_index;


create table gae_info (
mem_mail varchar2(100),
gae_img varchar2(500),
gae_name varchar2(100),
gae_sex varchar2(100),
gae_age varchar2(100),
gae_species varchar2(100),
gae_weight varchar2(100),
gae_size varchar2(100),
gae_walking varchar2(10),
gae_cut varchar2(100),
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
insert into gae_info values('gae', '¸¸¼ö', '2', '¿©ÀÚ', '°í¾Þ¾²', 'ÇÔ','5','¼Ò½ÉÈ°¹ß','');

select * from gae_info

delete from chat_room where chat_user2 ='jihoon';
delete from chat_room where chat_user1 ='hihi';
select * from CHAT_ROOM;



create table TIP_BBS(
   bbsID number,
   bbsTitle varchar2(50),
   mem_nick varchar2(100),
   bbsDate date,
   bbsContent varchar2(2048),
   bbsAvailable number,
   constraint tip_bbsid_pk primary key(bbsID),
   constraint bbs_mail_fk foreign key(mem_mail)
	references gae_member(mem_mail)
)

create table gae_group(
mem_mail varchar2(100),
gae_group varchar2(10)
);
alter table gae_group
add constraint group_mail_fk foreign key(mem_mail)
references gae_member(mem_mail)

select * from GAE_GROUP

create table BBS(
	bbsID number,
	bbsTitle varchar2(50),
	mem_mail varchar2(100),
	bbsDate date,
	bbsContent varchar2(2048),
	bbsAvailable number,
	constraint bbsid_pk primary key(bbsID)
)
select * from bbs
