const scName = document.getElementById("scName");
const cdPay = document.getElementById("cdPay");
const cdRegion = document.getElementById("cdRegion");
const scExplain = document.getElementById("scExplain");
const latitude = document.getElementById("latitude");
const longitude = document.getElementById("longitude");
const regionPlace = document.getElementById("regionPlace")
const payPlace = document.getElementById("payPlace");
const explainPlace = document.getElementById("explainPlace");
const laPlace = document.getElementById("laPlace");
const loPlace = document.getElementById("loPlace");
const rBtn = document.getElementById("rBtn");
const pBtn = document.getElementById("pBtn");
const eBtn = document.getElementById("eBtn");
const laBtn = document.getElementById("laBtn");
const loBtn = document.getElementById("loBtn");
const completeUpdate = document.getElementById("completeUpdate");

cdPay.addEventListener("click", function(){
   console.log("cdPay");
   payPlace.removeChild(cdPay); 
   let txtBox = document.createElement("input");
   let ch = document.createAttribute("type");
   ch.value="text"
   txtBox.setAttributeNode(ch);
   let t = document.createAttribute("value");;
   t.value=cdPay.innerText;
   txtBox.setAttributeNode(t);
   payPlace.append(txtBox);

   pBtn.style.display = 'block';
   pBtn.addEventListener("click", function(){
       console.log(cdPay.innerText);
       console.log(txtBox.value);
       cdPay.innerText=txtBox.value;
       pBtn.style.display = 'none';
       payPlace.removeChild(txtBox);
       payPlace.append(cdPay);
   });
   

});

cdRegion.addEventListener("click", function(){
    console.log("cdRegion");
    regionPlace.removeChild(cdRegion); 
    let txtBox = document.createElement("input");
    let ch = document.createAttribute("type");
    ch.value="text"
    txtBox.setAttributeNode(ch);
    let t = document.createAttribute("value");
    t.value=cdRegion.innerText;
    txtBox.setAttributeNode(t);
    regionPlace.append(txtBox);
    rBtn.style.display = 'block';
    rBtn.addEventListener("click", function(){
        console.log(cdRegion.innerText);
        console.log(txtBox.value);
        cdRegion.innerText=txtBox.value;
        rBtn.style.display = 'none';
        regionPlace.removeChild(txtBox);
        regionPlace.append(cdRegion);
       
   });
});

scExplain.addEventListener("click", function(){
    console.log("scExplain");
    explainPlace.removeChild(scExplain); 
   let txtBox = document.createElement("input");
   let ch = document.createAttribute("type");
   ch.value="text"
   txtBox.setAttributeNode(ch);
   let t = document.createAttribute("value");
   t.value=scExplain.innerText;
   txtBox.setAttributeNode(t);
   explainPlace.append(txtBox);

   eBtn.style.display = 'block';
   eBtn.addEventListener("click", function(){
       console.log(scExplain.innerText);
       console.log(txtBox.value);
       scExplain.innerText=txtBox.value;
       eBtn.style.display = 'none';
       explainPlace.removeChild(txtBox);
       explainPlace.append(scExplain);
   });
});

latitude.addEventListener("click", function(){
    console.log("latitude");
    laPlace.removeChild(latitude); 
   let txtBox = document.createElement("input");
   let ch = document.createAttribute("type");
   ch.value="text"
   txtBox.setAttributeNode(ch);
   let t = document.createAttribute("value");
   t.value=latitude.innerText;
   txtBox.setAttributeNode(t);
   laPlace.append(txtBox);

   laBtn.style.display = 'block';
   laBtn.addEventListener("click", function(){
       console.log(latitude.innerText);
       console.log(txtBox.value);
       latitude.innerText=txtBox.value;
       laBtn.style.display = 'none';
       laPlace.removeChild(txtBox);
       laPlace.append(latitude);
   });
});

longitude.addEventListener("click", function(){
    console.log("longitude");
    loPlace.removeChild(longitude); 
   let txtBox = document.createElement("input");
   let ch = document.createAttribute("type");
   ch.value="text"
   txtBox.setAttributeNode(ch);
   let t = document.createAttribute("value");
   t.value=longitude.innerText;
   txtBox.setAttributeNode(t);
   loPlace.append(txtBox);

   loBtn.style.display = 'block';
   loBtn.addEventListener("click", function(){
       console.log(longitude.innerText);
       console.log(txtBox.value);
       longitude.innerText=txtBox.value;
       loBtn.style.display = 'none';
       loPlace.removeChild(txtBox);
       loPlace.append(longitude);
   });
});

completeUpdate.addEventListener("click", function(){
    console.log("completeUpdate");

    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./updateDetail");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("&cdPay="+cdPay.innerText+"&cdRegion="+cdRegion.innerText+"&scExplain="+scExplain.innerText+"&scName="+scName.innerText+"&latitude="+latitude.innerText+"&longitude="+longitude.innerText);

    xhttp.onreadystatechange = function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = xhttp.responseText.trim();
            
            console.log(result);

            
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

