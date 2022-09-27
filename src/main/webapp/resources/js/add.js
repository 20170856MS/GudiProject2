const addFiles=document.getElementById("addFiles");//div
const fileAdd=document.getElementById("fileAdd");//fileAdd 버튼
const fileDelete = document.querySelectorAll(".fileDelete"); // 클래스명 fileDelete forEach가능

//---------------------Update시 file Delelte----------------
try {
fileDelete.forEach(function(f){
   f.addEventListener("click", function(){

    let check = window.confirm("정말 삭제 하시겠습니까???");

    if(!check) {
        return;
    }
    
    let fileNum=f.getAttribute("data-file-num");

    //ajax
    const xhttp = new XMLHttpRequest();

    xhttp.open("POST", "./fileDelete");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("fileNum="+fileNum);

    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4&&xhttp.status==200) {
            let result = xhttp.responseText.trim();

            if(result==1){
                console.log(result);
                f.parentNode.remove();
                count--;
            }else {
                console.log(result);
            }
        }
    }

   })

});

} catch(e){
    console.log(e);
}

//-----------------------file add----------------------------
let count=0;
let idx=0;

function setCount(c) {
    if(c>=0) {
         count=c;
    }
}

try{


    fileAdd.addEventListener("click", function(){

    
        if(count>2){
            alert("최대 3개만 가능")
            return;
        }

    
    //부모 element div
    let div = document.createElement("div"); //<div></div>
    let c = document.createAttribute("class");//class=
    c.value="mb-3"; //class="mb-3"
    div.setAttributeNode(c);//<div class="mb-3"> 

    c = document.createAttribute("id");
    c.value="file"+idx;
    div.setAttributeNode(c);

    //자식 label
    let label = document.createElement("label");//<label></label>
    let labelText = document.createTextNode("File"); //"File"
    label.appendChild(labelText); // <label>File</label>

    let labelClass=document.createAttribute("class");
    labelClass.value="form-label"; //class="form-label"
    label.setAttributeNode(labelClass);

    labelClass=document.createAttribute("for"); //for=""
    labelClass.value="files"; //for="files"
    label.setAttributeNode(labelClass);//<label for="files" class="form-label"></label>
    div.appendChild(label);
    
    //자식 element input
    let input = document.createElement("input");//<input>
    let type = document.createAttribute("type");//type=
    type.value="file";//type="file"
    input.setAttributeNode(type);//<input type="file">
    
    type=document.createAttribute("name");
    type.value="files"
    input.setAttributeNode(type);
    
    type=document.createAttribute("class");
    type.value="form-control"
    input.setAttributeNode(type);
    
    type=document.createAttribute("id");
    type.value="files"
    input.setAttributeNode(type);
    
    div.appendChild(input);
    
    
    //<button type="button" class="del">삭제</button>
    //삭제 element 생성
    let button = document.createElement("button");

    let btnText = document.createTextNode("삭제");
    button.appendChild(btnText);

    let t = document.createAttribute("type");
    t.value="button";
    button.setAttributeNode(t);
    
    t = document.createAttribute("class");
    t.value="del btn btn-danger";
    button.setAttributeNode(t);

    t = document.createAttribute("title");
    t.value=idx;
    button.setAttributeNode(t);
    
    div.appendChild(button);

    addFiles.append(div);

    count++;
    idx++;

});

//삭제버튼 누르면 삭제 
addFiles.addEventListener("click", function(event){
    let button1 = event.target;
    if(button1.classList[0]=='del') {
        document.getElementById("file"+button1.title).remove();
        count--;
        

    }
});

} catch(e) {

}
