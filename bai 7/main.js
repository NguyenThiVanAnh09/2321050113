// document.writeln("") dùng để in ra màn hình
document.writeln("Xin chào! <br>")

// Để khai báo biến dùng var hoặc let

let name="Hồng Đạt";
document.writeln(name);

//Để nối chuỗi dùng dấu +
document.writeln(`<br>Xin chào ${name}`);

//Các toán tử đơn giản trong js

let a=10, 
    b=5, 
    kq=0;

//Phép cộng +
//Phép trừ -
//Phép nhân *
//Phép chia /
kq1=a+b;
kq2=a-b;
kq3=a*b;
kq4=a/b;

document.writeln(`<br>Phép cộng: ${kq1}`);
document.writeln(`<br>Phép trừ: ${kq2}`);
document.writeln(`<br>Phép nhân: ${kq3}`);
document.writeln(`<br>Phép chia: ${kq4}<br>`);

//++ dùng để tăng 1 đơn vị
//-- dùng để giảm 1 đơn vị
//a+=b ~ a=a+b
//a-=b ~ a=a-b
//a*=b ~ a=a*b
//a/=b ~ a=a/b
//a%=b ~ a=a%b

// a*=b;
// document.writeln(a)

// == bằng
// != khác
// === bằng nhưng so sánh cả kiểu dữ liệu
// !== khác nhưng so sánh cả kiểu dữ liệu
// <     >    <=     >=
document.writeln(a!=b);

let c=true;
document.writeln("<br>" +!c);

// Các kiểu dữ liệu trong js

let thongTinSinhVien={
    hoTen: "Pham Hong Dat",
    mssv: "2221050470",
    gioiTinh: true,
    lop: "DCCTCT67-05B",
    tuoi: 21,
};
let diaChiDat={
    thanhPho: "Ninh Bình",
    phuong: "Đông A",
    soNha: 1,
}
thongTinSinhVien.diaChi=diaChiDat
let namNay = 2025;
document.writeln("<br>Xin chào "+ thongTinSinhVien.hoTen);
document.writeln("<br>Sống ở: "+thongTinSinhVien.diaChi.thanhPho + "<br>Sinh năm: " + (namNay-thongTinSinhVien.tuoi) );