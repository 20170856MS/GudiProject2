
const updatebtn = document.querySelectorAll(".updatebtn");
const roles = document.querySelectorAll(".roles");

const userName = document.querySelectorAll(".userName");

const memberRoleName = document.querySelectorAll(".roleName");

var myFunction = function(){
  console.log("rr");
}

for(let i=0; i<updatebtn.length; i++){
  updatebtn[i].addEventListener("click",function(){
    console.log(userName[i].textContent)
    console.log(roles[i].value.trim())
  if(roles[i].value.trim() == 1){
    swal("관리자 권한이 필요합니다 :", {
      content: "input",
    }).then((value) => {
      if(`${value}` == 1004) {
        swal("성공","","success").then(function(){
        const xhttp = new XMLHttpRequest();


        xhttp.open("POST", "/admin/adminDetail")

      
        //3. Enctype
        //요청 header 정보
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        //POST 파라미터 전송
        xhttp.send("&userName="+userName[i].textContent+"&roleNum="+roles[i].value);

          xhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200) {
                let result = xhttp.responseText.trim();
                result = JSON.parse(result);
                console.log(result)

                if(result==1) {
                    swal("등급 변경 완료","","success").then(function(){

                      location.replace('/admin/adminDetail')
                    })
                    
                }else{
                  swal("권한이 없습니다.","error")
                }
            }
          }
        })
      } else{
        swal("변경실패","","error");
      }
    });
  }else {
    const xhttp = new XMLHttpRequest();


    xhttp.open("POST", "/admin/adminDetail")
  
   
    //3. Enctype
    //요청 header 정보
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  
    //POST 파라미터 전송
    xhttp.send("&userName="+userName[i].textContent+"&roleNum="+roles[i].value);
  
      xhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200) {
            let result = xhttp.responseText.trim();
            result = JSON.parse(result);
            console.log(result)
  
           if(result==1) {
                swal("등급 변경 완료","","success").then(function(){
  
                  location.replace('/admin/adminDetail')
                })
                
            }else{
              swal("권한이 없습니다.","error")
            }
        }
      }
  }
    
  
    
  });
}
         
