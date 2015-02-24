
drop table users cascade constraints;
drop table wish cascade constraints;

create table users(
	id varchar2(20) primary key not null,
	pw varchar2(20) not null,
	name varchar2(20) not null,
	phone varchar2(20) not null
);

create table wishlist(
	id varchar2(20) primary key not null,
	festivalNum varchar2(20) not null
);


insert into users values('test@google.com', '0000', '관리자', '010-7105-9326');
insert into wishList values('1', '10');

commit;