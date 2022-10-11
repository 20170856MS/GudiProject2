console.log("testsetst");
const btnModal = document.querySelector("#btnModal");
const interest = document.querySelector("#interest");
const board = document.querySelector("#board");
const license = document.querySelector("#license");

const add = document.querySelectorAll(".add");
const alt = document.querySelectorAll(".alt");
const del = document.querySelectorAll(".del");

const ln = license.getAttribute("data-license-num");
const mb = document.querySelector("#mb");
let sbvj="";
let check=0;
let group="";
const formCheckS = document.querySelectorAll(".form-check-s");
const formCheckB = document.querySelectorAll(".form-check-b");
const formCheckV = document.querySelectorAll(".form-check-v");
const formCheckJ = document.querySelectorAll(".form-check-j");
const chks = document.querySelector(".chks");
const chkb = document.querySelector(".chkb");
const chkv = document.querySelector(".chkv");
const chkj = document.querySelector(".chkj");
let delCheck=0;


interest.addEventListener("click",function(){
    let chk = window.confirm("관심 등록 하시겠습니까?");
    let num = interest.getAttribute("data-num");
    let licenseNum = interest.getAttribute("data-license-num");
    console.log(num);
    console.log(licenseNum);
    if(chk==true){
        const xhttp = new XMLHttpRequest();
        xhttp.open("POST","/likes/setLikes");
        xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhttp.send("num="+num+"&licenseNum="+licenseNum);
        xhttp.onreadystatechange=function(){
            if(xhttp.readyState==4 && xhttp.status==200){
                swal("관심목록에 추가되었습니다.",'','success');
            }else{
                swal("이미 관심등록 된 자격증입니다.",'','error');
            }
        }   
        }
    });

/*****************************************추가,수정,삭제****************************************************/
for(let i=0;i<add.length;i++){                          //추가이벤트
    add[i].addEventListener("click",function(event){
        if(event.target.classList.contains('s')){
            sbvj="s";
            group="ds";
            getAdd(ln,group);
        }
        if(event.target.classList.contains('b')){
            sbvj="b";
            group="db";
            getAdd(ln,group);                
        }
        if(event.target.classList.contains('v')){
            sbvj="v";
            group="dv";
            getAdd(ln,group);                
        }
        if(event.target.classList.contains('j')){
            sbvj="j";
            group="dj";
            getAdd(ln,group);    
            }
    });
}

for(let i=0;i<alt.length;i++){                          //수정이벤트
    alt[i].addEventListener("click",function(event){
        if(event.target.classList.contains('s')){
            group="ds";
            getUpdate(ln,group);
            }
        if(event.target.classList.contains('b')){
            group="db";
            getUpdate(ln,group);                
            }
        if(event.target.classList.contains('v')){
            group="dv";
            getUpdate(ln,group);                
            }
        if(event.target.classList.contains('j')){
            group="dj";
            getUpdate(ln,group);    
        }
    })
}

for(let i=0;i<del.length;i++){                          //삭제이벤트
    del[i].addEventListener("click",function(event){
        if(event.target.classList.contains('s')){
            sbvj="s";
            console.log("삭제s");
            group="ds";
            getDel(ln,group);
        }
        if(event.target.classList.contains('b')){
            sbvj="b";
            console.log("삭제b");
            group="db";
            getDel(ln,group);                
        }
        if(event.target.classList.contains('v')){
            sbvj="v";
            console.log("삭제v");
            group="dv";
            getDel(ln,group);                
        }
        if(event.target.classList.contains('j')){
            sbvj="j";
            console.log("삭제j");
            group="dj";
            getDel(ln,group);    
            }
    });
}
function getDel(ln,group){                      //삭제버튼활성화
    if(sbvj=="s"){
        if(delCheck==0){
            for(let i=0; i<formCheckS.length;i++){
                formCheckS[i].style.visibility="visible";
                chks.style.visibility="visible";
            }
            delCheck++;
        }else{
            for(let i=0; i<formCheckS.length;i++){
                formCheckS[i].style.visibility="hidden";
                chks.style.visibility="hidden";
            }
            delCheck--;
        }
    }
    if(sbvj=="b"){
        if(delCheck==0){
            for(let i=0; i<formCheckB.length;i++){
                formCheckB[i].style.visibility="visible";
                chkb.style.visibility="visible";
            }
            delCheck++;
        }else{
            for(let i=0; i<formCheckB.length;i++){
                formCheckB[i].style.visibility="hidden";
                chkb.style.visibility="hidden";
            }
            delCheck--;
        }
    }
    if(sbvj=="v"){
        if(delCheck==0){
            for(let i=0; i<formCheckV.length;i++){
                formCheckV[i].style.visibility="visible";
                chkv.style.visibility="visible";
            }
            delCheck++;
        }else{
            for(let i=0; i<formCheckV.length;i++){
                formCheckV[i].style.visibility="hidden";
                chkv.style.visibility="hidden";
            }
            delCheck--;
        }
    }
    if(sbvj=="j"){
        if(delCheck==0){
            for(let i=0; i<formCheckJ.length;i++){
                formCheckJ[i].style.visibility="visible";
                chkj.style.visibility="visible";
            }
            delCheck++;
        }else{
            for(let i=0; i<formCheckJ.length;i++){
                formCheckJ[i].style.visibility="hidden";
                chkj.style.visibility="hidden";
            }
            delCheck--;
        }
    }
}
chks.addEventListener("click",function(event){                                      //삭제 확인
    sbvj="s";
    const form3 = document.querySelectorAll(".form3");
    const form4 = document.querySelectorAll(".form4");
    const fci1 = document.querySelectorAll(".form-check-input1");
    let arr1=[];
    let arr2=[];
    for(let i=0;i<formCheckS.length;i++){
        if(fci1[i].checked){
            arr1[i]=form3[i].innerText;
            arr2[i]=form4[i].innerText;
        }
    }
    swal({
        title: "삭제하시겠습니까?",
        text: "되돌릴수 없습니다..",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            setDel(arr1,arr2);          
        } else {
          swal("취소하였습니다.");
        }
      });
});
chkb.addEventListener("click",function(event){
    sbvj="b";
    const form5 = document.querySelectorAll(".form5");
    const form6 = document.querySelectorAll(".form6");
    const fci2 = document.querySelectorAll(".form-check-input2");
    let arr1=[];
    let arr2=[];
    for(let i=0;i<formCheckB.length;i++){
        if(fci2[i].checked){
            arr1[i]=form5[i].innerText;
            arr2[i]=form6[i].innerText;
        }
    }
    swal({
        title: "삭제하시겠습니까?",
        text: "되돌릴수 없습니다..",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            setDel(arr1,arr2);          
        } else {
          swal("취소하였습니다.");
        }
      });
});
chkv.addEventListener("click",function(event){
    sbvj="v";
    const form7 = document.querySelectorAll(".form7");
    const form8 = document.querySelectorAll(".form8");
    const fci3 = document.querySelectorAll(".form-check-input3");
    let arr1=[];
    let arr2=[];
    for(let i=0;i<formCheckV.length;i++){
        if(fci3[i].checked){
            arr1[i]=form7[i].innerText;
            arr2[i]=form8[i].getAttribute("data-link");
        }
    }
    swal({
        title: "삭제하시겠습니까?",
        text: "되돌릴수 없습니다..",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            setDel(arr1,arr2);          
        } else {
          swal("취소하였습니다.");
        }
      });
});
chkj.addEventListener("click",function(event){
    sbvj="j";
    const form9 = document.querySelectorAll(".form9");
    const form10 = document.querySelectorAll(".form10");
    const fci4 = document.querySelectorAll(".form-check-input4");
    let arr1=[];
    let arr2=[];
    for(let i=0;i<formCheckJ.length;i++){
        if(fci4[i].checked){
            arr1[i]=form9[i].innerText;
            arr2[i]=form10[i].innerText;
        }
    }
    swal({
        title: "삭제하시겠습니까?",
        text: "되돌릴수 없습니다..",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            setDel(arr1,arr2);          
        } else {
          swal("취소하였습니다.");
        }
      });
});
function setDel(arr1,arr2){
    console.log("setDel함수실행:");
        const xhttp = new XMLHttpRequest();
        xhttp.open("POST","setDel");
        xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        console.log(arr1,arr2,sbvj);
        xhttp.send("arr1="+arr1+"&arr2="+arr2+"&sbvj="+sbvj);

        setTimeout(function(){ 
            window.location.reload();
            console.log("새로고침");
        }, 1000);

        xhttp.onreadystatechange=function(){
            if(xhttp.readyState==4 && xhttp.status==200){
                swal("삭제되었습니다.",'','success');
            }else{
                console.log("응답x");
            }
        }
    
}

function getAdd(ln,group){                                      //추가모달창
    let arr = [];
    if(group=="ds"){
        arr=['일정','날짜','s'];
        console.log(arr[0],arr[1],arr[2]);
    }
    if(group=="db"){
        arr=['교재 이름','교재 가격','b'];
        console.log(arr[0],arr[1],arr[2]);
    }
    if(group=="dv"){
        arr=['동영상 제목','동영상 링크 (youtube - 공유 - 퍼가기 - src:"", title: X)','v'];
        console.log(arr[0],arr[1],arr[2]);
    }
    if(group=="dj"){
        arr=['직업 이름','직업 소개','j'];
        console.log(arr[0],arr[1],arr[2]);
    }
    
        if(mb.children.length>1){
            let mb3 = document.querySelectorAll(".mb-3");
            for(let i=0;i<mb3.length;i++){
                mb3[i].remove();
            }
        }
        let ele = document.createElement("div");                        
        let attr = document.createAttribute("class");                   
        attr.value = "mb-3";                                            
        ele.setAttributeNode(attr);                                     

        let elel = document.createElement("label");                     
        attr = document.createAttribute("for");                         
        attr.value = "recipient-name";                                  
        elel.setAttributeNode(attr);                                    

        attr = document.createAttribute("class");                       
        attr.value = "col-form-label";                                  
        elel.setAttributeNode(attr);                                    
        
        let text = document.createTextNode(arr[0]);                     
        elel.appendChild(text);                                         
        ele.appendChild(elel);                                          
        
        elel=document.createElement("input");                           
        attr=document.createAttribute("type");
        attr.value="text";
        elel.setAttributeNode(attr);

        attr=document.createAttribute("class");
        attr.value="form-control form1 s";
        elel.setAttributeNode(attr);

        attr=document.createAttribute("value");
        attr.value="";//첫번째목록
        elel.setAttributeNode(attr);
        ele.appendChild(elel);
                                          
        mb.append(ele);                                                 
        
        ele = document.createElement("div");                            
        attr = document.createAttribute("class");                       
        attr.value = "mb-3";                                            
        ele.setAttributeNode(attr);                                     
        
        elel = document.createElement("label");
        attr = document.createAttribute("for");
        attr.value="message-text";
        elel.setAttributeNode(attr);

        attr = document.createAttribute("class");
        attr.value="col-form-label";
        elel.setAttributeNode(attr);

        text = document.createTextNode(arr[1]);
        elel.appendChild(text);
        ele.appendChild(elel);

        elel = document.createElement("textarea");
        attr = document.createAttribute("class");
        attr.value="form-control form2 s";
        elel.setAttributeNode(attr);

        text = document.createTextNode("");//두번째목록
        elel.appendChild(text);
        ele.appendChild(elel);

        mb.append(ele);
        btnModal.innerHTML="추가";
        document.querySelector("#up").click();
        }

    // <div class="mb-3">
    //     <label for="recipient-name" class="col-form-label"> arr[0] </label>
    //     <input type="text" class="form-control">
    // </div>

    // <div class="mb-3">
    //     <label for="message-text" class="col-form-label"> arr[1] </label>
    //     <textarea class="form-control"> </textarea>
    // </div>

    
function getUpdate(ln,group){                                   //수정모달창
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET","./detailAjax?licenseNum="+ln);
    xhttp.send();
    xhttp.addEventListener("readystatechange",function(){
        
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = JSON.parse(xhttp.responseText.trim());

            if(group=="ds"){
                let ds = result.ds; //ds[i].scheduleName, ds[i].scheduleDate;
                sbvj="s";
                if(mb.children.length>1){
                    let mb3 = document.querySelectorAll(".mb-3");
                    for(let i=0;i<mb3.length;i++){
                        mb3[i].remove();
                    }
                }
                
                for(let i=0;i<ds.length;i++){

                let ele = document.createElement("div");                        
                let attr = document.createAttribute("class");                   
                attr.value = "mb-3";                                            
                ele.setAttributeNode(attr);                                     

                let elel = document.createElement("label");                     
                attr = document.createAttribute("for");                         
                attr.value = "recipient-name";                                  
                elel.setAttributeNode(attr);                                    
    
                attr = document.createAttribute("class");                       
                attr.value = "col-form-label";                                  
                elel.setAttributeNode(attr);                                    
                
                let text = document.createTextNode("일정");                     
                elel.appendChild(text);                                         
                ele.appendChild(elel);                                          
                
                elel=document.createElement("input");                           
                attr=document.createAttribute("type");
                attr.value="text";
                elel.setAttributeNode(attr);
    
                attr=document.createAttribute("class");
                attr.value="form-control form1 s";
                elel.setAttributeNode(attr);
    
                attr=document.createAttribute("value");
                attr.value=ds[i].scheduleName;//첫번째목록
                elel.setAttributeNode(attr);
                ele.appendChild(elel);                                          
    
                mb.append(ele);                                                 
                
                ele = document.createElement("div");                            
                attr = document.createAttribute("class");                       
                attr.value = "mb-3";                                            
                ele.setAttributeNode(attr);                                     
                
                elel = document.createElement("label");
                attr = document.createAttribute("for");
                attr.value="message-text";
                elel.setAttributeNode(attr);

                attr = document.createAttribute("class");
                attr.value="col-form-label";
                elel.setAttributeNode(attr);

                text = document.createTextNode("날짜");
                elel.appendChild(text);
                ele.appendChild(elel);

                elel = document.createElement("textarea");
                attr = document.createAttribute("class");
                attr.value="form-control form2 s";
                elel.setAttributeNode(attr);

                text = document.createTextNode(ds[i].scheduleDate);//두번째목록
                elel.appendChild(text);
                ele.appendChild(elel);

                mb.append(ele);
                }

            }else if(group=="db"){
                let db = result.db;//db[i].bookDTO.bookName; db[i].bookDTO.bookImage; db[i].bookDTO.bookPrice;
                sbvj="b";
                if(mb.children.length>1){
                    let mb3 = document.querySelectorAll(".mb-3");
                    for(let i=0;i<mb3.length;i++){
                        mb3[i].remove();
                    }
                }

                for(let i=0;i<db.length;i++){

                    let ele = document.createElement("div");                        
                    let attr = document.createAttribute("class");                   
                    attr.value = "mb-3";                                            
                    ele.setAttributeNode(attr);                                     
        
                    let elel = document.createElement("label");                     
                    attr = document.createAttribute("for");                         
                    attr.value = "recipient-name";                                  
                    elel.setAttributeNode(attr);                                    
        
                    attr = document.createAttribute("class");                       
                    attr.value = "col-form-label";                                  
                    elel.setAttributeNode(attr);                                    
                    
                    let text = document.createTextNode("교재이름");                 
                    elel.appendChild(text);                                         
                    ele.appendChild(elel);                                          
                    
                    elel=document.createElement("input");                           
                    attr=document.createAttribute("type");
                    attr.value="text";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("class");
                    attr.value="form-control form1 b";
                    elel.setAttributeNode(attr);
    
                    attr=document.createAttribute("value");
                    attr.value=db[i].bookDTO.bookName;//첫번째목록
                    elel.setAttributeNode(attr);
                    ele.appendChild(elel);                                          
        
                    mb.append(ele);                                                 
                    
                    ele = document.createElement("div");                            
                    attr = document.createAttribute("class");                       
                    attr.value = "mb-3";                                            
                    ele.setAttributeNode(attr);                                     
                    
                    elel = document.createElement("label");
                    attr = document.createAttribute("for");
                    attr.value="message-text";
                    elel.setAttributeNode(attr);
    
                    attr = document.createAttribute("class");
                    attr.value="col-form-label";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode("교재가격");
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    elel = document.createElement("textarea");
                    attr = document.createAttribute("class");
                    attr.value="form-control form2 b";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode(db[i].bookDTO.bookPrice);//두번째목록
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    mb.append(ele);                
                    }
            }else if(group=="dv"){
                let dv = result.dv; //dv[i].videoDTO.videoTitle; dv[i].videoDTO.videoLink;
                sbvj="v";
                if(mb.children.length>1){
                    let mb3 = document.querySelectorAll(".mb-3");
                    for(let i=0;i<mb3.length;i++){
                        mb3[i].remove();
                    }
                }

                for(let i=0;i<dv.length;i++){

                    let ele = document.createElement("div");                        
                    let attr = document.createAttribute("class");                   
                    attr.value = "mb-3";                                            
                    ele.setAttributeNode(attr);                                     
        
                    let elel = document.createElement("label");                     
                    attr = document.createAttribute("for");                         
                    attr.value = "recipient-name";                                  
                    elel.setAttributeNode(attr);                                    
        
                    attr = document.createAttribute("class");                       
                    attr.value = "col-form-label";                                  
                    elel.setAttributeNode(attr);                                    
                    
                    let text = document.createTextNode("동영상 제목");              
                    elel.appendChild(text);                                         
                    ele.appendChild(elel);                                          
                    
                    elel=document.createElement("input");                           
                    attr=document.createAttribute("type");
                    attr.value="text";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("class");
                    attr.value="form-control form1 v";
                    elel.setAttributeNode(attr);
    
                    attr=document.createAttribute("value");
                    attr.value=dv[i].videoDTO.videoTitle;//첫번째목록
                    elel.setAttributeNode(attr);
                    ele.appendChild(elel);                                          
        
                    mb.append(ele);                                                 
                    
                    ele = document.createElement("div");                            
                    attr = document.createAttribute("class");                       
                    attr.value = "mb-3";                                            
                    ele.setAttributeNode(attr);                                     
                    
                    elel = document.createElement("label");
                    attr = document.createAttribute("for");
                    attr.value="message-text";
                    elel.setAttributeNode(attr);
    
                    attr = document.createAttribute("class");
                    attr.value="col-form-label";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode("동영상 링크 (youtube - 공유 - 퍼가기 - src)");
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    elel = document.createElement("textarea");
                    attr = document.createAttribute("class");
                    attr.value="form-control form2 v";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode(dv[i].videoDTO.videoLink);//두번째목록
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    mb.append(ele);                
                    }
            }else if(group=="dj"){
                let dj = result.dj; //dj[i].jobDTO.jobName, dj[i].jobDTO.jobIntro
                sbvj="j";
                if(mb.children.length>1){
                    let mb3 = document.querySelectorAll(".mb-3");
                    for(let i=0;i<mb3.length;i++){
                        mb3[i].remove();
                    }
                }

                for(let i=0;i<dj.length;i++){

                    let ele = document.createElement("div");                        
                    let attr = document.createAttribute("class");                   
                    attr.value = "mb-3";                                            
                    ele.setAttributeNode(attr);                                     
        
                    let elel = document.createElement("label");                     
                    attr = document.createAttribute("for");                         
                    attr.value = "recipient-name";                                  
                    elel.setAttributeNode(attr);                                    
        
                    attr = document.createAttribute("class");                       
                    attr.value = "col-form-label";                                  
                    elel.setAttributeNode(attr);                                    
                    
                    let text = document.createTextNode("직업 이름");                
                    elel.appendChild(text);                                         
                    ele.appendChild(elel);                                          
                    
                    elel=document.createElement("input");                           
                    attr=document.createAttribute("type");
                    attr.value="text";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("class");
                    attr.value="form-control form1 j";
                    elel.setAttributeNode(attr);
    
                    attr=document.createAttribute("value");
                    attr.value=dj[i].jobDTO.jobName;//첫번째목록
                    elel.setAttributeNode(attr);
                    ele.appendChild(elel);                                          
        
                    mb.append(ele);                                                 
                    
                    ele = document.createElement("div");                            
                    attr = document.createAttribute("class");                       
                    attr.value = "mb-3";                                            
                    ele.setAttributeNode(attr);                                     
                    
                    elel = document.createElement("label");
                    attr = document.createAttribute("for");
                    attr.value="message-text";
                    elel.setAttributeNode(attr);
    
                    attr = document.createAttribute("class");
                    attr.value="col-form-label";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode("직업 소개");
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    elel = document.createElement("textarea");
                    attr = document.createAttribute("class");
                    attr.value="form-control form2 j";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode(dj[i].jobDTO.jobIntro);//두번째목록
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    mb.append(ele);     
                    }
            }
        }
    });
    // <div class="mb-3">
    //     <label for="recipient-name" class="col-form-label"> 직업명 </label>
    //     <input type="text" class="form-control" value="dj[i].jobDTO.jobName">
    // </div>

    // <div class="mb-3">
    //     <label for="message-text" class="col-form-label"> 직업소개 </label>
    //     <textarea class="form-control"> dj[i].jobDTO.jobIntro </textarea>
    // </div>
    btnModal.innerHTML="수정";
    document.querySelector("#up").click();
}
btnModal.addEventListener("click",function(){                           //모달최종버튼
    let txt = btnModal.innerHTML;

    swal({
        title: txt+"하시겠습니까?",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
            {
                let form1 = document.querySelectorAll(".form1");
                let form2 = document.querySelectorAll(".form2");
        
                let arr1 = [];
                let arr2 = [];
                for(let i=0; i<form1.length;i++){            
                    arr1[i]=form1[i].value;
                }
                for(let i=0; i<form2.length;i++){            
                    arr2[i]=form2[i].value;
                }    
                //--------------ajax---------------------
                const xhttp = new XMLHttpRequest();
                if(txt=="수정"){
                    xhttp.open("POST","setUpdate");
                }
                if(txt=="추가"){
                    xhttp.open("POST","setAdd");
                }
                if(txt=="삭제"){
                    xhttp.open("POST","setDel");
                }
                xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                console.log(arr1,arr2,sbvj);
                
                xhttp.send("arr1="+arr1+"&arr2="+arr2+"&sbvj="+sbvj+"&licenseNum="+ln);
        
                setTimeout(function(){ 
                    window.location.reload();
                    console.log("새로고침");
                    swal(txt+"되었습니다.",'','success');
                }, 1000);
        
                xhttp.onreadystatechange=function(){
                if(xhttp.readyState == 4 && xhttp.status == 200){
                    console.log("js 완료");//응답 안오는 이유??
                }
            }}
        } else {
          swal("취소하였습니다.");
        }
      });
    

})

const test = document.querySelector("#test");
const licenseNum = test.getAttribute("licenseNum");


test.addEventListener("click",function(){
    
    const xhttp = new XMLHttpRequest;

    xhttp.open("GET","./add")

    xhttp.send("licenseNum="+licenseNum)

    xhttp.onreadystatechange = function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = xhttp.responseText.trim();
            
            console.log(result);


            if(result == 1){
                console.log("rr")
            }else{

            }
            
            
        }
    }

})