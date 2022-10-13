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
<link href="/resources/css/common.css" rel="stylesheet" >
<link href="/resources/css/theme.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/resources/css/myInfo.css" >
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
	
		<div class="wrap ">
	
			<h2 class="mymy">내 정보 수정</h2>
			
			<main>
				<div class="info_box">
					
					<h2>아이디 : ${check.userName}</h2>
					<div hidden id="user_name" userName="${check.userName}">${check.userName}</div>		    	
					<hr>
					<h2>비밀번호</h2>
					
					<div>
						<div class="input_box">
							<div>
								<span>현재 비밀번호</span>
								<input class="present_password" type="password" placeholder="현재 비밀번호" >
							</div>
							
							<div>
								<span>신규 비밀번호</span>
								<input class="new_password" type="password" placeholder="신규 비밀번호" maxlength="20" >
							</div>
							
							<div>
								<span>비밀번호 확인</span>
								<input class="new_password_check" type="password" placeholder="신규 비밀번호 확인" maxlength="20" >
							</div>
						</div>		
						<div class="btn_box">
							<button type="button" class="pwd_modify">변경</button>
						</div>
					</div>
					<hr>
				
					<h2>닉네임 변경</h2>
				
						<div>
							<div class="input_box">
								<input type="text" class="nickname" name="nickname"  value=""  required placeholder="변경하실 닉네임을 입력해 주세요">
							</div>
							<div class="nickname_check"></div>
							<div class="btn_box">
								<button type="button" class="nickname_modify">수정</button>
							</div>
						</div>
						<hr>
						
						
						<h2>휴대폰 번호 변경</h2>
							<div>
								<div class="input_box">
									<div>
										<input type="text" class="phone" name="phone" required placeholder="전화번호를 입력해 주세요" onkeypress="return lenthCheck(this, 13)"  >
									</div>
									
									<div class="auth_num_box">
										<input type="text" class="phone_auth_num" name="authNum" required placeholder="인증번호 입력">
										
										<span class="timer_box">
											<span>남은시간</span>
											<span class="timer"></span>
										</span>
									</div>
								</div>
								
								
			
								<div class="btn_box">
									<div>
										<button type="button" class="auth_num_send">인증번호 전송</button>
									</div>
									
									<div class="auth_num_box">
										<button type="button" class="phone_auth_btn">인증</button>
									</div>
								</div>
								
							</div>
						
						
						
					</div>
			</main>
		</div>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/common.js">

</script>
<script src="/resources/js/myInfo.js"></script> 
</body>
</html>