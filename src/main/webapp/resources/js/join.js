const id = document.getElementById("id");
const area = document.getElementById("area")
const password = document.getElementById("password");
const password_check = document.getElementById("password_check");
const email = document.getElementById("email");
const phone = document.getElementById("phone");
const name1 = document.getElementById("name1");
const check0 = document.getElementById("check0");
const frm3 = document.getElementById("frm3");
const join1 = document.getElementById("join1")
const chheck = document.getElementById("chheck");
let ck1= false;
let check1 = true;
let check2 = true;
let check3 = true;
let check4 = false;
let check5 = false;
let check6 = false;



id.addEventListener("blur",function(){
    ck1 = false;
    console.log(id.value.length);

    if(id.value.length<1){
        alert("1글자 이하입니다")
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
        check0.innerHTML = "6글자미만입니다";
        check2 = false;
        password_check.value="";
    }else{
        check0.innerHTML ="가능한 비밀번호입니다."
        check2 = true;
        
    }
})

password_check.addEventListener("blur",function(){
    console.log(password_check.value);    
    console.log(password.value);

    if(password.value == password_check.value){
        check3 = false;
        chheck.innerHTML="비밀번호가 같습니다."
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
        
        alert("입력필수");
    }
    
})

email.addEventListener("blur",function(){
    if(email.value.length>0){
        check5= true;
        email.className += ' is-vaild';
    }else {
        alert("입력필수");
    }
})

email.addEventListener("blur",function(){

    if(email.value.length>0){
        check6 = true;
        email.className += ' is-vaild';
    }else {
        alert("입력필수");
    }
})

join1.addEventListener("click",function(){
    console.log(check1);
    console.log(check2);
    console.log(check3);
    console.log(check4);
    console.log(check5);
    console.log(check6);

    

    if(check1 == true && check2 == true && check3 ==true && check4 == true && check5==true && check6 == true){
         frm3.submit();
    }

});









