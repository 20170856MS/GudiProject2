console.log(new Date()); //현재 날짜 객체
console.log(new Date(2022, 09, 19)); // 지정날짜 객체
console.log(new Date('2022-12-06T03:24:00'));

let date = new Date();
let utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000);
let kstGap = 9 * 60 * 60 * 1000; //한국 kst 기준시간 더하기
let today = new Date(utc + kstGap);

//전 달의 마지막 날 날짜와 요일
let startDay = new Date(currentYear, currentMonth, 0);
let preDate = startDay.getDate();
let preDay = startDay.getDay();
//이번 달의 마지막 날 날짜와 요일
let endDay = new Date(currentYear, currentMonth + 1, 0);
let nextDate = endDay.getDate();
let nextDay = endDay.getDay();

calendar = document.querySelector("#dates");
calendar.innerHTML = "";



