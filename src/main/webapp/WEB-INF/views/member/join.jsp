<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/theme.css" rel="stylesheet" />   
    <link rel="stylesheet" href="/resources/css/sub.css" >
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link href="/resources/css/login.css" rel="stylesheet">
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>    
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

		<section class="container-fluid col-lg-4 mt-5">
			<div class="row">
			<div class="login_box">
				
				<div><h4>자바스 자격증 사이트에 오신것을 환영합니다.</h4></div>
				<main>
				<form class="align-center" action="join" method="post" id="frm3">
					<c:choose>
						<c:when test="${not empty sessionConfigVO}">
							<div class="input_aera">
								<select class="form-select" name="areaName" id="areaName">
									<option>지역선택</option>
									<option>서울시 강남구</option>
									<option>서울시 강동구</option>
									<option>서울시 강북구</option>
									<option>서울시 강서구</option>
									<option>서울시 관악구</option>
									<option>서울시 광진구</option>
									<option>서울시 금천구</option>
								</select>
			
							</div> 
							<div class="input_aera">
							
								<input type="text" name="userName" id="userName" maxlength="20"  placeholder="아이디를 입력해 주세요" >
								
							</div>          
							
							<div class="input_aera">
								<input type="password" id="password" name="password" maxlength="20"  placeholder="비밀번호를 입력해 주세요">
								<div id ="password_check1"></div>
							</div>
						
							<div class="input_aera">
								<input type="password" id="password_check" maxlength="20"  placeholder="비밀번호를 한번더 입력해 주세요">
								<div id="password_check2"></div>
								
							</div>
							
							<div class="input_aera">
							
								
								<input type="text" id="name1" name="name" maxlength="20"  value="${sessionConfigVO.name}" placeholder="사용하실 닉네임을 입력해 주세요">
								
							</div>
							
							<div class="input_aera">
							
								
								<input type="text" name="email" id="email" value="${sessionConfigVO.email}" placeholder="이메일을 입력해 주세요" >
								
							</div>
							
							
							<div class="input_aera">
								<input type="text" name="phone" id="phone" placeholder="'-' 까지 입력해 주세요" maxlength="11" >
								
							</div>
						</c:when>
						<c:otherwise>
						<div class="input_aera">
								<select class="form-select" name="areaName" id="areaName">
									<option>지역선택</option>
									<option>서울시 강남구</option>
									<option>서울시 강동구</option>
									<option>서울시 강북구</option>
									<option>서울시 강서구</option>
									<option>서울시 관악구</option>
									<option>서울시 광진구</option>
									<option>서울시 금천구</option>
								</select>
			
						</div>  
					
						<div class="input_aera">
							
							<input type="text" name="userName" id="userName" maxlength="20"  placeholder="아이디를 입력해 주세요" >
							
						</div>          
						
						<div class="input_aera">
							<input type="password" id="password" name="password" maxlength="20"  placeholder="비밀번호를 입력해 주세요">
							<div id ="password_check1"></div>
						</div>
					
						<div class="input_aera">
							<input type="password" id="password_check" maxlength="20"  placeholder="비밀번호를 한번더 입력해 주세요">
							<div id="password_check2"></div>
							
						</div>
						
						<div class="input_aera">
						
							
							<input type="text" id="name1" name="name" maxlength="20"  placeholder="사용하실 닉네임을 입력해 주세요">
							
						</div>
						
						<div class="input_aera">
						
							
							<input type="text" name="email" id="email"  placeholder="이메일을 입력해 주세요" >
							
						</div>
						
						
						<div class="input_aera">
							<input type="text" name="phone" id="phone" placeholder="'-' 까지 입력해 주세요" maxlength="13" >
							
						</div>
					</c:otherwise>
					
					</c:choose>
	                
	               <input type="button" value="회원가입" id="join1" class="login_btn" >
			</form>
			  </main>	
        </div>
 
  	
		
					

		</div>
			</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/join.js">
</script> 
<script src="/resources/js/util.js"></script>
<script src="/resources/js/common.js">

</script> 

</body>
</html>