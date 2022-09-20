<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>License</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    
    <!-- <link href="/resources/css/reset.css" rel="stylesheet" type="text/css"> 글자크기 달라져서 reset 대신 resetInfo 참조함--> 
    <link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
    <link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/infoDetail.css" rel="stylesheet" type="text/css">
    
</head>
<body>

<!-- header.jsp -->
<c:import url="../template/header.jsp"></c:import>
	<div class="top">
		<div class="card bg-dark text-white detailName">
			<img src="https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg" class="card-img" alt="...">
			<div class="card-img-overlay">
				<h1 class="card-title">
					정보처리기사	
				</h1>
			</div>
		</div>
	</div>


	<!-------------------------test------------------------->
	<div>
		<c:forEach items="${requestScope.detailBook}" var="detailBook">
			${detailBook.licenseNum}
			${detailBook.licenseName}
			${detailBook.bookDTO.bookNum}
			${detailBook.bookDTO.bookName}
			${detailBook.bookDTO.bookImage}
			${detailBook.bookDTO.bookPrice}
		</c:forEach>
	</div>
	<!-------------------------test------------------------->

<!-- footer.jsp -->
<c:import url="../template/footer.jsp"></c:import>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/src/main/webapp/resources/js/infoDetail.js"></script>
<script src="/resources/js/common.js"></script>
</body>
</html>