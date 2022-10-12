<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문정보 확인 페이지</title>
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
					<img src="/resources/img/${orderDTO.img}" width="700px" height="400px" style="
					width: 732px;
				">
                                            
                    <div class="col-lg-6 mt-5" style="width: 562px; padding-left: 0px; padding-right: 0px;">
                        <h4>주문자 정보</h4>
                        <div class="row">
                            
                            <div class="col-lg-12">
                                <label for="fir" id="userName">${orderDTO.userName}</label>
                            </div>
                            <div class="col-lg-12">
                                <label for="cun-name" id="phone">${orderDTO.phone} 
                               </label>
                                <input type="hidden" value="${userVO.user_phone }" id="phone1">
                            </div>
                            <div class="col-lg-12">
                                <label for="cun" id="email">${orderDTO.email}</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mt-5" >
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
                                                    <tr>	
														<input type="hidden" id ="timeLength" value="${orderDTO.timeLength}">
														<input type="hidden" id = "reserNum" value="${orderDTO.reserNum}">
                                                        <input type="hidden" id = "detailNum" value="${orderDTO.detailNum}">
                                                        
														<td id ="scName">${orderDTO.scName}</td>
                                                        <td>${orderDTO.roomName}</td>
                                                        <td id ="totalPrice">${orderDTO.totalPrice}</td>
                                                        <td>${orderDTO.seDate}</td>
                                                        <td>${orderDTO.seTime}</td>
                                                    </tr> 
                                        </table>
                                        <div>
                                         
                                        </div>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row text-center">
                    <div class="col-lg-12" style="width: 100%;">
                        <div class="order-btn mt-5" style="
                        margin-bottom: 48px;
                    ">
                            <button type="submit" class="site-btn place-btn" id="dateAdmin" style="padding-top: 3px; padding-bottom: 3px;">예약 변경하기</button>
							<button type="submit" class="site-btn place-btn" onclick="location.href='/order/myOrderList'" style="padding-top: 3px; padding-bottom: 3px;">돌아가기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<c:import url="../template/footer.jsp"></c:import>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

	<script src="/resources/js/completeDetail.js">

	</script>

    
    <script src="/resources/js/common.js">

    </script>
</body>
</html>