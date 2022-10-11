console.log("js연결화긴");
const cancel = document.querySelectorAll(".cancel");

for(let i=0; i<cancel.length;i++){
    cancel[i].addEventListener("click",function(){

        swal({
            title: "관심 등록을 해제하시겠습니까?",
            text: "다시 관심 등록할수 있습니다.",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              swal("관심등록을 해제했습니다.", {
                icon: "success"

              }).then(function(){
                cancelPay();
              })
            } else {
              swal("취소하였습니다.");
            }
          });
    
    });
}