let today = new Date();	// 현재 날짜 및 시간
let year = today.getFullYear();	// 년도
const date11 = document.getElementById('date11')
const test = document.querySelector("#test")
const scDate = test.getAttribute("schedule-Date")
console.log("년도 : ", year);


let dDay = new Date("October 14, 2022, 0:00:00").getTime(); //디데이
setInterval(function () {
    let today = new Date().getTime(); //현재날짜 가져오기 
    let distance = dDay - today; //디데이-현재
    // 일 시 분 초 등록
    console.log(scDate);

    // const xhttp = new XMLHttpRequest

    // xhttp.open("GET","/")

    // xhttp.send("licenseNum="+scDate);

    //  xhttp.onreadystatechange=function(){
    //     if(this.readyState==4 && this.status==200) {
    //         let result = xhttp.responseText.trim();
            

    //         if(result==1) {
    //             console.log("댓글등록성공");
    //         }
    //     }
    // }
    
    let day = Math.floor(distance / (1000 * 60 * 60 * 24));
    let hour = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    let min = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    let sec = Math.floor((distance % (1000 * 60)) / 1000);

    //     document.getElementById("count").innerHTML = "D-day" + day + "일" + hour + "시간" + min + "분" + sec + "초남음";
    //     document.getElementById("count").innerHTML = "D-" + day; },1000);
    //document.getElementById("count").innerHTML = "D-"+day;},1000)

    const count = document.getElementsByClassName("count")
    count[0].innerHTML = "D-" + day;
    for (let i = 0; i < count.length; i++) {

        count[i].innerHTML = "D-" + day;

    }
}, 1000);



