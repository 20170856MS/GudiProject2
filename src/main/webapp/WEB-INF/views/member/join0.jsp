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
    <link href="/resources/css/font.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
		<div class="row"> 
		<div><h1>회원가입 약관동의 </h1></div>
		
		<div class="row align-items-center justify-content-between">
        
   		</div>
   		  <form class="align-center" action="join0" method="post" id ="frm" >
                
			<div class="checkbox_group">

				<input type="checkbox" name ="box" id="check_all"  >
				<label for="check_all" >전체 동의</label> <br>
				
				<input type="checkbox" name ="box" id="check_1" class="cb" >
				<label for="check_1" >개인정보 처리방침 동의</label> <br>
				
				<input type="checkbox" name ="box" id="check_2" class="cb" >
				<label for="check_2">서비스 이용약관 동의</label> <br>
				
				<input type="checkbox" name ="box"  id="check_3" class="cb" >
				<label for="check_3">마케팅 수신 동의</label> <br>
				
			  </div>
	
			<a href="../" class="btn btn-danger">취소</a>
			<button class="btn btn-lg btn-success" id="btn_check" type="button" name="btn_check">확인</button>
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