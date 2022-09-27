const sendDate = document.getElementById("sendDate");
// const startDate = document.getElementsByClassName("date start");
// const endDate = document.getElementsByClassName("date end");
// const startTime = document.getElementsByClassName("time start");
// const endTime = document.getElementsByClassName("time end");
const dateText = document.getElementById("dateText");
const timeText = document.getElementById("timeText");
const timeBtn = document.querySelectorAll(".timeBtn");

// -----TimePicker------
// sendDate.addEventListener("click", function(){
    
//     const xhttp = new XMLHttpRequest();
//     xhttp.open("POST", "./cafeList");
//     console.log("xhttp="+xhttp);

//     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    
//     xhttp.send("startDate="+startDate[0].value+"&endDate="+endDate[0].value+"&startTime="+startTime[0].value+"&endTime="+endTime[0].value);
    

//     if(startDate[0].value == "" || endDate[0].value =="" || startTime[0].value =="" || endTime[0].value == ""){
//         alert("빈칸이 있습니다.");
//     }else{
//         xhttp.onreadystatechange = function(){
//             if(xhttp.readyState==4 && xhttp.status==200){
//                 let result = xhttp.responseText.trim();
//                 console.log(result);
    
//                 alert('저장완료');
//                 location.replace("./cafeList");
    
//                 // if(result==1){
//                 //     console.log("수정 성공");
//                 //     alert('수정 성공');
//                 //     document.querySelector("#up"+replyNum).innerHTML=contents;
//                 //     location.replace("studyCafe/cafeList");
//                 // }else {
//                 //     console.log("수정 실패");
//                 //     alert('수정 실패');
//                 // }
//             }
//         }

//     }

// });
// -----TimePicker------



// sendDate.addEventListener("click", function(){
//     const xhttp = new XMLHttpRequest();
//     xhttp.open("POST", "./cafeList");
//     console.log("xhttp="+xhttp);
//     xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

//     xhttp.send("startDate="+dateText+"&startTime="+startTime[0].value+"&endTime="+endTime[0].value);
// });

timeBtn[0].addEventListener("click", function(){
    console.log(timeBtn[0].value);
});
timeBtn[1].addEventListener("click", function(){
    console.log(timeBtn[1].value);
});
timeBtn[2].addEventListener("click", function(){
    console.log(timeBtn[2].value);
});
timeBtn[3].addEventListener("click", function(){
    console.log(timeBtn[3].value);
});

for(i=0; i<timeBtn.length; i++){
    timeBtn[i].addEventListener("click", function(){
        console.log(i);
        
        console.log(timeBtn[i].value);

    });
}