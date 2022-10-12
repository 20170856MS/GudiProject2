const payMentCancel = document.querySelectorAll(".payMentCancel");
const orderNum = document.querySelectorAll(".orderNum");
const userNum = document.querySelectorAll(".usernum");
const table_btn = document.querySelectorAll(".table_btn")
const listInfo = (function(){

	let orderList = [];
	
	const getOrderList = function(index){
		return orderList[index];
	}
	const setOrderList = function(set){
		orderList = set;
		console.log(orderList);
	}
	
	
	return {
		
		getOrderList : getOrderList,
		setOrderList : setOrderList,
	
	}
})();

for(let i = 0 ; i<table_btn.length;i++){
  table_btn[i].addEventListener("click",function(){
    console.log(userNum[i].value)
    console.log(orderNum[i].value)
    $.ajax({
      type: 'POST',
      url: '/order/completeDetail',
      data: {
          value: userNum[i].value,
      },
      success: function(data) {
              console.log(data)
              if(data == 1){
                location.replace('/order/completeDetail?orderNum='+orderNum[i].value);
              } 
            }
  });
  
  })

}


for(let i = 0 ; i<payMentCancel.length;i++){
  payMentCancel[i].addEventListener("click",function(){
      console.log(orderNum[i].value)
      swal({
          title: "주문을 취소하시겠습니까??",
          text: "취소하면 되돌릴 수 없습니다.!",
          icon: "warning",
          buttons: true,
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
            swal("주문을 취소하였습니다!", {
              icon: "success"
              ,
            }).then(function(){
              const xhttp = new XMLHttpRequest;

              // 나중에 exception 오류?
              xhttp.open("POST","/order/orderCancle")

              
              xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");


              xhttp.send("orderNum="+orderNum[i].value);

              xhttp.onreadystatechange=function(){
                  if(this.readyState==4 && this.status==200){
                    let result1 = xhttp.responseText.trim();
                    console.log(result1);
                        if(result1==1){
                            location.replace('/order/myOrderList')
                            
                    
                        } else{
                            swal("이미 취소된 주문이거나 없는 주문번호입니다.");
                        }
                  } 
              }
            })
          } else {
            swal("보류하였습니다!");
          }
        });
  
  });
}


function cancelPay(){
		
		
        const xhttp = new XMLHttpRequest;

        xhttp.open("POST","../admin/orderCancle")

        
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");


        xhttp.send("orderNum="+orderNum);

        xhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
               let result1 = xhttp.responseText.trim();
               console.log(result1);
                   if(result1==1){
                       console.log("삭제성공")
               
                   } else{
                       console.log("삭제실패");
                   }
            } 
        }
 }

         
