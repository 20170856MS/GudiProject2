<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="/resources/css/common.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/theme.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>


    <title>자바스</title>
</head>
<body>
    <c:import url="../template/header.jsp"></c:import>
    
    <h1>게시판 글 작성하기</h1>
	
	<form action="add" method="post" enctype="multipart/form-data">
		<div>
			자격증번호
			<input type="text" name="licenseNum" value="${dto.licenseNum}">
		</div>

		<div>
			작성자 <input type="text" value="${check.userName}" name="writer">
		</div>

		<div>
			글제목 <input type="text" name="title">
		</div>

		<div>
			글내용 <input type="text" name="contents">
		</div>

		<div class="mb-3">
		<button type="submit" class="btn btn-primary">작성완료</button>
		</div>
	</form>

    

    <c:import url="../template/footer.jsp"></c:import>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/add.js"></script>
</body>
</html>