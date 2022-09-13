<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudyCafe</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<!-- header.jsp -->
  	<c:import url="template/header.jsp"></c:import>
	
	  <div style="width: 500px; height: 400px;"></div>
	  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f139139b38bf971967e652426af47ff9"></script>
	  <script>
		  var container = document.getElementById('map');
		  var options = {
			  center: new kakao.maps.LatLng(33.450701, 126.570667),
			  level: 3
		  };
  
		  var map = new kakao.maps.Map(container, options);
	  </script>
	
	<!-- footer.jsp -->
	<c:import url="template/footer.jsp"></c:import>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>