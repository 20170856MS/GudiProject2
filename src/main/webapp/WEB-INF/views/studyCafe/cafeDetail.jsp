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
<body>

<!-- header.jsp -->
<c:import url="../template/header.jsp"></c:import>
	<section class="container-fluid col-lg-8 mt-5">
     	<div class="row">
			<h1>CafeDetail</h1>
			
			<img src="/resources/img/${dto.img}" width="600px" height="500px">
		    <table>
		        <tr>
		        	<td>번호</td>
		            <td>이름</td>
		            <td>장소</td>
		            <td>가격</td>
		        </tr>
		
			    <tr>
			    	<td>${dto.detailNum}</td>
			      	<td>${dto.scName}</td>
			        <td>${dto.cdPay}</td>
					<td>${dto.cdRegion}</td>
			    </tr>
		        <tr>
		        	<td>설명</td>
		        	<td>${dto.scExplain}</td>
		        </tr>
		    </table>
		    
		    <<a href="./reservation?scName=${dto.scName}">예약하기</a>
		    <button></button>
		    
		</div>
	</section>
	
<c:import url="../template/footer.jsp"></c:import>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<script src="/resources/js/common.js">
</script>
</body>
</html>