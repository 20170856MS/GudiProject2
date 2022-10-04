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
<title>마이페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/theme.css" rel="stylesheet" />
<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="/resources/css/myOrderList.css">
<link rel="stylesheet" href="/resources/css/paging.css">

</head>
<body>
	
    <c:import url="../template/header.jsp"></c:import>

	<section class="checkout-section spad mt-5">
		<div class="container">
			<form class="checkout-form">
				<div class="row">
					<div class="col-lg-12">
					
					<h3>${check.userName}님의 전체 주문 내역</h3>
		
					<div class="point_list_box">
					  
						<table class="point_table">
							<colgroup>
							  <col style="width: 15%"><col style="width: 55%;"><col style="width: 15%"><col style="width: 15%">
							</colgroup>
							<tr class="table_top_tr">
								<th>주문일/주문번호</th><th>상품정보</th><th>상태</th><th>신청</th>
							</tr>
							
							<tbody>	
							<c:choose> 
								<c:when test="${empty orderMap }">
									<td colspan="4" class="null_text">상품 문의 내역이 없습니다.</td>
								</c:when>
								<c:otherwise>
									<c:forEach var="map" items="${orderMap}" varStatus="it">
										<c:set var="index" value="${it.index}" />
										<fmt:formatDate var="regdate" value="${map.value[0].orderDate}" pattern="yyyy-MM-dd" />
										<tr>
											<td class="order_num_td">${regdate}<br>
													( ${map.key} )<br>
													<a href="/UnoMas/order/order_detail?code=${map.key }&pagingNum=${pagingNum }" class="table_btn">주문 상세보기</a>
											</td>
											<c:forEach var="val" items="${map.value}" varStatus="itt">
												<td class="order_info_td">
													<img src="/resources/img/cafeimg1.jpg" width="50"> 
													<div>
														<a href="/UnoMas/product/product_detail?prod_num=${val.productNum }"> ${val.productName } </a>
														<hr>
														<span>${val.totalPrice }원</span> 
													 </div>
												</td>
												<td >
													<button type="button" id = "payMentChange"  class="site-btn mb-2" >예약변경</button> <br> 
													<button type="button" id = "payMentCancel" order-num="${val.orderNum}" class="site-btn" >주문취소</button><br> 
												</td>
					
											</c:forEach>
											
										</tr>
										</c:forEach>
									
								  </c:otherwise>
								</c:choose>
								</tbody>
							</table>
								
							<div class="paging_container">
								<c:if test="${pm.prev }">
									<a href="myOrderList?pagingNum=${pm.startPage - 1}" class="paging_a">이전</a>
								</c:if>
				
								<c:forEach var="block" varStatus="pg" begin="${pm.startPage }" end="${pm.endPage }" step="1">
									<c:choose>
										<c:when test="${pg.index == pagingNum }">
											<a href="myOrderList?pagingNum=${pg.index }" class="paging_num_yes">${pg.index }</a>
										</c:when>
										<c:otherwise>
											<a href="myOrderList?pagingNum=${pg.index }" class="paging_num">${pg.index }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
				
								<c:if test="${pm.next }">
									<a href="myOrderList?pagingNum=${pm.endPage + 1}" class="paging_a">다음</a>
								</c:if>
							</div>
					
					</div>
		
					
		
					</div>
				</div>
				  <!-- 리뷰 페이지 끝 -->
			  
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