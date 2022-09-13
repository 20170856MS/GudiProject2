const iamportPayment = document.querySelector("#iamportPayment")

$(document).ready(function(){ 
	$("#iamportPayment").click(function(){ 
    	payment(); //버튼 클릭하면 호출 
    }); 
})
let count = 0;
//버튼 클릭하면 실행
function payment(data) {
    
    IMP.init('imp10453708');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
    IMP.request_pay({// param
        pg: "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
        pay_method: "card", //지불 방법
        merchant_uid: "iamport_license"+count, //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력)
        name: "옷", //결제창에 노출될 상품명
        amount: 20000, //금액
        buyer_email : "testiamport1@naver.com",  //회원 parameter
        buyer_name : "홍길동",
        buyer_tel : "01012341234"

    
    }, function (rsp) { // callback
        if (rsp.success) {
            count++;
            alert("완료 -> imp_uid : "+rsp.imp_uid+" / merchant_uid(orderKey) : " +rsp.merchant_uid);
        } else {
            count++;
            alert("실패 : 코드("+rsp.error_code+") / 메세지(" + rsp.error_msg + ")");
        }
    });
}
