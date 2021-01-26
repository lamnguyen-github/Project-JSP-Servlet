
create DATABASE projectweb
use projectweb
go

create table account(
IDACCOUNT VARCHAR(255) PRIMARY KEY,
TENACCOUNT VARCHAR(255),
SODIENTHOAI VARCHAR(10),
DIACHI nVARCHAR(255),
EMAIL VARCHAR(50),
CHUCVU nVARCHAR(50),
PASSWORD VARCHAR(255)
);


CREATE table product(
IDPRODUCT VARCHAR(50) PRIMARY KEY,
TENPRODUCT NVARCHAR(255),
LOAI nVARCHAR(	50),
CHATLIEU nVARCHAR(50),
GIATIEN int,
SOLUONGTRONGKHO INT,
DANHGIA int,
TINHTRANG NVARCHAR(255)
);

ALTER table product MODIFY column DANHGIA NVARCHAR(255)
ALTER table product MODIFY column tinhtrang NVARCHAR(100)
ALTER table product MODIFY column LOAI NVARCHAR(50)
ALTER table product MODIFY column CHATLIEU NVARCHAR(50)
 
alter table product
add column tinhtrang varchar(100)

alter table product
add column image BLOB


CREATE TABLE lienhe(
MALIENHE VARCHAR(50) PRIMARY KEY,
EMAIL VARCHAR(255),
SODIENTHOAI VARCHAR(10),
MUCCANLIENHE nVARCHAR (255),
NOIDUNGLIENHE NVARCHAR(4000),
IDACCOUNT VARCHAR(255),
FOREIGN KEY(IDACCOUNT) REFERENCES account(IDACCOUNT)
);

CREATE TABLE giohang(
MAGIOHANG VARCHAR(50) PRIMARY KEY,
IDACCOUNT VARCHAR(255),
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT)
);

CREATE table giaiquyetlienhe(
IDACCOUNT VARCHAR(255),
MALIENHE VARCHAR(50),
TRANGTHAI nVARCHAR(20),
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT),
FOREIGN KEY(MALIENHE) REFERENCES lienhe(MALIENHE)
);

create table thietke(
MATHIETKE VARCHAR (50) PRIMARY KEY,
TENTHIETKE nVARCHAR(255),
LOAITHIETKE nVARCHAR(255),
MOTA nVARCHAR(255)
);
create table chitietthietke(
MATHIETKE VARCHAR(50),
MASANPHAM VARCHAR(50),
SOLUONG INT,
);

CREATE TABLE tintuc(
matintuc varchar(50) PRIMARY KEY,
tieude nvarchar(100),
noidung nvarchar (4000),
IDACCOUNT VARCHAR(50),
NGAYDANG DATE,
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT)
);


CREATE TABLE DONHANG(
MADONHANG VARCHAR(50) PRIMARY KEY,
IDACCOUNT VARCHAR(50),
TONGTHANHTIEN INT
);

CREATE TABLE chitietdonhang(
MADONHANG VARCHAR(50),
IDPRODUCT VARCHAR(50),
SOLUONG INT,
FOREIGN KEY(MADONHANG) REFERENCES DONHANG(MADONHANG),
FOREIGN KEY(IDPRODUCT) REFERENCES product(IDPRODUCT)
);

CREATE TABLE DATHANG(
MADATHANG VARCHAR(50),
MAGIOHANG VARCHAR(50),
SOLUONG INT,
FOREIGN KEY(MAGIOHANG) REFERENCES GIOHANG(MAGIOHANG)
);

CREATE TABLE YEUTHICH(
IDACCOUNT VARCHAR(255),
IDPRODUCT VARCHAR(50),
FOREIGN KEY(IDPRODUCT) REFERENCES product(IDPRODUCT),
FOREIGN KEY(IDACCOUNT) REFERENCES ACCOUNT(IDACCOUNT)
);

CREATE TABLE donvivanchuyen(
MADONVIVANCHUYEN VARCHAR(50) PRIMARY KEY,
TENDONVIVANCHUYEN nVARCHAR(255),
PHIVANCHUYEN INT
);

CREATE TABLE HOADON(
MAHOADON VARCHAR(50) PRIMARY KEY,
MADONVIVANCHUYEN VARCHAR(50),
MADONHANG VARCHAR(50),
THANHTIEN INT,
FOREIGN KEY(MADONVIVANCHUYEN) REFERENCES donvivanchuyen(MADONVIVANCHUYEN),
FOREIGN KEY(MADONHANG) REFERENCES DONHANG(MADONHANG)
);

ALTER TABLE hoadon ADD IDACCOUNT VARCHAR(50)

CREATE TABLE GIAOHANG(
MAHOADON VARCHAR(50),
MADONVIVANCHUYEN VARCHAR(50),
IDACCOUNT VARCHAR(255),
DIACHI VARCHAR(255),
NGAYGIAO DATE,
TRANGTHAI nVARCHAR(50),
FOREIGN KEY(MADONVIVANCHUYEN) REFERENCES donvivanchuyen(MADONVIVANCHUYEN),
FOREIGN KEY(MAHOADON) REFERENCES HOADON(MAHOADON)
);

CREATE TABLE HINHANH(
ID NVARCHAR(255) PRIMARY KEY,
URL NVARCHAR(255) PRIMARY KEY
);

CREATE TABLE DANHMUCTHIETKE(
ID VARCHAR(255) PRIMARY KEY,
LOAITHIETKE VARCHAR(255)
);
