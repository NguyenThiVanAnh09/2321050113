<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP-Buoi1</title>
</head>
<body>
    <?php  
    //1. Cu Phap in ra man hinh
    echo "Hello World! <br> ";
    echo "PHP";

    //2. Bien
    // Cu phap: $ + ten bien = gia tri cua bien
    $ten = "Van Anh";
    $tuoi = 20;

    echo " Xin chao <br>" . $ten;
    echo " <br>" . $tuoi . " tuoi";
    //3. Hang
    define('soPi', '3.14');
    echo soPi . "<br>";

    define("nhietDoSoi", 100);
    echo nhietDoSoi . "<br>";

    //4. Phan biet '' va ""
    echo '$ten' . "<br>";
    echo "$ten" . "<br>";

    //5. Chuoi
    #5.1 Kiem tra do dai cua chuoi
    echo strlen($ten) . "<br>";

    #5.2 Dem so tu
    echo str_word_count($ten) . "<br>";

    #5.3 Tim kiem ky tu trong chuoi
    echo strpos($ten, "n") . "<br>";

    #5.4 Thay the ki tu trong chuoi
    echo str_replace("Anh", "Linh" ,$ten) . "<br>";

    //6. Toan tu
    $soThuNhat = 10;
    $soThuHai = 5;

    echo $soThuNhat + $soThuHai . "<br>";
    echo $soThuNhat - $soThuHai . "<br>";
    echo $soThuNhat * $soThuHai . "<br>";
    echo $soThuNhat / $soThuHai . "<br>";
    $tong = $soThuNhat + $soThuHai;
    //7. Cau dieu kien
    if ($tong < 15) {
        echo "Tong a + b nho hon 15";
    }
    elseif($tong == 15) {
        echo "Tong a + b bang 15";
    }else{
        echo "Tong a + b lon hon 15";
    }

    // 8. Switch case
    $color = "red";
    switch ($color){
        case "red";
        echo "is red";
        break;
    case "blue";
        echo "is blue";
        break;
    default:
        echo "no color";
        break;        
    }
    //9. for
    for ($i=0; $i < 100; $i++) {
        echo $1 . "<br>";
    }
    ?>
</body>
</html>