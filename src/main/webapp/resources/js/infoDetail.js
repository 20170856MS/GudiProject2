const ex1 = document.querySelector("#ex1");
ex1.addEventListener("click",function(){
    console.log("ex1클릭");
    ex1. .removeChild(ex1);
    
});




const interest = document.querySelector("#interest");
const board = document.querySelector("#board");
const have = document.querySelector("#have");
const license = document.querySelector("#license");

const add = document.querySelectorAll(".add");
const alt = document.querySelectorAll(".alt");
const del = document.querySelectorAll(".del");

const ln = license.getAttribute("data-license-num");
const mb = document.querySelector("#mb");
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

/***************************************************************************************************/
for(let i=0;i<add.length;i++){
    add[i].addEventListener("click",function(){
        setUpdate(ln);
    });
}

for(let i=0;i<del.length;i++){
    del[i].addEventListener("click",function(){
        setUpdate(ln);
    });
}

for(let i=0;i<alt.length;i++){
    alt[i].addEventListener("click",function(event){
        if(event.target.classList.contains('s')){
                group="ds";
                setUpdate(ln,group);

            }else if(event.target.classList.contains('b')){
                group="db";
                setUpdate(ln,group);
                
            }else if(event.target.classList.contains('v')){
                group="dv";
                setUpdate(ln,group);
                
            }else if(event.target.classList.contains('j')){
                group="dj";
                setUpdate(ln,group);
    
            };
        });
}

function setUpdate(ln,group){
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET","./detailAjax?licenseNum="+ln);
    xhttp.send();
    xhttp.addEventListener("readystatechange",function(){
        
        if(xhttp.readyState==4 && xhttp.status==200){
            let result = JSON.parse(xhttp.responseText.trim());
            console.log(group);

            if(group=="ds"){
                let ds = result.ds; //ds[i].scheduleName, ds[i].scheduleDate;
                
                for(let i=0;i<ds.length;i++){

                let ele = document.createElement("div");                        //<div></div>
                let attr = document.createAttribute("class");                   //class
                attr.value = "mb-3";                                            //class=""
                ele.setAttributeNode(attr);                                     //<div class=""></div>
    
                let elel = document.createElement("label");                     //<label></label>
                attr = document.createAttribute("for");                         //for
                attr.value = "recipient-name";                                  //for=""
                elel.setAttributeNode(attr);                                    //<label for=""></label>
    
                attr = document.createAttribute("class");                       //class
                attr.value = "col-form-label";                                  //class=""
                elel.setAttributeNode(attr);                                    //<label for="" class=""></label>
                
                let text = document.createTextNode("일정");                   //text
                elel.appendChild(text);                                         //<label for="" class="">text</label>
                ele.appendChild(elel);                                          //elel 끝
                
                elel=document.createElement("input");                           //<input></input>
                attr=document.createAttribute("type");
                attr.value="text";
                elel.setAttributeNode(attr);
    
                attr=document.createAttribute("class");
                attr.value="form-control";
                elel.setAttributeNode(attr);
    
                attr=document.createAttribute("id");
                attr.value="updateWriter";
                elel.setAttributeNode(attr);

                attr=document.createAttribute("value");
                attr.value=ds[i].scheduleName;//첫번째목록
                elel.setAttributeNode(attr);
                ele.appendChild(elel);                                          //elel끝
    
                mb.append(ele);                                                 //ele끝
                
                ele = document.createElement("div");                            //<div></div>
                attr = document.createAttribute("class");                       //class
                attr.value = "mb-3";                                            //class=""
                ele.setAttributeNode(attr);                                     //<div class=""></div>
                
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
                attr.value="form-control";
                elel.setAttributeNode(attr);

                attr = document.createAttribute("id");
                attr.value="updateContents";
                elel.setAttributeNode(attr);

                text = document.createTextNode(ds[i].scheduleDate);//두번째목록
                elel.appendChild(text);
                ele.appendChild(elel);

                mb.append(ele);                
                }

            }else if(group=="db"){
                let db = result.db;//db[i].bookDTO.bookName; db[i].bookDTO.bookImage; db[i].bookDTO.bookPrice;
                
                for(let i=0;i<db.length;i++){

                    let ele = document.createElement("div");                        //<div></div>
                    let attr = document.createAttribute("class");                   //class
                    attr.value = "mb-3";                                            //class=""
                    ele.setAttributeNode(attr);                                     //<div class=""></div>
        
                    let elel = document.createElement("label");                     //<label></label>
                    attr = document.createAttribute("for");                         //for
                    attr.value = "recipient-name";                                  //for=""
                    elel.setAttributeNode(attr);                                    //<label for=""></label>
        
                    attr = document.createAttribute("class");                       //class
                    attr.value = "col-form-label";                                  //class=""
                    elel.setAttributeNode(attr);                                    //<label for="" class=""></label>
                    
                    let text = document.createTextNode("교재이름");                   //text
                    elel.appendChild(text);                                         //<label for="" class="">text</label>
                    ele.appendChild(elel);                                          //elel 끝
                    
                    elel=document.createElement("input");                           //<input></input>
                    attr=document.createAttribute("type");
                    attr.value="text";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("class");
                    attr.value="form-control";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("id");
                    attr.value="updateWriter";
                    elel.setAttributeNode(attr);
    
                    attr=document.createAttribute("value");
                    attr.value=db[i].bookDTO.bookName;//첫번째목록
                    elel.setAttributeNode(attr);
                    ele.appendChild(elel);                                          //elel끝
        
                    mb.append(ele);                                                 //ele끝
                    
                    ele = document.createElement("div");                            //<div></div>
                    attr = document.createAttribute("class");                       //class
                    attr.value = "mb-3";                                            //class=""
                    ele.setAttributeNode(attr);                                     //<div class=""></div>
                    
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
                    attr.value="form-control";
                    elel.setAttributeNode(attr);
    
                    attr = document.createAttribute("id");
                    attr.value="updateContents";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode(db[i].bookDTO.bookPrice);//두번째목록
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    mb.append(ele);                
                    }
            }else if(group=="dv"){
                let dv = result.dv; //dv[i].videoDTO.videoTitle; dv[i].videoDTO.videoLink;
                
                for(let i=0;i<dv.length;i++){

                    let ele = document.createElement("div");                        //<div></div>
                    let attr = document.createAttribute("class");                   //class
                    attr.value = "mb-3";                                            //class=""
                    ele.setAttributeNode(attr);                                     //<div class=""></div>
        
                    let elel = document.createElement("label");                     //<label></label>
                    attr = document.createAttribute("for");                         //for
                    attr.value = "recipient-name";                                  //for=""
                    elel.setAttributeNode(attr);                                    //<label for=""></label>
        
                    attr = document.createAttribute("class");                       //class
                    attr.value = "col-form-label";                                  //class=""
                    elel.setAttributeNode(attr);                                    //<label for="" class=""></label>
                    
                    let text = document.createTextNode("동영상 제목");                   //text
                    elel.appendChild(text);                                         //<label for="" class="">text</label>
                    ele.appendChild(elel);                                          //elel 끝
                    
                    elel=document.createElement("input");                           //<input></input>
                    attr=document.createAttribute("type");
                    attr.value="text";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("class");
                    attr.value="form-control";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("id");
                    attr.value="updateWriter";
                    elel.setAttributeNode(attr);
    
                    attr=document.createAttribute("value");
                    attr.value=dv[i].videoDTO.videoTitle;//첫번째목록
                    elel.setAttributeNode(attr);
                    ele.appendChild(elel);                                          //elel끝
        
                    mb.append(ele);                                                 //ele끝
                    
                    ele = document.createElement("div");                            //<div></div>
                    attr = document.createAttribute("class");                       //class
                    attr.value = "mb-3";                                            //class=""
                    ele.setAttributeNode(attr);                                     //<div class=""></div>
                    
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
                    attr.value="form-control";
                    elel.setAttributeNode(attr);
    
                    attr = document.createAttribute("id");
                    attr.value="updateContents";
                    elel.setAttributeNode(attr);
    
                    text = document.createTextNode(dv[i].videoDTO.videoLink);//두번째목록
                    elel.appendChild(text);
                    ele.appendChild(elel);
    
                    mb.append(ele);                
                    }
            }else if(group=="dj"){
                let dj = result.dj; //dj[i].jobDTO.jobName, dj[i].jobDTO.jobIntro
                
                for(let i=0;i<dj.length;i++){

                    let ele = document.createElement("div");                        //<div></div>
                    let attr = document.createAttribute("class");                   //class
                    attr.value = "mb-3";                                            //class=""
                    ele.setAttributeNode(attr);                                     //<div class=""></div>
        
                    let elel = document.createElement("label");                     //<label></label>
                    attr = document.createAttribute("for");                         //for
                    attr.value = "recipient-name";                                  //for=""
                    elel.setAttributeNode(attr);                                    //<label for=""></label>
        
                    attr = document.createAttribute("class");                       //class
                    attr.value = "col-form-label";                                  //class=""
                    elel.setAttributeNode(attr);                                    //<label for="" class=""></label>
                    
                    let text = document.createTextNode("직업 이름");                   //text
                    elel.appendChild(text);                                         //<label for="" class="">text</label>
                    ele.appendChild(elel);                                          //elel 끝
                    
                    elel=document.createElement("input");                           //<input></input>
                    attr=document.createAttribute("type");
                    attr.value="text";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("class");
                    attr.value="form-control";
                    elel.setAttributeNode(attr);
        
                    attr=document.createAttribute("id");
                    attr.value="updateWriter";
                    elel.setAttributeNode(attr);
    
                    attr=document.createAttribute("value");
                    attr.value=dj[i].jobDTO.jobName;//첫번째목록
                    elel.setAttributeNode(attr);
                    ele.appendChild(elel);                                          //elel끝
        
                    mb.append(ele);                                                 //ele끝
                    
                    ele = document.createElement("div");                            //<div></div>
                    attr = document.createAttribute("class");                       //class
                    attr.value = "mb-3";                                            //class=""
                    ele.setAttributeNode(attr);                                     //<div class=""></div>
                    
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
                    attr.value="form-control";
                    elel.setAttributeNode(attr);
    
                    attr = document.createAttribute("id");
                    attr.value="updateContents";
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
    //     <input type="text" class="form-control" id="updateWriter" value="dj[i].jobDTO.jobName">
    // </div>

    // <div class="mb-3">
    //     <label for="message-text" class="col-form-label"> 직업소개 </label>
    //     <textarea class="form-control" id="updateContents"> dj[i].jobDTO.jobIntro </textarea>
    // </div>
    document.querySelector("#up").click();
}