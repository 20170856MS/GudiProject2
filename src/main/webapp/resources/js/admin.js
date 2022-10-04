const payMentCancel = document.querySelector("#payMentCancel");
const orderNum = payMentCancel.getAttribute("order-num");


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

payMentCancel.addEventListener("click",function(){

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
            cancelPay()
          })
        } else {
          swal("보류하였습니다!");
        }
      });

});


function cancelPay(){
		
		let cancleReason = "";

		// 거부하기
		const totalPrice = 100;
		
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

         
