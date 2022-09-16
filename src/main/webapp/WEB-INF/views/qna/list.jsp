<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<section class="container-fluid">
		<div class="row">
	<h1>Q&A 게시판 리스트</h1>
	
	<table border="1">
	<thead>
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${list}" var="qnaDTO">
			<tr>
				<td><a href="./detail?qnaNum=${qnaDTO.qnaNum}">${qnaDTO.qnaNum}</a></td>
				<td>${qnaDTO.title}</td>
				<td>${qnaDTO.writer}</td>
				<td>${qnaDTO.regDate}</td>
				<td>${qnaDTO.hit}</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
	
		<div class="mb-3">
				<a href="./add" class="btn btn-primary">글쓰기</a>
			</div>
	</div>
	</section>


<c:import url="../template/footer.jsp"></c:import>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>