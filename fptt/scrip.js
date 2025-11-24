let listFilm = [
    {
        id : 1,
        name :"Mưa đỏ",
        year :"2025",
        tuoi:"18t",
        hour :"2 giờ",
        nation: "Việt Nam",
        type :"Phim chiếu rạp",
        banner : "640x396-muado.jpg",
        trailer : "https://www.youtube.com/watch?v=BD6PoZJdt_M"
    },
    {
        id : 2,
        name :"Gia tài của ngoại",
        year :"2025",
        tuoi:"13t",
        hour :"2 giờ 4 phút",
        nation: "Thái Lan",
        type :"Phim chiếu rạp",
        banner : "giataiofngoai.png",
        trailer : "https://www.youtube.com/embed/eP03zaw425o"
    },
    {
        id: 3,
        name: "Mai",
        year :"2024",
        tuoi:"18t",
        hour :"1 giờ 40 phút",
        nation: "Việt Nam",
        banner: "mai.png",
        trailer: "https://www.youtube.com/embed/eP03zaw425o"
    },
    {
        id: 4,
        name: "Tử chiến trên không",
        year :"2025",
        tuoi:"16t",
        hour :"2 giờ 10 phút",
        nation: "Việt Nam",
        banner: "tuchientren0.png",
        trailer: "https://www.youtube.com/embed/eP03zaw425o"
    },
    {
        id: 5,
        name: "Nụ hôn bạc tỷ",
        year :"2024",
        tuoi:"16t",
        hour :"1 giờ 30 phút",
        nation: "Việt Nam",
        banner: "nuhonbacti.jpg", 
        trailer: "https://www.youtube.com/embed/eP03zaw425o"
    },
    {
        id: 6,
        name: "Khó dỗ dành",
        year :"2025",
        tuoi:"16t",
        hour :"1 giờ 30 phút",
        nation: "China",
        banner: "khododanhh.jpg", 
        trailer: "https://www.youtube.com/embed/eP03zaw425o"
    },
    { 
        id: 7,
        name: "Doraemon",
        year :"2024",
        tuoi:"10t",
        hour :"1 giờ 30 phút",
        nation: "Japan",
        banner: "domon.png", 
        trailer: "https://www.youtube.com/embed/eP03zaw425o"
    }
];
let bannerElement = document.getElementsByClassName("banner")[0];
let filmYearElment = document.getElementsByClassName("tt-year")[0];
let filmtuoiElment = document.getElementsByClassName("tt-tuoi")[0];
let filmHourElment = document.getElementsByClassName("tt-hour")[0];
let filmNationElement = document.getElementsByClassName("tt-nation")[0];
function viewTrailer() {
      let TrailerELement = document.getElementsByClassName("trailer")[0];
      bannerElement.style.display = "none";
      TrailerELement.style.display = "block";
}
function chooseFilm(filmId) {
    let selectedFilm = listFilm.find(film => film.id === filmId);
    bannerElement.src = selectedFilm.banner;
    filmNationElement.innerText = selectedFilm.nation;
    filmYearElment.innerText = selectedFilm.year;
    filmtuoiElment.innerText = selectedFilm.tuoi;
    filmHourElment.innerText = selectedFilm.hour;
}

 

