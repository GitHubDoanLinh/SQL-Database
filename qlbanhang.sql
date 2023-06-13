create database quanlybanhang;
use quanlybanhang;
 create table customer(
 cid int not null primary key,
 cname varchar(50),
 cage int);
 
 create table Ordering(
 oid int primary key,
 cid int not null, foreign key(cid) references customer(cid),
 odate datetime,
 ototalprice int);
 
 create table orderdetail(
 oid int, foreign key(oid) references ordering(oid),
 pid int, foreign key(pid) references product(pid),
 odqty int
 );
 
 create table product(
 pid int not null primary key,
 pname varchar(100),
 price int not null
 );
 
