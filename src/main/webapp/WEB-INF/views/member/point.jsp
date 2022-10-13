<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/theme.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="/resources/css/myPage.css" type="text/css">
    
	<link rel="stylesheet" href="/resources/css/point.css" type="text/css">
	    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        body, h1, h2, h3, h4, h5, h6, p, span {
    	    font-family: 'Noto Sans KR', sans-serif !important;
        }
    </style>
</head>
<style>
    .align-center {text-align: center;}
</style>
<body>


	<c:import url="../template/header.jsp"></c:import>
	
	<section class="container-fluid col-lg-8">
		<div class="row">
            
            <main>
                <div class="my_point">
                    <div>
                        <span>보유 포인트</span>
                        <span id="my_point" data-point="${point }"><fm:formatNumber value="${point }" /></span>
                    </div>
                    
                    <div class="point_regi">
                        <div>
                            <button>상품권 등록하기</button>
                        </div>
                        
                        <div class="point_number_area">
                            <div>
                                <input type="text" class="point_number" maxlength="20" name="giftCardNum" placeholder="상품권 번호를 입력해주세요">
                                <input type="button" value="등록">
                            </div>
                        </div>
                    </div>
                
                
                </div>
                
                <h2>포인트 이용 내역</h2><hr>
                <ul class="point_his">
                    <c:forEach items="${myPoint }" var="myPoint">
                        <li>
                            <div>
                                <div>${myPoint.info }</div>
                                <div><fm:formatDate value="${myPoint.usedDate }" pattern="yyyy.MM.dd" /> </div>
                            </div>
            
                            <div>
                                <c:if test="${myPoint.point > 0 }">
                                    <div class="plus"><fm:formatNumber value="${myPoint.point }" pattern="###,###"/></div>
                                </c:if>
                                
                                <c:if test="${myPoint.point < 0 }">
                                    <div class="used"><fm:formatNumber value="${myPoint.point }" pattern="###,###"/></div>
                                </c:if>
                                
                            </div>
                        </li><hr>
            
                    </c:forEach>
                    
                </ul>
            </main>
	
	
	</div>
	
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/common.js">

</script> 
</body>
</html>