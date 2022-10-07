
const updatebtn = document.querySelectorAll(".updatebtn");
const roles = document.querySelectorAll(".roles");

const userName = document.querySelectorAll(".userName");

const memberRoleName = document.querySelectorAll(".roleName");
// const roleName = memberRoleName.getAttribute("role-name");


// $("button[id^='updatebtn']").on("click", function() {
//   console.log($("td[id^='userName']"));
//   console.log($("td[id^='userName']"));

//   const xhttp = new XMLHttpRequest();

//   const role = roles.value

//   xhttp.open("POST", "/admin/adminDetail")

//   console.log(roles.value)
//   console.log(user)
//   console.log(role)
//   //3. Enctype
//   //요청 header 정보
//   xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

//   //POST 파라미터 전송
//   xhttp.send("&userName="+user+"&roleNum="+role);

//   xhttp.onreadystatechange=function(){
//     if(this.readyState==4 && this.status==200) {
//         let result = xhttp.responseText.trim();
//         result = JSON.parse(result);
//         console.log(result)

//         if(result==1) {
//             swal("등급 변경 완료","","success").then(function(){

//               location.replace('/admin/adminDetail')
//             })
            
//         }else{
//           swal("권한이 없습니다.","error")
//         }
//     }
//   }
// });


var myFunction = function(){
  console.log("rr");
}

for(let i=0; i<updatebtn.length; i++){
  updatebtn[i].addEventListener("click",function(){
    console.log(userName[i].textContent)
    console.log(roles[i].value);
    
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
    
  });
}
         
