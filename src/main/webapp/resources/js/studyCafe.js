const sendDate = document.getElementById("sendDate");
const startDate = document.getElementsByClassName("date start");
const endDate = document.getElementsByClassName("date end");
const startTime = document.getElementsByClassName("time start");
const endTime = document.getElementsByClassName("time end");


// for(i=0; i<rdto.length; i++){
//     const radioBtn = document.getElementById("radio_${rdto.roomName}");
// }

sendDate.addEventListener("click", function(){
    
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./cafeList");
    console.log("xhttp="+xhttp);

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    // console.log(startDate[0].value);
    // console.log(endDate[0].value);
    // console.log(startTime[0].value);
    // console.log(endTime[0].value);
    // console.log(radioBtn);
    
    xhttp.send("startDate="+startDate[0].value+"&endDate="+endDate[0].value+"&startTime="+startTime[0].value+"&endTime="+endTime[0].value);
    

    if(startDate[0].value == "" || endDate[0].value =="" || startTime[0].value =="" || endTime[0].value == ""){
        alert("빈칸이 있습니다.");
    }else{
        xhttp.onreadystatechange = function(){
            if(xhttp.readyState==4 && xhttp.status==200){
                let result = xhttp.responseText.trim();
                console.log(result);
    
                alert('저장완료');
                location.replace("./cafeList");
    
                // if(result==1){
                //     console.log("수정 성공");
                //     alert('수정 성공');
                //     document.querySelector("#up"+replyNum).innerHTML=contents;
                //     location.replace("studyCafe/cafeList");
                // }else {
                //     console.log("수정 실패");
                //     alert('수정 실패');
                // }
            }
        }

    }

});

