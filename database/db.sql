CREATE DATABASE if not exists QuanLyPhim;

1. phim
- id int
- mã phim varchar
- thời lượng int
- năm int
- diễn viên varchar
- tuổi int
- đạo diễn varchar
- quốc gia (Id) int
- thể loại (Id) int
- đường dẫn trailer varchar
- poster varchar
- mô tả text
- ảnh varchar
- nội dung varchar
2. ng dùng
- id int
- tên đăng nhập varchar
- mật khẩu varchar
- loại tài khoản (admin, ngdung, đạo diễn, diễn viên) int 
- tuổi int
- sdt varchar
- email varchar
3. thể loại
- id int
- tên thể loại varchar
4. quốc gia
- id int
- ten quoc gia varchar
CREATE DATABASE IF NOT EXISTS ql_web_phim;
USE ql_web_phim;

CREATE TABLE IF NOT EXISTS quoc_gia(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_quoc_gia varchar(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS the_loai(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_the_loai varchar(30) NOT NULL 
);
CREATE TABLE IF NOT EXISTS phim(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim varchar(20) NOT NULl,
    thoi_luong int,
    nam int,
    dien_vien varchar(255),
    tuoi INT,
    dao_dien varchar(255),
    duong_dan_phim varchar(255),
    duong_dan_trailer varchar(255),
    poster varchar(255),
    anh varchar(255),
    noi_dung text,
    mo_ta text,
    quoc_gia INT,
    the_loai INT,
    FOREIGN KEY (quoc_gia) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai) REFERENCES the_loai(id)
);

CREATE TABLE IF NOT EXISTS loai_tai_khoan(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_loai varchar(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS nguoi_dung(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap varchar(100) NOT NULL,
    mat_khau varchar(100),
    loai_tai_khoan INT,
    tuoi INT,
    sdt varchar(15),
    email varchar(30),
    FOREIGN KEY (loai_tai_khoan) REFERENCES loai_tai_khoan(id)
);

INSERT IGNORE INTO loai_tai_khoan (ten_loai) 
VALUES
('Admin'), ('nguoi_dung'), ('dao_dien'), ('dien_vien');

INSERT  INTO quoc_gia (ten_quoc_gia) VALUES
('Việt Nam'),('Hàn Quốc'),('Nhật Bản'),('Trung Quốc'),('Mỹ'),('Anh'),
('Pháp'),('Đức'),('Tây Ban Nha'),('Ý'),('Canada'),('Nga'),('Úc'),
('Brazil'),('Ấn Độ'),('Thái Lan'),('Malaysia'),('Singapore'),('Philippines'),
('Indonesia'),('Mexico'),('Thổ Nhĩ Kỳ'),('Ả Rập Saudi'),('UAE'),('Nam Phi'),
('Argentina'),('Chile'),('Na Uy'),('Thuỵ Điển'),('Hà Lan');

INSERT  INTO the_loai (ten_the_loai) VALUES
('Hành động'),('Kinh dị'),('Tình cảm'),('Hài'),('Tâm lý'),
('Phiêu lưu'),('Viễn tưởng'),('Hoạt hình'),('Tài liệu'),('Chiến tranh');

INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, loai_tai_khoan, tuoi, sdt, email) VALUES
('Admin', '123456', 1, 30, '0900000001', 'admin@example.com'),
('nguoidung1', '123456', 2, 20, '0900000002', 'nguoidung1@example.com'),
('nguoidung2', '123456', 2, 22, '0900000003', 'nguoidung2@example.com'),
('nguoidung3', '123456', 2, 19, '0900000004', 'nguoidung3@example.com'),
('nguoidung4', '123456', 2, 25, '0900000005', 'nguoidung4@example.com'),
('nguoidung5', '123456', 2, 23, '0900000006', 'nguoidung5@example.com'),
('daodien1', '123456', 3, 40, '0900000007', 'daodien1@example.com'),
('dienvien1', '123456', 4, 28, '0900000008', 'dienvien1@example.com'),
('dienvien2', '123456', 4, 30, '0900000009', 'dienvien2@example.com'),
('dienvien3', '123456', 4, 27, '0900000010', 'dienvien3@example.com');


INSERT  INTO phim
(ma_phim, thoi_luong, nam, dien_vien, tuoi, dao_dien,
duong_dan_phim, duong_dan_trailer, poster, noi_dung, mo_ta, anh,
 quoc_gia, the_loai)
VALUES
('PH001','120 phút',2020,'Diễn viên A',16,'Đạo diễn X','phim1.mp4','trailer1.mp4','poster1.jpg','Nội dung 1','Mô tả 1','anh1.jpg',1,1),
('PH002','110 phút',2019,'Diễn viên B',13,'Đạo diễn Y','phim2.mp4','trailer2.mp4','poster2.jpg','Nội dung 2','Mô tả 2','anh2.jpg',2,2),
('PH003','95 phút',2018,'Diễn viên C',16,'Đạo diễn Z','phim3.mp4','trailer3.mp4','poster3.jpg','Nội dung 3','Mô tả 3','anh3.jpg',3,3),
('PH004','130 phút',2021,'Diễn viên D',18,'Đạo diễn K','phim4.mp4','trailer4.mp4','poster4.jpg','Nội dung 4','Mô tả 4','anh4.jpg',4,4),
('PH005','100 phút',2022,'Diễn viên E',16,'Đạo diễn L','phim5.mp4','trailer5.mp4','poster5.jpg','Nội dung 5','Mô tả 5','anh5.jpg',5,5),
('PH006','140 phút',2023,'Diễn viên F',13,'Đạo diễn H','phim6.mp4','trailer6.mp4','poster6.jpg','Nội dung 6','Mô tả 6','anh6.jpg',6,6),
('PH007','115 phút',2020,'Diễn viên G',16,'Đạo diễn G','phim7.mp4','trailer7.mp4','poster7.jpg','Nội dung 7','Mô tả 7','anh7.jpg',7,7),
('PH008','125 phút',2017,'Diễn viên H',18,'Đạo diễn T','phim8.mp4','trailer8.mp4','poster8.jpg','Nội dung 8','Mô tả 8','anh8.jpg',8,8),
('PH009','98 phút',2016,'Diễn viên I',13,'Đạo diễn M','phim9.mp4','trailer9.mp4','poster9.jpg','Nội dung 9','Mô tả 9','anh9.jpg',9,9),
('PH010','90 phút',2015,'Diễn viên J',16,'Đạo diễn Q','phim10.mp4','trailer10.mp4','poster10.jpg','Nội dung 10','Mô tả 10','anh10.jpg',10,10),

('PH011','105 phút',2019,'Diễn viên K',16,'Đạo diễn AB','phim11.mp4','trailer11.mp4','poster11.jpg','Nội dung 11','Mô tả 11','anh11.jpg',11,1),
('PH012','101 phút',2018,'Diễn viên L',13,'Đạo diễn AC','phim12.mp4','trailer12.mp4','poster12.jpg','Nội dung 12','Mô tả 12','anh12.jpg',12,2),
('PH013','99 phút',2020,'Diễn viên M',16,'Đạo diễn AD','phim13.mp4','trailer13.mp4','poster13.jpg','Nội dung 13','Mô tả 13','anh13.jpg',13,3),
('PH014','112 phút',2021,'Diễn viên N',18,'Đạo diễn AE','phim14.mp4','trailer14.mp4','poster14.jpg','Nội dung 14','Mô tả 14','anh14.jpg',14,4),
('PH015','97 phút',2017,'Diễn viên O',16,'Đạo diễn AF','phim15.mp4','trailer15.mp4','poster15.jpg','Nội dung 15','Mô tả 15','anh15.jpg',15,5),
('PH016','108 phút',2016,'Diễn viên P',13,'Đạo diễn AG','phim16.mp4','trailer16.mp4','poster16.jpg','Nội dung 16','Mô tả 16','anh16.jpg',16,6),
('PH017','110 phút',2019,'Diễn viên Q',16,'Đạo diễn AH','phim17.mp4','trailer17.mp4','poster17.jpg','Nội dung 17','Mô tả 17','anh17.jpg',17,7),
('PH018','115 phút',2020,'Diễn viên R',18,'Đạo diễn AI','phim18.mp4','trailer18.mp4','poster18.jpg','Nội dung 18','Mô tả 18','anh18.jpg',18,8),
('PH019','120 phút',2021,'Diễn viên S',13,'Đạo diễn AJ','phim19.mp4','trailer19.mp4','poster19.jpg','Nội dung 19','Mô tả 19','anh19.jpg',19,9),
('PH020','125 phút',2022,'Diễn viên T',16,'Đạo diễn AK','phim20.mp4','trailer20.mp4','poster20.jpg','Nội dung 20','Mô tả 20','anh20.jpg',20,10),
('PH021','118 phút',2023,'Diễn viên U',16,'Đạo diễn AL','phim21.mp4','trailer21.mp4','poster21.jpg','Nội dung 21','Mô tả 21','anh21.jpg',1,1),
('PH022','102 phút',2020,'Diễn viên V',13,'Đạo diễn AM','phim22.mp4','trailer22.mp4','poster22.jpg','Nội dung 22','Mô tả 22','anh22.jpg',2,2),
('PH023','96 phút',2018,'Diễn viên W',16,'Đạo diễn AN','phim23.mp4','trailer23.mp4','poster23.jpg','Nội dung 23','Mô tả 23','anh23.jpg',3,3),
('PH024','107 phút',2019,'Diễn viên X',18,'Đạo diễn AO','phim24.mp4','trailer24.mp4','poster24.jpg','Nội dung 24','Mô tả 24','anh24.jpg',4,4),
('PH025','111 phút',2021,'Diễn viên Y',16,'Đạo diễn AP','phim25.mp4','trailer25.mp4','poster25.jpg','Nội dung 25','Mô tả 25','anh25.jpg',5,5),
('PH026','109 phút',2022,'Diễn viên Z',13,'Đạo diễn AQ','phim26.mp4','trailer26.mp4','poster26.jpg','Nội dung 26','Mô tả 26','anh26.jpg',6,6),
('PH027','113 phút',2023,'Diễn viên AA',16,'Đạo diễn AR','phim27.mp4','trailer27.mp4','poster27.jpg','Nội dung 27','Mô tả 27','anh27.jpg',7,7),
('PH028','121 phút',2020,'Diễn viên AB',18,'Đạo diễn AS','phim28.mp4','trailer28.mp4','poster28.jpg','Nội dung 28','Mô tả 28','anh28.jpg',8,8),
('PH029','117 phút',2019,'Diễn viên AC',13,'Đạo diễn AT','phim29.mp4','trailer29.mp4','poster29.jpg','Nội dung 29','Mô tả 29','anh29.jpg',9,9),
('PH030','119 phút',2018,'Diễn viên AD',16,'Đạo diễn AU','phim30.mp4','trailer30.mp4','poster30.jpg','Nội dung 30','Mô tả 30','anh30.jpg',10,10),

('PH031','123 phút',2021,'Diễn viên AE',16,'Đạo diễn AV','phim31.mp4','trailer31.mp4','poster31.jpg','Nội dung 31','Mô tả 31','anh31.jpg',11,1),
('PH032','104 phút',2022,'Diễn viên AF',13,'Đạo diễn AW','phim32.mp4','trailer32.mp4','poster32.jpg','Nội dung 32','Mô tả 32','anh32.jpg',12,2),
('PH033','110 phút',2023,'Diễn viên AG',16,'Đạo diễn AX','phim33.mp4','trailer33.mp4','poster33.jpg','Nội dung 33','Mô tả 33','anh33.jpg',13,3),
('PH034','126 phút',2020,'Diễn viên AH',18,'Đạo diễn AY','phim34.mp4','trailer34.mp4','poster34.jpg','Nội dung 34','Mô tả 34','anh34.jpg',14,4),
('PH035','115 phút',2019,'Diễn viên AI',16,'Đạo diễn AZ','phim35.mp4','trailer35.mp4','poster35.jpg','Nội dung 35','Mô tả 35','anh35.jpg',15,5),
('PH036','118 phút',2018,'Diễn viên AJ',13,'Đạo diễn BA','phim36.mp4','trailer36.mp4','poster36.jpg','Nội dung 36','Mô tả 36','anh36.jpg',16,6),
('PH037','120 phút',2021,'Diễn viên AK',16,'Đạo diễn BB','phim37.mp4','trailer37.mp4','poster37.jpg','Nội dung 37','Mô tả 37','anh37.jpg',17,7),
('PH038','122 phút',2022,'Diễn viên AL',18,'Đạo diễn BC','phim38.mp4','trailer38.mp4','poster38.jpg','Nội dung 38','Mô tả 38','anh38.jpg',18,8),
('PH039','119 phút',2023,'Diễn viên AM',13,'Đạo diễn BD','phim39.mp4','trailer39.mp4','poster39.jpg','Nội dung 39','Mô tả 39','anh39.jpg',19,9),
('PH040','121 phút',2020,'Diễn viên AN',16,'Đạo diễn BE','phim40.mp4','trailer40.mp4','poster40.jpg','Nội dung 40','Mô tả 40','anh40.jpg',20,10),

('PH041','125 phút',2021,'Diễn viên AO',16,'Đạo diễn BF','phim41.mp4','trailer41.mp4','poster41.jpg','Nội dung 41','Mô tả 41','anh41.jpg',1,1),
('PH042','127 phút',2022,'Diễn viên AP',13,'Đạo diễn BG','phim42.mp4','trailer42.mp4','poster42.jpg','Nội dung 42','Mô tả 42','anh42.jpg',2,2),
('PH043','129 phút',2023,'Diễn viên AQ',16,'Đạo diễn BH','phim43.mp4','trailer43.mp4','poster43.jpg','Nội dung 43','Mô tả 43','anh43.jpg',3,3),
('PH044','130 phút',2020,'Diễn viên AR',18,'Đạo diễn BI','phim44.mp4','trailer44.mp4','poster44.jpg','Nội dung 44','Mô tả 44','anh44.jpg',4,4),
('PH045','118 phút',2019,'Diễn viên AS',16,'Đạo diễn BJ','phim45.mp4','trailer45.mp4','poster45.jpg','Nội dung 45','Mô tả 45','anh45.jpg',5,5),
('PH046','117 phút',2018,'Diễn viên AT',13,'Đạo diễn BK','phim46.mp4','trailer46.mp4','poster46.jpg','Nội dung 46','Mô tả 46','anh46.jpg',6,6),
('PH047','116 phút',2021,'Diễn viên AU',16,'Đạo diễn BL','phim47.mp4','trailer47.mp4','poster47.jpg','Nội dung 47','Mô tả 47','anh47.jpg',7,7),
('PH048','115 phút',2022,'Diễn viên AV',18,'Đạo diễn BM','phim48.mp4','trailer48.mp4','poster48.jpg','Nội dung 48','Mô tả 48','anh48.jpg',8,8),
('PH049','114 phút',2023,'Diễn viên AW',13,'Đạo diễn BN','phim49.mp4','trailer49.mp4','poster49.jpg','Nội dung 49','Mô tả 49','anh49.jpg',9,9),