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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<link rel="stylesheet" href="/resources/css/myOrderList.css">
<link rel="stylesheet" href="/resources/css/store.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="/resources/css/paging.css">

</head>
<body>
	
    <c:import url="../template/header.jsp"></c:import>

	<section class="checkout-section spad mt-5">
		<div class="container">
            <c:choose> 
                <c:when test="${empty requestScope.list}">
                    <p colspan="4" class="likeNull">관심있는 자격증이 없습니다.</p>
                </c:when>
                <c:otherwise>
                    <div class="cards">
                        <c:forEach items="${requestScope.list}" var="dto">
                            
                            <div class="card" >
                                <div class="user-wrap">
                                    <img src="https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg" class="card-img-top" alt="...">
                                    <div class="user-text">조회수 ${dto.licenseHits}</div>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">${dto.licenseName}</h5>
                                    <p class="card-text schedule" data-license-num="${dto.licenseNum}"></p>                        
                                    <div class="detail">
                                        <a href="/info/detail?licenseNum=${dto.licenseNum}" class="btn btn-primary">자격증 상세 보기</a>
                                        <a href="#" class="btn btn-primary cancel" data-license-num="${dto.licenseNum}">관심등록 해제</a>
                                    </div>
                                    <div class="user-schedule">
                                        
                                    </div>
                                </div>
                            </div><br>
                        </c:forEach> 
                    </div>
                </c:otherwise>
            </c:choose>
				
		</div>
	</section>

<c:import url="../template/footer.jsp"></c:import>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/js/store.js"></script>
    <script src="/resources/js/common.js"></script>
</body>
</html>