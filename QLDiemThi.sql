CREATE DATABASE QuanLyDiemThi;
USE QuanLyDiemThi;
CREATE TABLE HocSinh (
    MaHS VARCHAR(20) PRIMARY KEY,
    TenHS VARCHAR(50),
    NgaySinh DATETIME,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);
CREATE TABLE MonHoc (
    MaMH VARCHAR(20) PRIMARY KEY,
    TenMH VARCHAR(50)
);
CREATE TABLE BangDiem(
MaHS VARCHAR(20),
    MaMH VARCHAR(20),
 DiemThi INT,
 NgayKT DATETIME,
 PRIMARY KEY (MaHS, MaMH),
 foreign key (MaHS) references HocSinh(MaHS),
 foreign key (MaMH) references monhoc (MaMH)
 );
 
 CREATE TABLE GiaoVien(
    MaGV VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(20),
    SDT VARCHAR(10)
);
 alter table monhoc add MaGV varchar(20);
 alter table monhoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);	 -- them rang buoc 
 
 
 