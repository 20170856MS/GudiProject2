const schedule = document.querySelectorAll(".schedule");

const asd = document.querySelector("#asd");
const sss = document.querySelector("#sss");

// setSchedule();
// console.log(ln);

// function setSchedule(){
//     const xhttp = new XMLHttpRequest;
//     xhttp.open("GET","./getScheduleAjax?licenseNum="+ln);
//     xhttp.send();
//     xhttp.addEventListener("readystatechange",function(){
//         if(xhttp.readyState==4 && xhttp.status==200){
//             let result = JSON.parse(xhttp.responseText.trim());
//             let sa = result.sa;

//             for(let i=0;i<sa.length;i++){
//                 let text = document.createTextNode(sa[i].scheduleName);
//                 asd.appendChild(text);
//                 text = document.createTextNode(sa[i].scheduleDate);
//                 asd.appendChild(text);
//             }

//         }
//     })
// }

for(let i=0;i<schedule.length;i++){
    schedule[i].addEventListener("click",function(event){
        console.log(event.target.previousSibling.previousSibling);
        console.log(event.target.previousSibling);
        console.log(event.target);
        console.log(event.target.nextSibling);
        console.log(event.target.nextSibling.nextSibling);

    });
}