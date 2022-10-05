const iamportPayment = document.querySelector("#iamportPayment")
const orderCode = document.querySelector("orderCode")

$(document).ready(function(){ 
    
    
	$("#iamportPayment").click(function(){ 
    	requestPay(); //버튼 클릭하면 호출 
    
    }); 
})


function requestPay() {
    // IMP.request_pay(param, callback) 결제창 호출
    var uid = '';
    IMP.init('imp10453708');
    IMP.request_pay({ // param
        pg: "html5_inicis",
        pay_method: "card",
        merchant_uid: createOrderNum(), //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력)
        name: "구디스터디카페", //결제창에 노출될 상품명
        amount: 100, //금액
        buyer_email : "testiamport@naver.com", 
        buyer_name : "홍길동10",
        buyer_tel : "01012145178",
    }, function (rsp) { // callback
        if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
            uid = rsp.imp_uid;
            // 결제검증
            $.ajax({
                url: '/order/verify_iamport/' + rsp.imp_uid,
                type: 'post'
            }).done(function(data) {
                // 결제를 요청했던 금액과 실제 결제된 금액이 같으면 해당 주문건의 결제가 정상적으로 완료된 것으로 간주한다.
                if (100 == data.response.amount) {
                    // jQuery로 HTTP 요청
                    // 주문정보 생성 및 테이블에 저장 
                    // @@ 주문정보는 상품 개수만큼 생성되어야 해서 상품 개수만큼 반복문을 돌린다
                    // 이때 order code는 모두 같아야 한다.
                    console.log("지금 1")             
		        	
                        // 데이터를 json으로 보내기 위해 바꿔준다.
                        data = JSON.stringify({
                            "orderNum" :  rsp.merchant_uid,
                            "productNum" : 54, //상품번호
                            "num" : 44, // 회원번호
                            "productName" : rsp.name,
                            "orderDate" : new Date().getTime(),
                            "totalPrice" : rsp.paid_amount,
                            "imp_uid" : rsp.imp_uid
                        });
					
                        jQuery.ajax({
                            url: "/order/complete", // 예: https://www.myservice.com/payments/complete
                            type: "POST",
                            dataType: 'json',
                            contentType: 'application/json',
                            data : data
                        })
                        .done(function(res) {
                            console.log(data)
                            console.log(data.orderNum)
                            console.log(res)
                            if (res > 0) {
                                console.log(res);
                                swal('주문정보 저장 성공')
                                createPayInfo(uid);
                            }
                            else {
                                console.log(data);
                                swal('주문정보 저장 실패');
                            }
                        })
                }
                else {
                    alert('결제 실패');
                }
            })
            } else {
                swal("결제에 실패하였습니다.","에러 내용: " +  rsp.error_msg,"error");
            }
        });
}

function createPayInfo(uid) {
    // 결제정보 생성 및 테이블 저장 후 결제완료 페이지로 이동 
    console.log("시작");
    $.ajax({
        type: 'get',
        url: '/order/pay_info',
        data: {
            'imp_uid': uid,
        },
        success: function(data) {
            
            swal('결제 성공 !',"결제완료 페이지로 이동합니다.","success").then(function(){
                
                // 결제완료 페이지로 이동
                location.replace('/order/complete?payNum='+data);

            })
        },
        error: function() {
            swal('결제정보 저장 통신 실패');
        }
    });
}

// 주문번호 만들기
function createOrderNum(){
	const date = new Date();
	const year = date.getFullYear();
	const month = String(date.getMonth() + 1).padStart(2, "0");
	const day = String(date.getDate()).padStart(2, "0");
	
	let orderNum = year + month + day;
	for(let i=0;i<10;i++) {
		orderNum += Math.floor(Math.random() * 8);	
	}
	return orderNum;
}