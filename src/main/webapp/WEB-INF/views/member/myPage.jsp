<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/theme.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="/resources/css/myPage.css" type="text/css">
</head>
<style>
    .align-center {text-align: center;}
</style>
<body>


	<c:import url="../template/header.jsp"></c:import>
	
	<section>
		<div class="row">
			<main>
				<div class="container">
					
					
		    	<div class="grid_box">
					<div>
						<h1> 등급 : ${check.adminRoleDTOs["0"].roleName}</h1>
					</div>
		    		<div class="login_box">
	    				 <!-- <c:if test="${empty SPRING_SECURITY_CONTEXT }">
	                         <a href="/login"><span>로그인을 해주세요</span></a>
	                    </c:if> -->
	                    
	                    <h1>마이페이지</h1>
	                    <c:if test="${empty SPRING_SECURITY_CONTEXT }">
                            <c:set var="name1" value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }" />
	                        <a href="/user/myInfo"><span class="name1" data-nickname=${name} >${dto.name}</span></a>
							
							<button type="button" class="logout">로그아웃</button>
	                    </c:if>
		    		</div>
		    		
		    		
		    		<div>
		    			<a href="/user/point" onclick="return loginCheck();">
	                       	<span class="img_box">
	                       		<img src="/resources/img/icon11.png" alt="포인트">
	                       	</span>
	                       	<span>포인트</span>
	                  	</a>
		    		</div>
		    		
		    		
		    		
		    		<div>
						<a href="/likes/store">
							<span class="img_box">
								<img src="/resources/img/icon44.png" alt="관심있는 자격증">
							</span>
							<span>관심있는 자격증</span>
						</a>
		    		</div>
		    		
		    		
		    		<div>
						<a href="../order/myOrderList">
							<span class="img_box">
								<img src="/resources/img/icon55.png" alt="주문내역">
							</span>
							<span>스터디카페 주문내역</span>
						</a>
		    		</div>
		    		
		    		
		    		
		    		
		    	</div>
	    		
	    	</div>
	    </main>
	    
    </div>
    
    <!-- 콘텐츠 -->
	
	
	
	</div>
	
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/common.js">

</script> 
</body>
</html>