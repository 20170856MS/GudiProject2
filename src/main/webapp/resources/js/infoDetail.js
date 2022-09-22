const interest = document.querySelector("#interest");
const board = document.querySelector("#board");
const have = document.querySelector("#have");
const aj = document.querySelector("#aj");
const uj = document.querySelector("#uj");
const dj = document.querySelector("#dj");




interest.addEventListener("click",function(){
    let check = window.confirm("관심 등록 하시겠습니까?");
    if(check==true){
        alert("관심 목록에 추가되었습니다.");
    }
});

have.addEventListener("click",function(){
    let check = window.confirm("자격증 보유 등록을 하시겠습니까?");
    if(check==true){
        alert("보유 자격증 목록에 추가되었습니다.")
    }
});

/***************************************************************************************************/

aj.addEventListener("click",function(){
    document.querySelector("#up").click();
});
uj.addEventListener("click",function(){
    console.log("dasda");
});
dj.addEventListener("click",function(){
    console.log("dewqa");
});