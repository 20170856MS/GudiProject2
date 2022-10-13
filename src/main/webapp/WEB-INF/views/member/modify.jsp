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
				<main class="password_modify_page">
                    <div class="find_info">	
                        <h3>새로운 비밀번호로 재설정해주세요</h3>
                        
                        <div class="box">
                            <span>새 비밀번호</span>
                            <input type="password" class="password1" name="password">
                        </div>
                        
                        <div class="box">
                            <span>새 비밀번호 확인</span>
                            <input type="password" class="password2">
                            <div class="password_check_msg"></div>
                        </div>
                        <button class="modify_btn" >변경하기</button>
                    </div>
                </main>
		</div>
		</section>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/common.js">

</script>
<script src="/resources/js/modify.js"></script>
</body>
</html>