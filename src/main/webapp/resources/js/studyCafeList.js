const areaBtn = document.getElementById("areaBtn");
const areaText = document.getElementById("areaText");
const arearBtn = document.getElementsByName("arearBtn");
const cafeN = document.getElementById("cafeN");
const cafePlace = document.getElementById("cafePlace");
const cBtn = document.getElementById("cBtn");
const imgText = document.getElementById("imgText");
const addBtn = document.getElementById("addBtn");
const imgPlace = document.getElementById("imgPlace");
const iBtn = document.getElementById("iBtn");
let textTest;
let aNum;
let aName;
const deleteBtn = document.getElementById("deleteBtn");
const scNum = document.querySelectorAll("scNum");

areaBtn.addEventListener("click",function(){
    console.log("클릭");
    arearBtn.forEach((node) => {
        if(node.checked){
            areaText.innerText = node.value;
        }
    });
    textTest = areaText.innerText;
    let words = textTest.split('.');
    console.log(words);
    aNum = words[0];
    aName = words[1];
});

imgText.addEventListener("click", function(){
    console.log("imgText");
    imgPlace.removeChild(imgText); 
    let txtBox = document.createElement("input");
    let ch = document.createAttribute("type");
    ch.value="text"
    txtBox.setAttributeNode(ch);
    let t = document.createAttribute("value");;
    t.value=imgText.innerText;
    txtBox.setAttributeNode(t);
    imgPlace.append(txtBox);
 
    iBtn.style.display = 'block';
    iBtn.addEventListener("click", function(){
        console.log(imgText.innerText);
        console.log(txtBox.value);
        imgText.innerText=txtBox.value;
        iBtn.style.display = 'none';
        imgPlace.removeChild(txtBox);
        imgPlace.append(imgText);
    });    
});
cafeN.addEventListener("click", function(){
    console.log("cafeN");
    cafePlace.removeChild(cafeN); 
    let txtBox = document.createElement("input");
    let ch = document.createAttribute("type");
    ch.value="text"
    txtBox.setAttributeNode(ch);
    let t = document.createAttribute("value");;
    t.value=cafeN.innerText;
    txtBox.setAttributeNode(t);
    cafePlace.append(txtBox);
 
    cBtn.style.display = 'block';
    cBtn.addEventListener("click", function(){
        console.log(cafeN.innerText);
        console.log(txtBox.value);
        cafeN.innerText=txtBox.value;
        cBtn.style.display = 'none';
        cafePlace.removeChild(txtBox);
        cafePlace.append(cafeN);
    });    
});

addBtn.addEventListener("click", function(){
    console.log("addBtn");
    console.log(imgText.innerText);
    if(imgText.innerText == null || imgText.innerText== '이미지 추가'){
        imgText.innerText = "GOOD.png";
    }
    console.log(imgText.innerText);

    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./addList");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("&areaNum="+aNum+"&areaName="+aName+"&scName="+cafeN.innerText+"&img="+imgText.innerText);

    xhttp.onreadystatechange = function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = xhttp.responseText.trim();

            
            alert('저장완료');
            location.replace("./cafeList");        
            
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
});

deleteBtn.addEventListener("click", function(){
    console.log("deleteBtn");
    if(scNum.checked == true){
        console.log(scNum);
    }

    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./deleteList");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    for(i=0; i<scNum.length; i++){
        xhttp.send("&scNum="+scNum);
    }

    xhttp.onreadystatechange = function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = xhttp.responseText.trim();

            
            alert('저장완료');
            location.replace("./cafeList");        
            
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
});
