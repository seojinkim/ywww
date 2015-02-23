drop table users;

create table users(
	id varchar(15) primary key not null,
	pw varchar(15) not null,
	name varchar(10) not null
);

insert into users values('test@google.com','test','관리자');

commit;