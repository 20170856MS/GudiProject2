
// let kind = '${param.kind}';
// alert(kind);
function check(){
    const cb = document.getElementsByClassName("cb");
    const check_all = document.getElementById("check_all");

    // const cb = document.querySelectorAll(".cb");
    // const check_all = document.querySelector("#check_all");
    const btn_check = document.getElementById("btn_check");
    const frm = document.getElementById("frm");


    console.log("foreach");


    // cb.forEach(function(v,i,ar){
    //     console.log(v);
    // });

    let result = true;
    for(let i=0;i<cb.length;i++){
        if(!cb[i].checked){
            result = false;
            break;
        }
    }


    check_all.checked =result;

    check_all.addEventListener("click",function(){

        for(let i=0; i<cb.length;i++){
           
                cb[i].checked = check_all.checked;
        }
       
        
    });
    
    btn_check.addEventListener("click",function(){
        let result = true;
        console.log(cb[1].checked)
        for(let i =0; i<cb.length;i++){
            if(!cb[i].checked){
                alert("약관 동의 바람");
                result = false;
                break;
            }
        }
    
        if(result ==true){
        frm.submit();
        }
    });
    
    
    
    for(let i=0;cb.length;i++){
        
        // cb[i].addEventListener("click",function(){
        //     check(1);
        // });
        cb[i].addEventListener("click", check);
    };
}
