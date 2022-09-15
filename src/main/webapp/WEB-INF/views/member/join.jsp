<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

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
		<div><h1>회원가입</h1></div>
		
<div class="row align-items-center justify-content-between">
        
            </div>
            <form class="align-center" action="join" method="post" enctype="multipart/form-data" id="frm3">
                <div class="form-group">
               		<label for="area" class="form-label mt-4">지역</label>
                    <input type="text" name="areaName" class="form-control" id="area" >
					
				</div>
				
                <div class="form-group">
               		<label for="id" class="form-label mt-4">아이디</label>
                    <input type="text" name="userName" class="form-control" id="id" >
					<div></div>
				</div>
				<div class="form-group">
					<label class="form-label mt-4" for="password">비밀번호</label>
					<input type="password" name="password" class="form-control" id="password">
					<div id ="check0"></div>
				</div>
				<div class="form-group">
					<label class="form-label mt-4" for="password_check">비밀번호 확인 </label>
					<input type="password" name="password_check" class="form-control is-invalid" id="password_check">
					<div class="valid-feedback"></div>
					<div id="chheck"></div>
				</div>
				

				<!-- <div class="form-group has-danger">
					<label class="form-label mt-4" for="inputInvalid">비밀번호 재확인</label> 
					<input type="password" class="form-control is-invalid" id="inputInvalid">
					<div class="invalid-feedback">비밀번호가 일치하지 않습니다</div>
				</div> -->
                <div class="form-group">
               		<label for="name1" class="form-label mt-4">이름</label>
                    <input type="text" name="name" class="form-control" id="name1" >
					<div></div>
				</div>
                
			                   
                <div class="form-group">
               		<label for="email" class="form-label mt-4">본인 확인 이메일</label>
                    <input type="text" name ="email"class="form-control" id="email" aria-describedby="emailHelp" placeholder="선택입력">
					<div></div>
				</div>
				
				<div class="form-group ">
					<label class="form-label mt-4" for="phone">폰 번호</label>
					<input type="text" name="phone" class="form-control" id="phone">
					<div></div>
				</div>
				
				
				<div class="d-grid gap-2 mt-4">
                    <button class="btn btn-primary btn-lg" type="button" id="join1" name="join1">가입하기</button>
                </div>

            </form>

   </div>
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/join.js">

</script> 

</body>
</html>