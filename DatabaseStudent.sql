-- create database quanlynhanvien;
use quanlynhanvien;
CREATE TABLE phongban (
    mapb INT NOT NULL,
    tenpb VARCHAR(50),
    matruongphong INT NULL
);

drop table phongban;

CREATE TABLE nhanvien (
    idnhanvien INT NOT NULL,
    hoten VARCHAR(50) NOT NULL,
    namsinh DATE NULL,
    diachi VARCHAR(50) NULL,
    gioitinh BIT NOT NULL,
    luong DOUBLE NULL,
    phong VARCHAR(5) NULL
);
CREATE TABLE duan (
    maduan INT NOT NULL,
    tenduan VARCHAR(50) NULL,
    ngaybatdau DATE NULL,
    ngayketthuc DATE NULL
);

CREATE TABLE quanlyduan (
    maduan INT NOT NULL,
    manhanvien INT NOT NULL,
    ngaythamgia DATETIME NULL,
    ngayketthuc DATETIME NULL,
    sogio INT NULL,
    vaitro VARCHAR(255) NULL
);
