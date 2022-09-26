const schedule = document.querySelector("#schedule");
let ln = schedule.getAttribute("data-license-num");

setSchedule();

function setSchedule(){
    const xhttp = new XMLHttpRequest;
    xhttp.open("GET","./getScheduleAjax?licenseNum="+ln);
    xhttp.send();
    xhttp.addEventListener("readystatechange",function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = JSON.parse(xhttp.responseText.trim());
            let sa = result.sa;

            for(let i=0;i<sa.length;i++){
                console.log(ln);
                console.log(sa[i].scheduleName);
                console.log(sa[i].scheduleDate);
            }

        }
    })
}