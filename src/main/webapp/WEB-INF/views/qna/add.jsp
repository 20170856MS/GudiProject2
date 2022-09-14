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
		<h1>Qna Add Page</h1>
		
		<form action="update" method="post">
	<div>
	Writer <input type ="text" name="writer">
	</div>
	<div>
	Title <input type = "text" name="title">
	</div>
	<button type="submit">Add</button>
	</form>

</body>
</html>