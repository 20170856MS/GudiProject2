<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>게시판 글 작성하기</h1>
		
		<form action="update" method="post">
	<div>
	작성자 <input type ="text" name="writer">
	</div>
	<div>
	글제목 <input type = "text" name="title">
	</div>
	<div>
	글내용 <input type = "text" name="title">
	</div>
	
	<button type="submit">작성완료</button>
	</form>

</body>
</html>