<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
  
    <img src="/resources/img/GOOD.png" width="60px" height="50px">
    <h1>StudyCafe</h1>


	<table>
		<tr>
	      <th scope="col">번호</th>
	      <th scope="col">지역</th>
	      <th scope="col">카페이름</th>
	    </tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.scNum}</td>
				<td>${dto.areaNum}</td>
				<td>
					<a href="./cafeDetail?scName=${dto.scName}">${dto.scName}</a>
				</td>
				<td><img src="/resources/img/${dto.img}" width="60px" height="50px"></td>
				
			</tr>
		
		</c:forEach>
	</table>

   
</body>
</html>