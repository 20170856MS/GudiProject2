<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="/resources/css/order.css?after22">
</head>
<body>
	
    <c:import url="../template/header.jsp"></c:import>

    <section class="checkout-section spad mt-5">
        <div class="container">
            <div class="checkout-form">
                <input type="hidden" value="${order_code }" id="orderCode">
                <input type="hidden" value="${sessionScope.saveNUM }" id="userNum">
                <input type="hidden" value="${fn:length(orderList) }" id="prodCnt">
                <div class="row">
                    <div class="col-lg-6">
                        <h4>주문자 정보</h4>
                        <div class="row">
                            <div class="col-lg-12">
                                <label for="fir" id="userName">${session.userName}</label>
                            </div>
                            <div class="col-lg-12">
                                <label for="cun-name">${fn:substring(userVO.user_phone, 0, 3) } 
                                - ${fn:substring(userVO.user_phone, 3, 7) } 
                                - ${fn:substring(userVO.user_phone, 7, 11) }</label>
                                <input type="hidden" value="${userVO.user_phone }" id="userPhone">
                            </div>
                            <div class="col-lg-12">
                                <label for="cun" id="userEmail">${userVO.user_email }</label>
                            </div>
                        </div>
                        <br><hr><br>
                        <h4>할인</h4>
                        <div class="row">
                            <div class="col-lg-12">
                                <p class="pointTitle">적립금 사용</p>
                                <div class="pl-3 row">
                                    <div class="col-lg-2">
	                                    <label>보유</label>
                                    </div>
                                    <div class="col-lg-10">
                                        <div class="row">
                                            <div class="col-lg-5 px-0">
			                                    <input type="text" value="${userVO.user_point }" id="curPoint" readonly>
                                            </div>
                                            <div class="col-lg-1">원</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="pl-3 row">
                                    <div class="col-lg-2">
	                                    <label>사용</label>
                                    </div>
                                    <div class="col-lg-10">
                                        <div class="row">
                                            <div class="col-lg-5 px-0">
			                                    <input type="text" value="0" id="usingPoint">
                                            </div>
                                            <div class="col-lg-1">원</div>
                                            <div class="col-lg-6 px-0">
                                                <!-- @@ 체크시 전액사용하면서 회원 상태 true로 변경
                                                	체크 해제시 사용량은 그대로 두는데 회원 상태만 false로 변경 -->
                                                	<button type="button" class="site-btn deliverListBtn postalBtn"
                                                 onclick="useAllPoints();">전액사용</button>
                                                <input type="checkbox" name="useAllCheckBox">항상 전액사용
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br><hr><br>
                        <h4>결제수단</h4>
                        <div class="row">
                            <div class="col-lg-12">
                                <input type="radio" name="purchaseMethod" value="1" checked><label>신용카드</label>
                                <!-- <input type="radio" name="purchaseMethod" value="2"><label>무통장입금</label> -->
                            </div>
                        </div>
                        <div class="row" id="method_creditCard">
	                        <div class="col-lg-12">
	                            <div class="row pl-4 pt-3">
	                                <div class="col-lg-3 pb-2">
	                                    <label>카드구분</label>
	                                </div>
	                                <div class="col-lg-9">
	                                    <input type="radio" name="creditCard" value="1" checked><label>개인카드</label>
	                                    <input type="radio" name="creditCard" value="2"><label>법인카드</label>
	                                </div>
	                                <div class="col-lg-3 pb-2">
	                                    <label>카드선택</label>
	                                </div>
	                                <div class="col-lg-9">
	                                    <select class="selectBox" name="cardSelect" id="cardSelect">
	                                        <option id="first">선택해주세요.</option>
	                                        <option>KB Pay (국민)</option>
	                                        <option>비씨</option>
	                                        <option>신한</option>
	                                        <option>현대</option>
	                                        <option>삼성</option>
	                                        <option>롯데</option>
	                                        <option>외환</option>
	                                        <option>NH</option>
	                                        <option>하나</option>
	                                        <option>씨티</option>
	                                    </select>
	                                </div>
	                                <div class="col-lg-3 pb-2">
	                                    <label>할부기간</label>
	                                </div>
	                                <div class="col-lg-9">
	                                    <select class="selectBox" id="divMonth">
	                                        <option>일시불</option>
	                                        <%for (int i = 2; i <= 12; i++) { %>
	                                            <option><%=i %> 개월</option>	                                            
	                                        <% } %>
	                                    </select>
	                                </div>
	                            </div>
	                        </div>
                        </div>
                        <div class="row" id="method_bankAccount">
                            <div class="col-lg-12">
	                            <div class="row pl-4 pt-3">
	                                <div class="col-lg-3 pb-2">
	                                    <label>은행</label>
	                                </div>
	                                <div class="col-lg-9">
	                                    <select class="selectBox">
	                                        <option>선택해주세요.</option>
	                                        <option>국민</option>
	                                        <option>비씨</option>
	                                        <option>신한</option>
	                                        <option>현대</option>
	                                        <option>삼성</option>
	                                        <option>롯데</option>
	                                        <option>외환</option>
	                                        <option>NH</option>
	                                        <option>하나</option>
	                                        <option>씨티</option>
	                                    </select>
	                                </div>
	                                <div class="col-lg-3 pb-2">
	                                    <label>계좌번호</label>
	                                </div>
	                                <div class="col-lg-9">
	                                    <input type="text" id="account" placeholder="'-' 제외한 숫자만 입력해 주세요.">
	                                </div>
	                            </div>
	                        </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="place-order">
                            <h4>상품 정보</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                    <li>상품 <span>상품금액</span></li>
                                    <!-- @@ 장바구니 목록 배열 사이즈만큼 출력하기 @@ -->
                                    <!-- @@ 장바구니 목록 로드시 model에 배열 길이 정보 저장해서 자바스크립트에서 읽어오기 @@ -->
                                    <c:forEach var="prod" items="${orderList }" varStatus="i">
	                                    <li class="fw-normal">${prod.prod_name } X ${prod.prod_amount }
	                                        <span id="prodPrice${i.index }">
	                                        <c:set var="prodPrice" value="${prod.prod_price * prod.prod_amount }"/>
	                                        <fmt:formatNumber value="${prodPrice }" type="number"/>원</span>
	                                        <input type="hidden" value="${prod.prod_name }" id="prodName${i.index }">
	                                        <input type="hidden" value="${prod.prod_num }" id="prodNum${i.index }">
	                                        <input type="hidden" value="${prod.prod_amount }" id="prodQuantity${i.index }">
	                                        <input type="hidden" value="${prodPrice }" name="order_total" id="orderTotal${i.index }">
	                                        <input type="hidden" value="${prod.cart_num }" name="cart_num" id="cartNum${i.index }">
	                                    </li>
                                    </c:forEach>
                                    <li class="total-price">배송비 <span id="deliveryFee">${shippingFee }원</span>
                                        <input type="hidden" value="${shippingFee }" name="shippingFee" id="shippingFee">
                                    </li>
                                    <li class="total-price">합계 <span id="totalPrice"><fmt:formatNumber value="${total }" type="number"/>원</span>
                                        <input type="hidden" value="${total }" name="total" id="total">
                                    </li>
                                    <li class="total-price">적립혜택 <span id="point">
                                        <c:set var="userPoint" value="${total * 0.05 }"/>
                                        <fmt:formatNumber value="${total * 0.05 }" maxFractionDigits="0" type="number"/>원</span>
                                        <input type="hidden" value="${userPoint }" id="userPoint">    
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row text-center">
                    <div class="col-lg-12">
                        <div class="order-btn mt-5">
                            <button type="submit" class="site-btn place-btn" onclick="checkCard();">결제하기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<c:import url="../template/footer.jsp"></c:import>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

    <script src="/resources/js/admin.js">
        
    </script>
    <script src="/resources/js/common.js">

    </script>
</body>
</html>