CREATE SCHEMA IF NOT EXISTS `2_2_quanlydiemthi` ;

USE `2_2_quanlydiemthi`;

CREATE TABLE IF NOT EXISTS HocSinh(
	ma_hs int primary key auto_increment,
    ten_hs varchar(50),
    ngay_sinh datetime,
    lop varchar(20),
    gt varchar(20)
);

CREATE TABLE IF NOT EXISTS GiaoVien (
	ma_gv int primary key auto_increment,
    ten_gv varchar(50),
    sdt varchar(10)
); 

CREATE TABLE IF NOT EXISTS MonHoc (
	ma_mh int primary key auto_increment,
    ten_mh varchar(50),
    ma_gv int not null,
    foreign key (ma_gv) references giaovien(ma_gv)
);

CREATE TABLE IF NOT EXISTS BangDiem (
	ma_hs int not null,
    ma_mh int not null,
    diem_thi int,
    ngay_kt datetime,
    primary key (ma_hs, ma_mh),
    foreign key (ma_hs) references hocsinh(ma_hs),
    foreign key (ma_mh) references monhoc(ma_mh)
);