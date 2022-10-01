const ex2 = document.querySelector(".ex2");
ex2.addEventListener("click",function(){
    console.log("ex2클릭");
    ex2.parentNode.removeChild(ex2);
});
const btnModal = document.querySelector("#btnModal");
const interest = document.querySelector("#interest");
const board = document.querySelector("#board");
const have = document.querySelector("#have");
const license = document.querySelector("#license");

const add = document.querySelectorAll(".add");
const alt = document.querySelectorAll(".alt");
const del = document.querySelectorAll(".del");

const ln = license.getAttribute("data-license-num");
const mb = document.querySelector("#mb");
let sbvj="";
let check=0;
let group="";

interest.addEventListener("click",function(){
    let chk = window.confirm("관심 등록 하시겠습니까?");
    if(chk==true){
        alert("관심 목록에 추가되었습니다.");
    }
});

have.addEventListener("click",function(){
    let chk = window.confirm("자격증 보유 등록을 하시겠습니까?");
    if(chk==true){
        alert("보유 자격증 목록에 추가되었습니다.");
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
        arr=['동영상 제목','동영상 링크','v'];
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
    
                    text = document.createTextNode("동영상 링크");
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
    let chk = window.confirm(txt+"하시겠습니까?");//위치가운데로
    if(chk==true){
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
        xhttp.onreadystatechange=function(){
        if(xhttp.readyState == 4 && xhttp.status == 200){
            // window.location.reload()
            console.log("js 완료");//응답 안오는 이유??
        }
    }}
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