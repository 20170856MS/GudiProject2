<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>	
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    
	<link rel="stylesheet" href="/resources/css/login.css" type="text/css">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link href="/resources/css/theme.css" rel="stylesheet" />	 
    <link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
</head>
<style>
    .align-center {text-align: center;}
</style>
<body>

	
	<c:import url="../template/header.jsp"></c:import>
	
	<section class="container-fluid col-lg-4 mt-5">
		<div class="row">
		 		<main>
        <div class="login_box">
			<a href="/"><img src="/resources/img/team_login.png" width="30px"  alt="이미지" class="bm_img"></a>    
            <div><h4>자바스 사이트에 오신 것을 환영합니다.</h4></div>
            <form action="login" method="post" id="frm">
 
	            <div class="input_aera"><input type="text" id= "userName" name="userName"  value="" required placeholder="아이디를 입력해 주세요" maxlength="30" ></div>
	            <div class="input_aera"><input type="password" id="password" name="password" value="" required placeholder="비밀번호를 입력해 주세요" maxlength="30"></div>
 
				<input type="button" value="로그인" id="btn" >
            
				<div class="box">	
		            <div>
		            	<span class="id_search"><a href="/find/id">아이디</a></span>
			            <span> ㅣ </span>
			            <span><a href="/find/password">비밀번호 찾기</a></span>
		            </div>
	            </div>
            </form>
            
			<div id="oauth_login">
				<div>
					<a href="./oauth2/authorization/kakao"></a>
				</div>

				<div>
					<a href="./oauth2/authorization/naver"></a>
				</div>
			
			</div>
			
			<div class="join"><a href="join0" >회원 가입하러 가기</a></div>
        </div>
    </main>
	

		
				
		</div>
	
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/member.js">

</script>

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="/resources/js/common.js">

</script> 

</body>
</html>