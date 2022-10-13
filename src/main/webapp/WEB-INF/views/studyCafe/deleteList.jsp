<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


</head>
<body>
	
	<!-- header.jsp -->
        <c:import url="../template/header.jsp"></c:import>
        <section class="container-fluid col-lg-8 mt-5" style="
		padding-top: 0px;
		padding-bottom: 0px;
		padding-left: 0px;
		padding-right: 0px;">
        	<div class="row">
        		<h1>deleteList</h1>
        		
				<table>
					<tr>
					    <th scope="col">번호</th>
						<th scope="col">지역</th>
					    <th scope="col">카페이름</th>
					</tr>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td><input type="checkbox" name="scNum" value="${dto.scNum}">${dto.scNum}</td>
							<td>${dto.areaName}</td>
							<td>${dto.scName}</td>
						</tr>
						
					</c:forEach>
				</table>
				<button id="deleteBtn">삭제</button>
  			</div>
		</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
   
	<script src="/resources/js/common.js">

</script>
<script src="/resources/js/studyCafeList.js"></script>
</body>
</html>