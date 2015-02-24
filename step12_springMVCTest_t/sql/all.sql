
drop table users cascade constraints;
drop table wish cascade constraints;
drop table cook cascade constraints;
drop table cooktype cascade constraints;
drop table cookelement cascade constraints;
drop table element cascade constraints;


create table users(
	id varchar2(20) primary key not null,
	pw varchar2(20) not null,
	name varchar2(20) not null,
	phone varchar2(20) not null
);

create table city_country(
	city varchar2(20) primary key not null,
	country varchar2(20) not null
);

create table theme(
	themeNum varchar2(20) primary key not null,
	themeName varchar2(20) not null
);


insert into users values('test@google.com', '0000', '관리자', '010-7105-9326');

commit;