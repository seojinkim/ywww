drop table users;

create table users(
  id varchar(20) primary key,
  pw varchar(20) not null,
  name varchar(20) not null,
  phone varchar(20) not null
);

select * from users;
commit;