<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

</head>
<body>
	
	
	<c:import url="../template/header.jsp"></c:import>
	
	
	<section class="container-fluid col-lg-4 mt-5">
		<div class="row">
	<table border="1" class="table table-success table-striped">
		<thead>
			<tr>
				<th>USERNAME</th><th>PASSWORD</th><th>NAME</th><th>EMAIL</th><th>PHONE</th>
			</tr>
		</thead>
		<tbody>
		
			
			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${pageScope.dto.userName}</td>
					<td>${pageScope.dto.password}</td>
					<td>${pageScope.dto.name}</td>
					<td>${pageScope.dto.email}</td>
					<td>${pageScope.dto.phone}</td>
				</tr>
			</c:forEach>
			
			
	
			
			<%-- <%for(BankMembersDTO bankMembersDTO:ar){ %>
				<tr>
					<td><%=bankMembersDTO.getUSERNAME()%></td>
					<td><%=bankMembersDTO.getPASSWORD()%></td>
					<td><%=bankMembersDTO.getNAME()%></td>
					<td><%=bankMembersDTO.getEMAIL()%></td>
					<td><%=bankMembersDTO.getPHONE()%></td>
				</tr>
			<%} %> --%>
			
		</tbody>
		
	</table>
	
	</div>
	</section>
	<c:import url="../template/footer.jsp"></c:import>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	
</body>
</html>