const interest = document.querySelector("#interest");
const board = document.querySelector("#board");
const have = document.querySelector("#have");
const license = document.querySelector("#license");
const as = document.querySelector("#as");
const us = document.querySelector("#us");
const ds = document.querySelector("#ds");
const ab = document.querySelector("#ab");
const ub = document.querySelector("#ub");
const db = document.querySelector("#db");
const av = document.querySelector("#av");
const uv = document.querySelector("#uv");
const dv = document.querySelector("#dv");
const aj = document.querySelector("#aj");
const uj = document.querySelector("#uj");
const dj = document.querySelector("#dj");

const ln = license.getAttribute("data-license-num");
const mt = document.querySelector("#mt");
const mb = document.querySelector("#mb");
let check=0;

interest.addEventListener("click",function(){
    let check = window.confirm("관심 등록 하시겠습니까?");
    if(check==true){
        alert("관심 목록에 추가되었습니다.");
    }
});

have.addEventListener("click",function(){
    let check = window.confirm("자격증 보유 등록을 하시겠습니까?");
    if(check==true){
        alert("보유 자격증 목록에 추가되었습니다.");
    }
});

/***************************************************************************************************/

aj.addEventListener("click",function(){
    setAdd(ln);
});

function setAdd(ln){
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET","./detailAjax?licenseNum="+ln);
    xhttp.send();
    xhttp.addEventListener("readystatechange",function(){

        if(xhttp.readyState==4 && xhttp.status==200){
            let result = JSON.parse(xhttp.responseText.trim());
            let dj = result.dj;

            licenseName = document.createTextNode(dj[0].licenseName);
            
            if(check==0){
                mt.append(licenseName);
                check++;

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
                
                let text = document.createTextNode(dj[i].jobDTO.jobName);       //text
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
                ele.appendChild(elel);                                          //elel끝
    
                mb.append(ele);                                                 //ele끝

                ele = document.createElement("div");                            //<div></div>
                attr = document.createAttribute("class");                       //class
                attr.value = "mb-3";                                            //class=""
                ele.setAttributeNode(attr);                                     //<div class=""></div>
                
                }

            }//innerhtml,innertext안써져서 if문사용

        }
    });
    // <div class="mb-3">
    //     <label for="recipient-name" class="col-form-label">Writer</label>
    //     <input type="text" class="form-control" id="updateWriter">
    // </div>

    // <div class="mb-3">
    //     <label for="message-text" class="col-form-label">Contents</label>
    //     <textarea class="form-control" id="updateContents"></textarea>
    // </div>
    

    document.querySelector("#up").click();
}