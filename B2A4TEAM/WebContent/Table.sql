drop table gae_member ;
drop table gae_info;
-- ȸ������ ���̺�
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
insert into GAE_MEMBER values('������','jihoon','1234','������','man','940715','010-8877-2725','���');
insert into GAE_MEMBER values('������','yohan','1234','���','man','940715','010-8877-2725','���');


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

insert into chat_room values(chat_index.nextval, '������', '���', sysdate);
insert into chat_room values(chat_index.nextval, '������', '��ġ', sysdate);
insert into chat_room values(chat_index.nextval, '������', '����', sysdate);

select * from chat_room order by chat_index;

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

insert into CHAT_CONTENT values(chat, '������', '��� �ȳ��ϼ���', sysdate);
insert into CHAT_CONTENT values(1, '���', '������ �ݰ�����', sysdate);
insert into CHAT_CONTENT values(1, '������', '���ֱ� �� �Ϳ��׿�', sysdate);


insert into CHAT_CONTENT values(3, '��ġ', '������ �ʹ� �Ϳ��Ϳ�', sysdate);
insert into CHAT_CONTENT values(3, '������', '�츮 ���� ��å���ѿ�', sysdate);
insert into CHAT_CONTENT values(3, '��ġ', '�����ֱ� �� �Ϳ��׿�', sysdate);

select * from chat_content order by chat_time DESC

--������ ���� ���̺�

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


insert into gae_info values('jihoon', '����', '2', '����', 'Ǫ��', '��','5','�ҽ�Ȱ��','');
insert into gae_info values('yohan', '���', '2', '����', '���', '��','5','�ҽ�Ȱ��','');

select * from gae_info
delete from chat_content where writer ='������';
delete from chat_content where writer ='���';


--������ �����ִ� �׷� ���̺� ����
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