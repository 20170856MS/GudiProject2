const sendDate = document.getElementById("sendDate");
// const startDate = document.getElementsByClassName("date start");
// const endDate = document.getElementsByClassName("date end");
// const startTime = document.getElementsByClassName("time start");
// const endTime = document.getElementsByClassName("time end");
const dateText = document.getElementById("dateText");
let timeText = document.getElementById("timeText");
let timeBtn = document.querySelectorAll(".timeBtn");
const complete = document.getElementById("complete");
const radioText = document.getElementById("radioText");
const radioList = document.getElementsByName("radioBtn");
let listTime = [];
let test = " ";


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




sendDate.addEventListener("click", function(){
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./cafeList");
    console.log("xhttp="+xhttp);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("roomName="+radioText+"&seDate="+dateText+"&seTime="+timeText);

    xhttp.onreadystatechange = function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = xhttp.responseText.trim();
            console.log(result);

            alert('저장완료');
            location.replace("./cafeList");
        }
    }
});

timeBtn[0].addEventListener("click", function(){
    let tx = timeBtn[0].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[0].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[0].value); 
    }
    
    
});
timeBtn[1].addEventListener("click", function(){
    let tx = timeBtn[1].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[1].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[1].value); 
    } 
});
timeBtn[2].addEventListener("click", function(){
    let tx = timeBtn[2].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[2].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[2].value);
    }
});
timeBtn[3].addEventListener("click", function(){
    let tx = timeBtn[3].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[3].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[3].value);
    }
});
timeBtn[4].addEventListener("click", function(){
    let tx = timeBtn[4].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[4].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[4].value);
    }
});
timeBtn[5].addEventListener("click", function(){
    let tx = timeBtn[5].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[5].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[5].value);
    }
});
timeBtn[6].addEventListener("click", function(){
    let tx = timeBtn[6].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[6].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[6].value);
    }
});
timeBtn[7].addEventListener("click", function(){
    let tx = timeBtn[7].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[7].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[7].value);
    }
});
timeBtn[8].addEventListener("click", function(){
    let tx = timeBtn[8].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[8].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[8].value);
    }
});
timeBtn[9].addEventListener("click", function(){
    let tx = timeBtn[9].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[9].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[9].value);
    }
});
timeBtn[10].addEventListener("click", function(){
    let tx = timeBtn[10].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[10].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[10].value);
    }
});
timeBtn[11].addEventListener("click", function(){
    let tx = timeBtn[11].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[11].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[11].value);
    }
});
timeBtn[12].addEventListener("click", function(){
    let tx = timeBtn[12].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[12].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[12].value);
    }
});
timeBtn[13].addEventListener("click", function(){
    let tx = timeBtn[13].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[13].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[13].value);
    }
});
timeBtn[14].addEventListener("click", function(){
    let tx = timeBtn[14].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[14].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[14].value);
    }
});
timeBtn[15].addEventListener("click", function(){
    let tx = timeBtn[15].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[15].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[15].value);
    }
});
timeBtn[16].addEventListener("click", function(){
    let tx = timeBtn[16].value+" ";
    if(test.match(tx)){
        test = test.replace(tx, '');
        listTime = listTime.filter(listTime => listTime !== timeBtn[16].value);
    }else{
        test +=tx;
        listTime.push(timeBtn[16].value);
    }
});

let count=0;
complete.addEventListener("click", function(){
    console.log(listTime);
    console.log(timeText.textContent.sort);
    listTime.sort();
    
    timeText.textContent = listTime.toString();
    //timeText.textContent = test;

    radioList.forEach((node) => {
        if(node.checked){
            radioText.innerText = node.value;
        }
    });

});
// for(i=0; i<timeBtn.length; i++){
    
//     timeBtn[i].addEventListener("click", function(){
//         console.log(i);
        
//         console.log(timeBtn[i].value);
//         // let tx = timeBtn[i].value;
//         // timeText.innerText.toggle =tx;

//     });
// }


