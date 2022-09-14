<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CafeDetail</h1>
    <table>
        <tr>
            <td>이름</td>
            <td>장소</td>
            <td>가격</td>
            <td>설명</td>
        </tr>

	    <tr>
	      	<td>${dto.scName}</td>
	        <td>${dto.cdPay}</td>
			<td>${dto.cdRegion}</td>
			<td>${dto.scExplain}</td>
	    </tr>
        
    </table>
</body>
</html>