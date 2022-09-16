<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
	<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/font.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>Detail Page</h1>
	
	<section class="container-fluid">
		<table border="1">
			<tr>
				<th>글번호</th>
				<th>글제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td>${qnaDTO.qnaNum}</td>
				<td>${qnaDTO.title}</td>
				<td>${qnaDTO.contents}</td>
				<td>${qnaDTO.writer}</td>
				<td>${qnaDTO.regDate}</td>
				<td>${qnaDTO.hit}</td>
			</tr>
		</table>
	</section>
	<a href="update?qnaNum=${qnaDTO.qnaNum}">수정</a>
	<a href="delete?qnaNum=${qnaDTO.qnaNum}">삭제</a>

	<c:import url="../template/footer.jsp"></c:import>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
		<script src="/resources/js/common.js">
</script>
</body>
</html>