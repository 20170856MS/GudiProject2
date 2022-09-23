const payMentCancel = document.querySelector("#payMentCancel");
const orderNum = payMentCancel.getAttribute("order-num");



payMentCancel.addEventListener("click",function(){

    let check = window.confirm("주문을 취소하시겠습니까?")

    if(!check){
        return;
    }
    cancelPay();

    // const xhttp = new XMLHttpRequest;

    // xhttp.open("POST","./payMentCancle")

    // //3. Enctype
    // // 요청 hearder 정보
    // xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    // xhttp.send("orderNum="+orderNum);

    // xhttp.onreadystatechange=function(){
    //     if(this.readyState==4 && this.status==200){
    //         let result = xhttp.responseText.trim();
    //         console.log(result);
    //         result = JSON.parse(result);
           
            
    //         if(result.result == 1){
    //             alert("취소 성공");

    //         } else{
    //             alert("실패");
    //         }
    //     }
    // }

});



function cancelPay(){
    // IMP.init('imp10453708');
    $.ajax({
        url: "/order/payMentCancel", // 예: http://www.myservice.com/payments/cancel
        type: "POST",
        contentType : 'application/x-www-form-urlencoded; charset = utf-8',
        data : {
          "orderNum": orderNum, // 예: ORD20180131-0000011
          "payAmount": 100, // 환불금액
        //   "refund_holder": "홍길동", // [가상계좌 환불시 필수입력] 환불 수령계좌 예금주
        //   "refund_bank": "88" // [가상계좌 환불시 필수입력] 환불 수령계좌 은행코드(예: KG이니시스의 경우 신한은행은 88번)
            }
        }).done(function(result){ //환불 성공
           console.log("환불 성공 : "+ result);
       }).fail(function(error){
           console.log("환불 실패 : "+ error);
       })
    
}



   
























// const iamportPayment = document.querySelector("#iamportPayment")

// $(document).ready(function(){ 
// 	$("#iamportPayment").click(function(){ 
//     	payment(); //버튼 클릭하면 호출 
//     }); 
// })

// //버튼 클릭하면 실행
// function payment() {

//     // var postalcode = '';
//     var uid = '';
//     IMP.init('imp10453708');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
//     IMP.request_pay({// param
//         pg: "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
//         pay_method: "card", //지불 방법
//         merchant_uid: "mechant_"+new Date().getTime(), //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력)
//         name: "구디스터디카페", //결제창에 노출될 상품명
//         amount: 100, //금액
//         buyer_email : "testiamport@naver.com", 
//         buyer_name : "홍길동10",
//         buyer_tel : "01012145178",
//     }, function (rsp) { // callback
//         if (rsp.success) {
//             var msg = '결제가 완료되었습니다';
// 					var result = {
//                     "productNum" : 54,
// 					"num" : 44,
// 					"orderDate" : new Date().getTime(),
// 					"totalPrice" : rsp.paid_amount,
// 					"imp_uid" : rsp.imp_uid
// 					}
// 					console.log("결제성공 " + msg);
// 					$.ajax({
//                         url : '/order/complete', 
// 				        type :'POST',
// 				        data : JSON.stringify(result,
// 				        		["productNum",
//                                 "num",
//                                 "orderDate",
//                                 "totalPrice",
//                                 "imp_uid"]),
// 				        contentType:'application/json;charset=utf-8',
// 				        dataType: 'json', //서버에서 보내줄 데이터 타입
// 				        success: function(res){
				        			        	
// 				          if(res == 1){
// 							 console.log("추가성공");	
//                              createPayInfo(uid);
// 				          }else{
// 				             console.log("Insert Fail!!!");
// 				          }
// 				        },
// 				        error:function(){
// 				          console.log("Insert ajax 통신 실패!!!");
// 				        }
// 					}) //ajax
					
// 				}
// 				else{//결제 실패시
// 					var msg = '결제에 실패했습니다';
// 					msg += '에러 : ' + rsp.error_msg
// 				}
// 	});//pay
// }
    
// function createPayInfo(uid) {
//     // 결제정보 생성 및 테이블 저장 후 결제완료 페이지로 이동 
//     $.ajax({
//         type: 'get',
//         url: '/order/complete',
//         data: {
//             'orderNum': uid,
//         },
//         success: function(data) {
//             alert('결제가 완료 되었습니다.');
//             // 결제완료 페이지로 이동
//             location.replace('/order/complete?pay_num='+data);
//         },
//         error: function() {
//             alert('결제정보 저장 통신 실패');
//         }
//     });
// }

