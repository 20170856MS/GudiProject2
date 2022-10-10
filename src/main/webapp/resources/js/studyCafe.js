const sendDate = document.getElementById("sendDate");
// const startDate = document.getElementsByClassName("date start");
// const endDate = document.getElementsByClassName("date end");
// const startTime = document.getElementsByClassName("time start");
// const endTime = document.getElementsByClassName("time end");
const dateText = document.getElementById("dateText");
let timeText = document.getElementById("timeText");

let timeText1 = document.getElementById("timeText1");
let timeBtn = document.querySelectorAll(".timeBtn");
const complete = document.getElementById("complete");
const radioText = document.getElementById("radioText");
const radioList = document.getElementsByName("radioBtn");
const test1 = document.getElementById("test1");
const detailNum = test1.getAttribute("detail-Num");
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
    console.log(listTime);
    console.log(listTime.length)
    const timeLength = listTime.length-1

    console.log(timeLength);

    console.log(timeText.textContent.sort);
    listTime.sort();
    
    radioList.forEach((node) => {
        if(node.checked){
            radioText.innerText = node.value;
        }
    });
    


    timeText.textContent = listTime.toString();
    
    
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./cafeList");
    console.log("xhttp="+xhttp);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    if(radioText.textContent == "" || dateText.textContent == "" || timeText.textContent == ""){
        alert("공백이 있습니다.");
        
    }else{
        console.log("공백없음");
        
        xhttp.send("&roomName="+radioText.textContent+"&seDate="+dateText.textContent+"&seTime="+timeText.textContent+"&detailNum="+detailNum+"&timeLength="+timeLength);
    
        xhttp.onreadystatechange = function(){
            if(xhttp.readyState==4 && xhttp.status==200){
                let result = xhttp.responseText.trim();
                
                console.log(result);
    
                
                alert('저장완료');
                location.replace("./reList");
                i = 0;
                
                
                // if(result.result==1){
                //     console.log("수정 성공");
                //     alert('수정 성공');
                //     document.querySelector("#up"+replyNum).innerHTML=contents;
                //     location.replace("studyCafe/cafeList");
                // }else{
                //     console.log("수정 실패");
                //     alert('수정 실패');
                // }
            }
        }
    }
});
let i = 0;
let alarm = [];
for(j=0; j<timeBtn.length; j++){
    alarm[j] = 0;
}

timeBtn[0].addEventListener("click", function(){
    if(i>0 && alarm[1] == 0 && alarm[0] == 0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[0].value+" ";
        //--------------
        alarm[0] = alarm[0]+1;
        if(alarm[0]==2){
            alarm[0]=0;
        }
        if(alarm[0] == 1){
            timeBtn[0].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[0].style.borderColor="black";
            i=i-1;
        }
        
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[0].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[0].value); 
        }
    }
});
timeBtn[1].addEventListener("click", function(){
    if(i>0 && alarm[0]==0 && alarm[2]==0 && alarm[1]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[1].value+" ";
        //--------------
        alarm[1] = alarm[1]+1;
        if(alarm[1]==2){
            alarm[1]=0;
        }
        if(alarm[1] == 1){
            timeBtn[1].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[1].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[1].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[1].value); 
        }
    }
});
timeBtn[2].addEventListener("click", function(){
    if(i>0 && alarm[1] == 0 && alarm[3]==0 && alarm[2]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[2].value+" ";
        //--------------
        alarm[2] = alarm[2]+1;
        if(alarm[2]==2){
            alarm[2]=0;
        }
        if(alarm[2] == 1){
            timeBtn[2].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[2].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[2].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[2].value); 
        }
    }
});
timeBtn[3].addEventListener("click", function(){
    if(i>0 && alarm[2] == 0 && alarm[3]==0 && alarm[4]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[3].value+" ";
        //--------------
        alarm[3] = alarm[3]+1;
        if(alarm[3]==2){
            alarm[3]=0;
        }
        if(alarm[3] == 1){
            timeBtn[3].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[3].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[3].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[3].value); 
        }
    }
});
timeBtn[4].addEventListener("click", function(){
    if(i>0 && alarm[3] == 0 && alarm[4]==0 && alarm[5]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[4].value+" ";
        //--------------
        alarm[4] = alarm[4]+1;
        if(alarm[4]==2){
            alarm[4]=0;
        }
        if(alarm[4] == 1){
            timeBtn[4].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[4].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[4].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[4].value); 
        }
    }
});
timeBtn[5].addEventListener("click", function(){
    if(i>0 && alarm[4] == 0 && alarm[5]==0 && alarm[6]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[5].value+" ";
        //--------------
        alarm[5] = alarm[5]+1;
        if(alarm[5]==2){
            alarm[5]=0;
        }
        if(alarm[5] == 1){
            timeBtn[5].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[5].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[5].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[5].value); 
        }
    }
});
timeBtn[6].addEventListener("click", function(){
    if(i>0 && alarm[5] == 0 && alarm[6]==0 && alarm[7]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[6].value+" ";
        //--------------
        alarm[6] = alarm[6]+1;
        if(alarm[6]==2){
            alarm[6]=0;
        }
        if(alarm[6] == 1){
            timeBtn[6].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[6].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[6].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[6].value); 
        }
    }
});
timeBtn[7].addEventListener("click", function(){
    if(i>0 && alarm[6] == 0 && alarm[7]==0 && alarm[8]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[7].value+" ";
        //--------------
        alarm[7] = alarm[7]+1;
        if(alarm[7]==2){
            alarm[7]=0;
        }
        if(alarm[7] == 1){
            timeBtn[7].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[7].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[7].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[7].value); 
        }
    }
});
timeBtn[8].addEventListener("click", function(){
    if(i>0 && alarm[7] == 0 && alarm[8]==0 && alarm[9]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[8].value+" ";
        //--------------
        alarm[8] = alarm[8]+1;
        if(alarm[8]==2){
            alarm[8]=0;
        }
        if(alarm[8] == 1){
            timeBtn[8].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[8].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[8].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[8].value); 
        }
    }
});
timeBtn[9].addEventListener("click", function(){
    if(i>0 && alarm[8] == 0 && alarm[9]==0 && alarm[10]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[9].value+" ";
        //--------------
        alarm[9] = alarm[9]+1;
        if(alarm[9]==2){
            alarm[9]=0;
        }
        if(alarm[9] == 1){
            timeBtn[9].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[9].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[9].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[9].value); 
        }
    }
});
timeBtn[10].addEventListener("click", function(){
    if(i>0 && alarm[9] == 0 && alarm[10]==0 && alarm[11]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[10].value+" ";
        //--------------
        alarm[10] = alarm[10]+1;
        if(alarm[10]==2){
            alarm[10]=0;
        }
        if(alarm[10] == 1){
            timeBtn[10].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[10].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[10].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[10].value); 
        }
    }
});
timeBtn[11].addEventListener("click", function(){
    if(i>0 && alarm[10] == 0 && alarm[11]==0 && alarm[12]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[11].value+" ";
        //--------------
        alarm[11] = alarm[11]+1;
        if(alarm[11]==2){
            alarm[11]=0;
        }
        if(alarm[11] == 1){
            timeBtn[11].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[11].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[11].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[11].value); 
        }
    }
});
timeBtn[12].addEventListener("click", function(){
    if(i>0 && alarm[11] == 0 && alarm[12]==0 && alarm[13]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[12].value+" ";
        //--------------
        alarm[12] = alarm[12]+1;
        if(alarm[12]==2){
            alarm[12]=0;
        }
        if(alarm[12] == 1){
            timeBtn[12].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[12].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[12].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[12].value); 
        }
    }
});
timeBtn[13].addEventListener("click", function(){
    if(i>0 && alarm[12] == 0 && alarm[13]==0 && alarm[14]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[13].value+" ";
        //--------------
        alarm[13] = alarm[13]+1;
        if(alarm[13]==2){
            alarm[13]=0;
        }
        if(alarm[13] == 1){
            timeBtn[13].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[13].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[13].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[13].value); 
        }
    }
});
timeBtn[14].addEventListener("click", function(){
    if(i>0 && alarm[13] == 0 && alarm[14]==0 && alarm[15]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[14].value+" ";
        //--------------
        alarm[14] = alarm[14]+1;
        if(alarm[14]==2){
            alarm[14]=0;
        }
        if(alarm[14] == 1){
            timeBtn[14].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[14].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[14].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[14].value); 
        }
    }
});
timeBtn[15].addEventListener("click", function(){
    if(i>0 && alarm[14] == 0 && alarm[15]==0 && alarm[16]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[15].value+" ";
        //--------------
        alarm[15] = alarm[15]+1;
        if(alarm[15]==2){
            alarm[15]=0;
        }
        if(alarm[15] == 1){
            timeBtn[15].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[15].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[15].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[15].value); 
        }
    }
});
timeBtn[16].addEventListener("click", function(){
    if(i>0 && alarm[15] == 0 && alarm[16]==0){
        alert("이전시간을 선택해주세요");
        
    }else{
        let tx = timeBtn[16].value+" ";
        //--------------
        alarm[16] = alarm[16]+1;
        if(alarm[16]==2){
            alarm[16]=0;
        }
        if(alarm[16] == 1){
            timeBtn[16].style.borderColor="yellow";
            i=i+1;
        }else{
            timeBtn[16].style.borderColor="black";
            i=i-1;
        }
        if(test.match(tx)){
            test = test.replace(tx, '');
            listTime = listTime.filter(listTime => listTime !== timeBtn[16].value);
        }else{
            test +=tx;
            listTime.push(timeBtn[16].value); 
        }
    }
});

let count=0;
complete.addEventListener("click", function(){
    console.log(listTime);
    console.log(timeText.textContent.sort);
    console.log(listTime.length);
    console.log(listTime.length -1);
    listTime.sort();

    console.log("radioText= "+radioText.textContent);
    console.log("dateText= "+dateText.textContent);
    console.log("timeText= "+timeText.textContent);
    console.log("detailNum= "+detailNum.textContent);
    console.log(detailNum)
    radioList.forEach((node) => {
        if(node.checked){
            radioText.innerText = node.value;
        }
    });

    timeText.textContent = listTime.toString();
    timeText1.textContent = "이용시간 : "+(listTime.length-1);
    //timeText.textContent = test;


});
// for(i=0; i<timeBtn.length; i++){
    
//     timeBtn[i].addEventListener("click", function(){
//         console.log(i);
        
//         console.log(timeBtn[i].value);
//         // let tx = timeBtn[i].value;
//         // timeText.innerText.toggle =tx;

//     });
// }





