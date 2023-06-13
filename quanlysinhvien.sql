create database quanlysinhvien;
use quanlysinhvien;
CREATE TABLE class (
    classid INT AUTO_INCREMENT PRIMARY KEY,
    classname VARCHAR(50) NOT NULL,
    startdate DATETIME NOT NULL,
    status BIT
);

CREATE TABLE student (
    studentid INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    studentname VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(20),
    status BIT,
    classid INT NOT NULL,
    FOREIGN KEY (classid)
        REFERENCES class (classid)
);
CREATE TABLE subject (
    subid INT AUTO_INCREMENT PRIMARY KEY,
    subname VARCHAR(50) NOT NULL,
    credit TINYINT NOT NULL DEFAULT 1 CHECK (Credit >= 1),
    status BIT DEFAULT 1
);

CREATE TABLE Mark (
    MarkId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId INT NOT NULL,
    StudentId INT NOT NULL,
    Mark FLOAT DEFAULT 0 CHECK (Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId , StudentId),
    FOREIGN KEY (SubId)
        REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId)
        REFERENCES Student (StudentId)
);





















