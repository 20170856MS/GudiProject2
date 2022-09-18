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
</head>
<body>

<!-- header.jsp -->
<c:import url="../template/header.jsp"></c:import>
		  
	<c:forEach items="${requestScope.detail}" var="dto">
	
		<h3>
			자격증 번호 : ${dto.licenseNum} <br>
			자격증 이름 : ${dto.licenseName} <br>
			책 번호 : ${dto.bookDTO.bookNum} <br>
			책 제목 : ${dto.bookDTO.bookName} <br>
			책 이미지 : ${dto.bookDTO.bookImage} <br>
			책 가격 : ${dto.bookDTO.bookPrice} <br>	
		</h3>
		
	</c:forEach>
	

<!-- footer.jsp -->
<c:import url="../template/footer.jsp"></c:import>
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</body>
</html>