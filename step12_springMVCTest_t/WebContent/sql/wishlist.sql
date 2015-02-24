drop table wishlist;

create table wishlist(
  id varchar(20) primary key,
  festivalNum varchar(20) not null
);

insert into wishlist values('1', '10');
insert into wishlist values('2', '20');

commit;