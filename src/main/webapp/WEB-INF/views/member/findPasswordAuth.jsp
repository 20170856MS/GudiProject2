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
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/find.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>


	<c:import url="../template/header.jsp"></c:import>
	<section class="container-fluid col-lg-4 mt-5">
			<div class="row">
				<main>
					<div class="find_info">
						
						<div class="find">
							<div id="find_by_email">
								<input type="radio" id="email" value="email" name="find">
								<label for="email">가입한 이메일로 찾기</label>
								
								<div class="auth">
									<input type="email" class="email" placeholder="이메일을 입력해주세요" maxlength="50">
									<button type="button" class="auth_num_send_email">인증번호받기</button>
									<input type="text" class="auth_num" name="authNum" readonly maxlength="6"  placeholder="인증번호6자리입력">
									<span class="timer"></span>
								</div>
							</div>
							
						</div>
							
						<button class="move_modify">다음</button>
					</div>
				</main>
		</div>
		</section>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/common.js">

</script>
<script src="/resources/js/findPasswordAuth.js"></script> 
</body>
</html>