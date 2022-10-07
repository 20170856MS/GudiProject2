// let today = new Date();	// 현재 날짜 및 시간
// let year = today.getFullYear();	// 년도
// console.log("년도 : ", year);
// 
// let dDay = new Date("October 14, 2022, 0:00:00").getTime(); //디데이
// setInterval(function () {
//     let today = new Date().getTime(); //현재날짜 가져오기 
//     let distance = dDay - today; //디데이-현재
//     // 일 시 분 초 등록
//     let day = Math.floor(distance / (1000 * 60 * 60 * 24));
// 
//     const count = document.getElementsByClassName("count")
//     count[0].innerHTML = "D-" + day;
//     for (let i = 0; i < count.length; i++) {
//      
//         count[i].innerHTML = "D-" + day;
//      
//     }
// }, 1000);


/* 핫딜01 / 첫번째 상품 카운트다운 */
// function timer_start() {
// 	var myTimer,
// 		year  = 2022,     //카운트 다운의 기준이 되는 연도를 입력
// 		month = 10,    //카운트 다운의 기준이 되는 월을 입력
// 		day = 14,     //카운트 다운의 기준이 되는 일자를 입력

//     orgDate = new Date(year, month - 1, day);
//     myTimer = setInterval(function() {
//         var d = new Date();
//         time = Math.floor((orgDate.getTime() - d.getTime()) / 1000);
//         if (--time < 0) {
//             time = 0;
// 	        clearInterval(myTimer);
// 			var div = document.createElement('div');
// 			div.id = "time_end1";
//    			document.getElementById("timebox").after(div);
// 			document.getElementById("time_end1").innerHTML="<div class='time_end_box'>SALE END</div>";
// 		}
//         document.getElementById('timebox').innerHTML = convertTime();
//     }, 100);
// }




