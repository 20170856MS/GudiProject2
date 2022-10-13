<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자바스</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	
	<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/theme.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        body, h1, h2, h3, h4, h5, h6, p, span {
    	    font-family: 'Noto Sans KR', sans-serif !important;
        }
    </style>
</head>
<body>
	
	<!-- header.jsp -->
        <c:import url="../template/header.jsp"></c:import>
        <section class="container-fluid col-lg-8 mt-5" style="
		padding-top: 0px;
		padding-bottom: 0px;
		padding-left: 0px;
		padding-right: 0px;">
        	<div class="row">
				
				<h1>updateDetail</h1>
				
				<table>
		        <tr id="namePlace">
					<td id="scName">${dto.scName}</td>
		        </tr>
			    <tr id="regionPlace">
					<td>장소</td>
					<td id="cdRegion">${dto.cdRegion}</td>
					<td><button id="rBtn" style="display: none;">완료</button></td>
			    </tr>
				<tr id="payPlace">
					<td>가격</td>
					<td id="cdPay">${dto.cdPay}</td>
					<td><button id="pBtn" style="display: none;">완료</button></td>
				</tr>
		        <tr id="explainPlace">
		        	<td>설명</td>
		        	<td id="scExplain">${dto.scExplain}</td>
		        	<td><button id="eBtn" style="display: none;">완료</button></td>
		        </tr>
				<tr id="laPlace">
		        	<td>위도</td>
		        	<td id="latitude">${dto.latitude}</td>
		        	<td><button id="laBtn" style="display: none;">완료</button></td>
		        </tr>
				<tr id="loPlace">
		        	<td>경도</td>
		        	<td id="longitude">${dto.longitude}</td>
		        	<td><button id="loBtn" style="display: none;">완료</button></td>
		        </tr>
		    </table>
			<button id="completeUpdate">수정 완료</button>
			
				
			</div>
		</section>
	
<c:import url="../template/footer.jsp"></c:import>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<script src="/resources/js/common.js">
</script>
<script src="/resources/js/studyCafeDetail.js"></script>
</body>
</html>