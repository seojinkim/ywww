drop table users;

create table users(
	id varchar(15) primary key not null,
	pw varchar(15) not null,
	name varchar(10) not null,
	phone varchar(20) not null
);

insert into users values('test@google.com', '0000', '관리자', '010-7105-9326');

commit;