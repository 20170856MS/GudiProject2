const iamportPayment = document.querySelector("#iamportPayment")

$(document).ready(function(){ 
	$("#iamportPayment").click(function(){ 
    	payment(); //버튼 클릭하면 호출 
    }); 
})

//버튼 클릭하면 실행
function payment() {

    // var postalcode = '';
    var uid = '';
    IMP.init('imp10453708');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
    IMP.request_pay({// param
        pg: "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
        pay_method: "card", //지불 방법
        merchant_uid: "mechant_"+new Date().getTime(), //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력)
        name: "구디스터디카페", //결제창에 노출될 상품명
        amount: 100, //금액
        buyer_email : "testiamport@naver.com", 
        buyer_name : "홍길동10",
        buyer_tel : "01012145178",
    }, function (rsp) { // callback
        if (rsp.success) {
            var msg = '결제가 완료되었습니다';
					var result = {
                    "productNum" : 54,
					"num" : 44,
					"orderDate" : new Date().getTime(),
					"totalPrice" : rsp.paid_amount,
					"imp_uid" : rsp.imp_uid
					}
					console.log("결제성공 " + msg);
					$.ajax({
                        url : '/order/complete', 
				        type :'POST',
				        data : JSON.stringify(result,
				        		["productNum",
                                "num",
                                "orderDate",
                                "totalPrice",
                                "imp_uid"]),
				        contentType:'application/json;charset=utf-8',
				        dataType: 'json', //서버에서 보내줄 데이터 타입
				        success: function(res){
				        			        	
				          if(res == 1){
							 console.log("추가성공");	
                             createPayInfo(uid);
				          }else{
				             console.log("Insert Fail!!!");
				          }
				        },
				        error:function(){
				          console.log("Insert ajax 통신 실패!!!");
				        }
					}) //ajax
					
				}
				else{//결제 실패시
					var msg = '결제에 실패했습니다';
					msg += '에러 : ' + rsp.error_msg
				}
	});//pay
}
    
function createPayInfo(uid) {
    // 결제정보 생성 및 테이블 저장 후 결제완료 페이지로 이동 
    $.ajax({
        type: 'get',
        url: '/order/complete',
        data: {
            'orderNum': uid,
        },
        success: function(data) {
            alert('결제가 완료 되었습니다.');
            // 결제완료 페이지로 이동
            location.replace('/order/complete?pay_num='+data);
        },
        error: function() {
            alert('결제정보 저장 통신 실패');
        }
    });
}

