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
<link href="/resources/css/theme.css" rel="stylesheet" />
<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="/resources/css/order.css">

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
</head>
<body>
	
    <c:import url="../template/header.jsp"></c:import>

    <section class="checkout-section spad mt-5" style="padding-top: 0px; padding-bottom: 0px; margin-top: 0px;">
        <div class="container">
            <div class="checkout-form">
                <input type="hidden" value="${orderNum}" id="orderCode">
                <input type="hidden" value="${saveNum}" id="userNum">
                <div class="row">
                    <div class="col-lg-6" style="width: 562px; padding-left: 0px; padding-right: 0px;">
                        <h4>주문자 정보</h4>
                        <div class="row">
                            
                            <div class="col-lg-12">
                                <label for="fir" id="userName">${check.userName}</label>
                            </div>
                            <div class="col-lg-12">
                                <label for="cun-name" id="phone">${check.phone} 
                               </label>
                                <input type="hidden" value="${userVO.user_phone }" id="phone1">
                            </div>
                            <div class="col-lg-12">
                                <label for="cun" id="email">${check.email}</label>
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
                        
                    <div class="col-lg-6">
                        <div class="place-order">
                            <h4>결제 정보</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                    <li>결제 금액</li>
                                    <!-- @@ 장바구니 목록 배열 사이즈만큼 출력하기 @@ -->
                                    <!-- @@ 장바구니 목록 로드시 model에 배열 길이 정보 저장해서 자바스크립트에서 읽어오기 @@ -->
                                    <c:forEach items="${list}" var="dto" varStatus="i">
	                                    
                                        <li class="total-price">합계 <span id="totalPrice"><fmt:formatNumber value="${dto.cdPay}" type="number"/>원</span>
                                            <input type="hidden" value="${total }" name="total" id="total">
                                        </li>
                                        <li class="total-price">적립혜택 <span id="point">
                                            <c:set var="userPoint" value="${total * 0.05 }"/>
                                            <fmt:formatNumber value="${total * 0.05 }" maxFractionDigits="0" type="number"/>원</span>
                                            <input type="hidden" value="${userPoint }" id="userPoint">    
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="col-lg-6">
                        <div class="place-order">
                            <h4>예약 정보</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                        <table class="point_table">
                                            <tr>
                                                <th scope="col">카페이름</th>
                                                <th scope="col">방이름</th>
                                                <th scope="col">가격</th>
                                                <th scope="col">날짜</th>
                                                <th scope="col">시간</th>
                                            </tr>
                                            <c:forEach items="${list}" var="dto">
                                                    <tr>		
                                                        <td id ="scName">${dto.scName}</td>
                                                        <td>${dto.roomName}</td>
                                                        <td id ="cdPay">${dto.cdPay}</td>
                                                        <td>${dto.seDate}</td>
                                                        <td>${dto.seTime}</td>
                                                        <td id="detailNum" hidden >${dto.detailNum}</td>
                                                    </tr> 
                                            </c:forEach>
                                        </table>
                                        <div>
                                            <c:forEach items="${list}" var="dto">
                                                <img src="/resources/img/${dto.img}" width="500px" height="400px" >
                                            </c:forEach>
                                        </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row text-center">
                    <div class="col-lg-12" style="width: 100%;">
                        <div class="order-btn mt-5">
                            <button type="submit" class="site-btn place-btn" id="cafePayment" style="padding-top: 3px; padding-bottom: 3px;">결제하기</button>
                        </div>
                    </div>
                </div>
                <div style="padding-left: 0px; padding-right: 0px;">
                    <button id="iamportPayment" type="submit">결제테스트</button> 
                </div>
            </div>
        </div>
    </section>

<c:import url="../template/footer.jsp"></c:import>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

    <script src="/resources/js/order.js">
        
    </script>
    <!-- 아임포트 -->
<script src ="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

    <script src="/resources/js/common.js">

    </script>
</body>
</html>