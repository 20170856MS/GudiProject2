<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/theme.css" rel="stylesheet" />
<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="/resources/css/order.css?after22">    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        body, h1, h2, h3, h4, h5, h6, p, span {
    	    font-family: 'Noto Sans KR', sans-serif !important;
        }
    </style>
</head>
<body>
	
    <c:import url="../template/header.jsp"></c:import>

    <section class="checkout-section spad mt-5">
		<div class="container">
			<form action="/UnoMas/order/purchase" class="checkout-form">
				<div class="row">
					<div class="col-lg-12">
						<h4>${check.userName}님의 결제가 완료되었습니다!</h4>    
             
                            <div class="row pl-3">
							<div class="col-lg-1">
								<label for="fir">주문일자</label>
							</div>
							<div class="col-lg-11 text-left">
								<label><strong><fmt:formatDate value="${payDTO.payDate}" type="date"/></strong></label>
							</div>
						</div>
						<div class="row pl-3">
							<div class="col-lg-1">
								<label for="cun-name">주문번호</label>
							</div>
							<div class="col-lg-11 text-left">
								<label><strong>${payDTO.orderNum}</strong></label>
							</div>
						</div>
						<br><hr><br>
	
						<div class="row">
							<div class="col-lg-12">
								<table cellspacing="0" border="1" class="orderTable mgt">
									<colgroup>
										<col width="">
										<col width="150">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">스터디카페 정보</th>
											<th scope="col">상품금액(시간)</th>
										</tr>
									</thead>
									<tbody>
									    
											<tr class="group">
												<td class="product">
													<div class="row">
														<div class="col-lg-2 text-center">
															<div class="img_center">
															    <img src="/resources/img/${payDTO.img}" width="120px" height="120px" style="
																margin-top: 0px;
															"></a>
																<!--N=a:odd.product-->
															</div>
														</div>
														<div class="col-lg-10 align-self-center">
															<a onclick="location.href='/studyCafe/cafeDetail?scName=${payDTO.payName}'"
																>${payDTO.payName}</a>
															<!--N=a:odd.product-->
														</div>
													</div>
												</td>
												<fmt:parseNumber var="percent" value="${payDTO.payAmount/20000}" integerOnly="true" />
												<td class="money"><strong><fmt:formatNumber value="${payDTO.payAmount}" type="number"/></strong>원<br>/<span>${percent}(시간)</span>
													
											</tr>
									   
									</tbody>
								</table>
								<br><br>
							</div>
							<br>
							<br>
						</div>
						<br>
						<hr>
						<br>
						<h4>주문/결제 금액 정보</h4>
						<div class="row">
						    <div class="col-lg-6">
						        <div class="row">
									<div class="col-lg-12">
										<div class="pl-3 row">
											<div class="col-lg-3">
												<label>상품금액</label>
											</div>
											<div class="col-lg-5 text-right">
											    <strong id="total"><fmt:formatNumber value="${payDTO.payAmount}" type="number"/></strong> 원
											</div>
										</div>
									</div>
									
									<div class="col-lg-12">
										<div class="pl-3 row">
											<div class="col-lg-3">
												<label>적립금 사용</label>
											</div>
											<div class="col-lg-5 text-right">
											    <strong id="point">-<fmt:formatNumber value="${payVO.pay_point }" type="number"/></strong> 원
											</div>
										</div>
									</div>
						        </div>
						    </div>
						    <div class="col-lg-6">
						        <div class="row">
						            <div class="col-lg-3">
						                <label>결제정보</label>
						            </div>
						            <div class="col-lg-5 text-right">
						                <strong>${payDTO.payMethod} 결제!!</strong>
						            </div>
						        </div>
						        <div class="row">
						            <div class="col-lg-8 text-right">
						                <label>${payVO.pay_card_num } - 
						                <c:if test="${payVO.pay_installment == 0 }">일시불</c:if>
						                <c:if test="${payVO.pay_installment > 0 }">${payVO.pay_installment }개월</c:if>    
						            </label>
						            </div>
						        </div>
						        <div class="row">
						            <div class="col-lg-3">
						                <label>결제금액</label>
						            </div>
						            <div class="col-lg-5 text-right">
						                <strong id="orderTotal"><fmt:formatNumber value="${payDTO.payAmount}" type="number"/></strong> 원
						            </div>
						        </div>
						    </div>
						</div>
						<br>
						<hr>
						<br>
					</div>
				</div>
				<br>
				<div class="row text-center">
					<div class="col-lg-12 mt-5">
					    <button type="button" class="site-btn" onclick="location.href='/';">홈</button>
						<button type="button" class="site-btn" onclick="location.href='/member/myPage';">마이페이지</button>
					</div>
				</div>
			</form>
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