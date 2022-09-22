const sendDate = document.getElementById("sendDate");
const startDate = document.getElementsByClassName("date start");
const endDate = document.getElementsByClassName("date end");
const startTime = document.getElementsByClassName("time start");
const endTime = document.getElementsByClassName("time end");


sendDate.addEventListener("click", function(){
    
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./cafeList");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("startDate="+startDate+"&endDate="+endDate+"&startTime="+startTime+"&endTime="+endTime );

    xhttp.onreadystatechange = function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            if(this.responseText.trim()=='1'){
                alert('수정 성공');
                document.querySelector("#up"+replyNum).innerHTML=contents;
            }else {
                alert('수정 실패');
            }
        }
    }
});

