<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" >
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link href="/resources/css/login.css" rel="stylesheet">
</head>
<style>
    
    .bg-light{
		height: 1053px;
		padding-top:55px;
		padding-bottom:75px;
	}
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 700px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
    <!-- 입력창 -->
	.container.py-4{
		margin: 0 auto;
		width : 503px;
	}
    <!-- 가입하기 -->
	.d-grid.gap-2{
		padding-top: 30px;
	}
    
    <!-- 생년월일 -->
	.bir_yy,.bir_mm,.bir_dd{
		width:160px;
		display:table-cell;
	}
	.bir_mm+.bir_dd, .bir_yy+.bir_mm{
		padding-left:10px;
	}
	
</style>
<body>
	
		<c:import url="../template/header.jsp"></c:import>

		<section class="container-fluid col-lg-4 mt-5">
			<div class="login_box">
				
				<div class="row">
				<div><h4>야나두 자격증 사이트에 오신것을 환영합니다.</h4></div>
				<main>
				<form class="align-center" action="join" method="post" id="frm3">
					<div class="input_aera">
			                <select class="form-select" name="areaName" id="areaName">
						        <option>지역선택</option>
								<option>금천구</option>
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
						<input type="text" name="phone" id="phone" placeholder="'-' 까지 입력해 주세요" maxlength="11" >
	                    
	                </div>
	                
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