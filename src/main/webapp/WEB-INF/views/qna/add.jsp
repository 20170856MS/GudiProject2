<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판 글 작성하기</h1>

	<form action="add" method="post">
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

</body>
</html>