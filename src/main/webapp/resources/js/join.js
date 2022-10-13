const userName = document.getElementById("userName");
const areaName = document.getElementById("areaName")
const password = document.getElementById("password");
const password_check = document.getElementById("password_check");
const email = document.getElementById("email");
const phone = document.getElementById("phone");
const name1 = document.getElementById("name1");
const password_check1 = document.getElementById("password_check1");
const password_check2 = document.getElementById("password_check2");
const frm3 = document.getElementById("frm3");
const join1 = document.getElementById("join1")
let ck1= false;
let check1 = true;
let check2 = true;
let check3 = true;
let check4 = false;
let check5 = false;
let check6 = false;



userName.addEventListener("blur",function(){
    ck1 = false;
    console.log(userName.value.length);

    if(userName.value.length<1){
        swal("1글자 이하입니다")
        check1 = false;
        ch = true;
        
    }else{
        ck1=false;
    }
    check1= true;
});

password.addEventListener("change",function(){
    console.log(password.value.length);
    if(password.value.length<6){
        password.focus();
        password_check1.innerHTML = "6글자미만입니다";
        check2 = false;
        password_check.value="";
    }else{
        password_check1.innerHTML ="가능한 비밀번호입니다."
        check2 = true;
        
    }
})

password_check.addEventListener("blur",function(){
    console.log(password_check.value);    
    console.log(password.value);

    if(password.value == password_check.value){
        password_check2.innerHTML ="비밀번호가 일치합니다."
        check3 = false;
        password_check.classList.remove("is-invaild");
        password_check.classList.add("is-vaild");
    }
    check3= true;
})


name1.addEventListener("blur",function(){
    if(name1.value.length>0){
        check4 =true;
        name1.className += ' is-vaild';
    }else {
        
        swal("입력필수");
    }
    
})

email.addEventListener("blur",function(){
    if(email.value.length>0){
        check5= true;
        email.className += ' is-vaild';
    }else {
        swal("입력필수");
    }
})

phone.addEventListener("blur",function(){

    if(phone.value.length>0){
        check6 = true;
        phone.className += ' is-vaild';
    }else {
        swal("입력필수");
    }
})

join1.addEventListener("click",function(){
    console.log(userName.value)
    console.log(name1.value)
    console.log(email.value)
    console.log(phone.value)
    console.log(userName.value)

    const xhttp = new XMLHttpRequest;

              xhttp.open("POST","/member/joinCheck")

              
              xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");


              xhttp.send("&userName="+userName.value+"&name="+name1.value+"&email="+email.value+"&phone="+phone.value);

              xhttp.onreadystatechange=function(){
                  if(this.readyState==4 && this.status==200){
                    let result = xhttp.responseText.trim();
                    console.log(result);
                    if(result == 0){
                        if(check1 == true && check2 == true && check3 ==true && check4 == true && check5==true && check6 == true){
                            swal("회원가입 성공!", "환영합니다.", "success").then(function(){
                                
                                frm3.submit();
                            })
                        }else{
                            swal("정보가 입력되어있지 않습니다.");
                        }
                    } else if (result == 1){
                        swal("중복된 아이디입니다","","error")
                    } else if (result == 2){
                        swal("사용중인 닉네임입니다.","","error")
                    } else if (result == 3){
                        swal("사용중인 이메일입니다.","","error")
                    } else if (result == 4){
                        swal("사용중인 전화번호입니다.","","error")
                    }
                        
                  } 
              }
            


    

});









