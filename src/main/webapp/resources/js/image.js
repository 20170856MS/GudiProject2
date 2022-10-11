// var boximage1 = document.querySelector('.box1');
// var boximage2 = document.querySelector('.box2');
// var boximage3 = document.querySelector('.box3');
// var boximage4 = document.querySelector('.box4');
// var boximage5 = document.querySelector('.box5');
// var boximage6 = document.querySelector('.box6');
// var imgArray = new Array();
// var imgNum = new Array();

// imgArray = [
//     "https://janet.co.kr/data/licenseitem/144/7ZWc6rWt7IKs2.jpg",
//     "https://janet.co.kr/data/licenseitem/150/.6rO17Ya17J2867O47Ja07IOB7IS4.jpg",
//     "https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg",
//     "https://janet.co.kr/data/licenseitem/153/HSK7IOB7IS4.jpg",
//     "https://janet.co.kr/data/licenseitem/1622600872/496.OPIC7Jik7ZS97JiB7Ja0_web.jpg",
//     "https://janet.co.kr/data/licenseitem/1622600926/309.7L2U65Sp7KeA64E7IKs_web.jpg"
//   ]

// function changeimage() {
//   imgNum = [];
  
//   for (let i = 1; i <= 6; i++) {
//     imgNum.push(Math.round(Math.random() * (imgArray.length - 1)));
//     document.querySelector('.box' + i).src = imgArray[imgNum[i - 1]];
//   }
// }


let imgArray = new Array();
imgArray[0] = "https://janet.co.kr/data/licenseitem/104/7KeB7JeF7IOB64u07IKs7IOB7IS4.jpg",
imgArray[1] = "https://janet.co.kr/data/licenseitem/150/.6rO17Ya17J2867O47Ja07IOB7IS4.jpg",
imgArray[2] = "https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg",
imgArray[3] = "https://janet.co.kr/data/licenseitem/153/HSK7IOB7IS4.jpg",
imgArray[4] = "https://janet.co.kr/data/licenseitem/1622600872/496.OPIC7Jik7ZS97JiB7Ja0_web.jpg",
imgArray[5] = "https://janet.co.kr/data/licenseitem/1622600926/309.7L2U65Sp7KeA64E7IKs_web.jpg",
imgArray[6] = "https://janet.co.kr/data/licenseitem/86/1.7Lu07ZOo7YSw7Zmc7Jqp64ql66Cl16riJ.jpg",
imgArray[7] = "https://janet.co.kr/data/licenseitem/190/.6rO17Ya17IKs66y07IOB7IS4.jpg",
imgArray[8] = "https://janet.co.kr/data/licenseitem/180/4.GTQ.jpg",
imgArray[9] = "https://janet.co.kr/data/licenseitem/343/552.7J6Q7IKw6rSA66as7IKsFP_web.jpg",
imgArray[10] = "https://janet.co.kr/data/licenseitem/176/ITQ.jpg"

function changeImage(){
    let imgNum = Math.round(Math.random()*11);
    let objImg = document.getElementById("introImg");
    objImg.src = imgArray[imgNum];
}

