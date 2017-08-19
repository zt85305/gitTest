create table department (
id int primary key auto_increment,
name varchar(30) not null
);
create table staff(
id int primary key auto_increment,
name varchar(10) not null,
did int not null default 1
);
insert into department values (null,'开发部');
insert into department values (null,'教学部');
insert into department values (null,'网络部');
insert into department values (null,'运维部');
insert into department values (null,'市场部');

insert into staff values (null,'张三工程师',1);
insert into staff values (null,'李四老师',2);
insert into staff values (null,'王五装电脑',3);
insert into staff values (null,'可老师',2);
insert into staff values (null,'ss老师',2);
insert into staff values (null,'li老师',2);
insert into staff values (null,'lili网管',3);
insert into staff values (null,'lucy工程师',1);
insert into staff values (null,'pl',6);


show tables;
desc staff;
--交叉连接
select * from department,staff;
--隐式内连接,from后的表与表使用","
select s.id,s.name,m.name from department m,staff s where did = m.id order by s.id asc;
--显式内连接,from后的表与表使用join
select s.id,s.name,m.name from department m join staff s on did = m.id order by s.id asc;
--左外连接  外连接不能用where用on
select s.id,s.name,m.name from department m left join staff s on did = m.id;
--右外连接 
select s.id,s.name,m.name from department m right join staff s on did = m.id;
--子查询
select *from staff where did = (select id from department where name = '教学部');

