console.log("js연결화긴");
const cancel = document.querySelectorAll(".cancel");



for(let i=0; i<cancel.length;i++){
    cancel[i].addEventListener("click",function(){

        const ln = cancel[i].getAttribute("data-license-num");

        swal({
            title: "관심 등록을 해제하시겠습니까?",
            text: "다시 관심 등록할수 있습니다.",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {

                const xhttp = new XMLHttpRequest();
                xhttp.open("POST","/likes/setDelLikes");
                xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                xhttp.send("licenseNum="+ln);
                xhttp.onreadystatechange=function(){
                    if(xhttp.readyState==4 && xhttp.status==200){
                    }
                }

                swal("관심등록이 해제되었습니다.",'','success');
                setTimeout(function(){ 
                    window.location.reload();
                }, 1000);

            } else {
              swal("취소하였습니다.");
            }
          });
    
    });
}