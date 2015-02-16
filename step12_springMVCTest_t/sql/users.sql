drop table users;

create table users(
	id varchar(15) primary key,
	pw varchar(15),
	name varchar(10),
	confirm char(1) constraint user_confirm_ck check(confirm in('Y', 'N'))
);

commit;