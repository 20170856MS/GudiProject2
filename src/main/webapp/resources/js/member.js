const btn = document.getElementById("btn");
const frm = document.getElementById("frm");
const userName = document.getElementById("userName");
const password = document.getElementById("password");

btn.addEventListener("click",function(){
    let u = userName.value;
    let p = password.value;
 
    // frm.submit();
    console.log(u == "");

    console.log(u.length);
    if(u.length>0 && p.length>0){
        frm.submit();
    } else{
        swal("로그인 실패 !","입력되지 않은 값이 있습니다.","error");
    }
    
    
    
});