CREATE DATABASE IF NOT EXISTS quan_ly_web_phim
CREATE TABLE phim (
    id int AUTO_INCREMENT PRIMARY KEY,
    ma_phim varchar(10),
    thoi_luong int,
    nam int,
    tuoi int,
    dao_dien int,
    link_phim varchar(255),
    trailer varchar(255),
    poster varchar(255),
    noi_dung text,
    mo_ta text,
    quoc_gia_id int,
    the_loai_id int
);
CREATE TABLE nguoi_dung(
    id int AUTO_INCREMENT PRIMARY KEY,
    ten_dang_Nhap varchar(30),
    mat_khau varchar(30),
    tuoi int,
    so_dien_thoai varchar(10),
    email varchar(20),
    vai_tro_id int
);

create TABLE vai_tro(
	id int AUTO_INCREMENT PRIMARY KEY,
    vai_tro varchar(50)
);

CREATE TABLE the_loai(
    id int AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai varchar(40)
);
CREATE TABLE quoc_gia(
    id int AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia varchar(30)
);

create TABLE phim_dien_vien(
	id int AUTO_INCREMENT PRIMARY KEY,
    phim_id int,
    dien_vien_id int
);

INSERT INTO vai_tro (vai_tro) VALUES
('Người dùng'),   -- id = 1
('Đạo diễn'),     -- id = 2
('Diễn viên'),    -- id = 3
('Admin');        -- id = 4

INSERT INTO the_loai (tenTheLoai) VALUES
('Hành động'),
('Tâm lý'),
('Kinh dị'),
('Hài'),
('Phiêu lưu'),
('Bí ẩn'),
('Viễn tưởng'),
('Hoạt hình'),
('Tình cảm'),
('Chiến tranh');

INSERT INTO quoc_gia (tenQuocGia) VALUES
('Việt Nam'),
('Mỹ'),
('Hàn Quốc'),
('Trung Quốc'),
('Nhật Bản'),
('Anh'),
('Pháp'),
('Thái Lan'),
('Ấn Độ'),
('Canada');

INSERT INTO nguoi_dung (ten_dang_Nhap, mat_khau, tuoi, so_dien_thoai, email, vai_tro_id) VALUES
('user01', '123456', 20, '0911111111', 'user01@mail.com', 1),
('user02', '123456', 22, '0922222222', 'user02@mail.com', 1),
('user03', '123456', 25, '0933333333', 'user03@mail.com', 1),
('director01', 'dir001', 40, '0944444444', 'director01@mail.com', 2),
('director02', 'dir002', 45, '0955555555', 'director02@mail.com', 2),
('actor01', 'act001', 30, '0966666666', 'actor01@mail.com', 3),
('actor02', 'act002', 32, '0977777777', 'actor02@mail.com', 3),
('actor03', 'act003', 28, '0988888888', 'actor03@mail.com', 3),
('admin01', 'admin123', 35, '0999999999', 'admin01@mail.com', 4),
('admin02', 'admin456', 38, '0900000000', 'admin02@mail.com', 4);

INSERT INTO phim (ma_phim, thoi_luong, nam, tuoi, dao_dien, link_phim, trailer, poster, noi_dung, mo_ta, quoc_gia_id, the_loai_id) VALUES
('P001', 120, 2020, 16, 4, 'link1', 'tr1', 'ps1', 'Nội dung phim 1', 'Mô tả phim 1', 1, 1),
('P002', 110, 2021, 13, 4, 'link2', 'tr2', 'ps2', 'Nội dung phim 2', 'Mô tả phim 2', 2, 2),
('P003', 95, 2019, 18, 5, 'link3', 'tr3', 'ps3', 'Nội dung phim 3', 'Mô tả phim 3', 3, 3),
('P004', 140, 2022, 16, 5, 'link4', 'tr4', 'ps4', 'Nội dung phim 4', 'Mô tả phim 4', 4, 4),
('P005', 130, 2018, 16, 4, 'link5', 'tr5', 'ps5', 'Nội dung phim 5', 'Mô tả phim 5', 5, 5),
('P006', 150, 2023, 13, 5, 'link6', 'tr6', 'ps6', 'Nội dung phim 6', 'Mô tả phim 6', 6, 6),
('P007', 100, 2017, 18, 4, 'link7', 'tr7', 'ps7', 'Nội dung phim 7', 'Mô tả phim 7', 7, 7),
('P008', 115, 2020, 13, 5, 'link8', 'tr8', 'ps8', 'Nội dung phim 8', 'Mô tả phim 8', 8, 8),
('P009', 123, 2021, 16, 4, 'link9', 'tr9', 'ps9', 'Nội dung phim 9', 'Mô tả phim 9', 9, 9),
('P010', 105, 2019, 13, 5, 'link10', 'tr10', 'ps10', 'Nội dung phim 10', 'Mô tả phim 10', 10, 10);

INSERT INTO phim_dien_vien (phim_id, dien_vien_id) VALUES
(1, 6),
(1, 7),
(2, 6),
(3, 8),
(4, 7),
(5, 6),
(6, 8),
(7, 7),
(8, 6),
(9, 8);