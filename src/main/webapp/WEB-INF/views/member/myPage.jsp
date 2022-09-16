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
    <link href="/resources/css/font.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<style>
    .align-center {text-align: center;}
</style>
<body>


	<c:import url="../template/header.jsp"></c:import>
	
	<section class="container-fluid col-lg-4 mt-5">
		<div class="row">
	<h1>마이페이지</h1>
	<h2>${sessionScope.check.userName} 님 환영합니다.</h2>
	<%-- <h4>USERNAME : ${map.dto.userName}</h4>
	<h4>NAME : ${map.dto.name}</h4>
	<h4>EMAIL : ${map.dto.email}</h4>
	<h4>PHONE : ${map.dto.phone}</h4>
	
	<c:forEach items="${map.list}" var="dto">
		<p>${dto.accountNum}</p>
		<p>${dto.bankBookDTO.bookName}</p>
		<p>${dto.accountDate}</p>
	</c:forEach> --%>
	<table border="1" class="table table-success table-striped">
		<thead>
			<tr>
				<th>USERNAME</th><th>NAME</th><th>EMAIL</th><th>PHONE</th>
			</tr>
		</thead>
		<tbody>
	
				<tr>
					<td>${dto.userName}</td>
					<td>${dto.name}</td>
					<td>${dto.email}</td>
					<td>${dto.phone}</td>
				</tr>		
			
		</tbody>
		
	</table>
	
	<div>
		<!-- 로그인한 정보 session -->
		<%-- <c:forEach items="${check.adminRoleDTOs}" var="roleDTO">
			<div>${roleDTO.roleNum}, ${roleDTO.roleName}</div>
			
		</c:forEach> --%>
		
		<%-- <h1> 당신은 ${check.roleDTOs.get(0).roleName} 등급입니다. </h1>  --%>
		<h1> 당신은 ${check.adminRoleDTOs["0"].roleName} 등급입니다.</h1>
		
	</div>
	
	
	
	</div>
	
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/common.js">

</script> 
</body>
</html>