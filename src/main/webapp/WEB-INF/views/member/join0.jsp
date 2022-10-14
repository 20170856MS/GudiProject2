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
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="/resources/css/join0.css">
	
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
		
   		  <form class="align-center" action="join0" method="post" id ="frm" >
                
			<div class="checkbox_group">

				<ul class="join_box">
					<li class="checkBox check01">
						<ul class="clearfix">
							<li>이용약관, 개인정보 수집 및 이용,
								위치정보 이용약관(선택), 프로모션 안내
								메일 수신(선택)에 모두 동의합니다.</li>
							<li class="checkAllBtn">
								<input type="checkbox" name="box" id="check_all" class="chkAll">
							</li>
						</ul>
					</li>
					<li class="checkBox check02">
						<ul class="clearfix">
							<li>이용약관 동의(필수)</li>
							<li class="checkBtn">
								<input type="checkbox" name="box" id="check_1" class="cb"> 
							</li>
						</ul>
						<textarea readonly name="" id="">여러분을 환영합니다.
							
							자바스 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 자바스 서비스의 이용과 관련하여 자바스 서비스를 제공하는 자바스 주식회사(이하 ‘자바스’)와 이를 이용하는 자바스 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 자바스 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
					   </textarea>
					</li>
					<li class="checkBox check03">
						<ul class="clearfix">
							<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
							<li class="checkBtn">
								<input type="checkbox" name="box" id="check_2" class="cb">
							</li>
						</ul>
	 
						<textarea readonly name="" id="">이름, 아이디, 비밀번호, 휴대폰번호, 이메일, 주소
								</textarea>
					</li>
					<li class="checkBox check03">
						<ul class="clearfix">
							<li>위치정보 이용약관 동의(선택)</li>
							<li class="checkBtn">
								<input type="checkbox" name="box" id="check_3" class="cb">
							</li>
						</ul>
	 
							<textarea readonly name="" id="" type="">이 약관은 본 사이트(이하 "회사"라 한다)에서 제공하는 모든 서비스(이하 "서비스"라 한다)의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.
								   </textarea>
					</li>
					
				</ul>
			</div>
				<ul class="footBtwrap clearfix">
					<li><button class="fpmgBt2 btn btn-lg btn-success" id="btn_check" type="button" name="btn_check" style="margin-left: 150px;">동의</button></li>
				</ul>
 	      </form>

   </div>
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
     
<script src="/resources/js/board.js"></script>
<script src="/resources/js/common.js">

</script> 
<script>
	check();
</script>
</body>
</html>