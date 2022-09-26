<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	
	<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/font.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
	<!-- 달력 -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<meta name="description" content="A lightweight, customizable jQuery timepicker plugin inspired by Google Calendar. Add a user-friendly javascript timepicker dropdown to your app in minutes." />
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	
	<script type="text/javascript"><%@include file="./TimePicker/jquery.timepicker.js"%></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/TimePicker/jquery.timepicker.css" />
	<script type="text/javascript"><%@include file="./TimePicker/documentation-assets/bootstrap-datepicker.js"%></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/TimePicker/bootstrap-datepicker.css" />
	<script type="text/javascript"><%@include file="./TimePicker/documentation-assets/site.js"%></script>
	
	
</head>
<body>
	
	<!-- header.jsp -->
		<c:import url="../template/header.jsp"></c:import>
		<section class="container-fluid col-lg-8 mt-5">
			<div class="row">
			
		        <h1>방 선택</h1>
		        <table>
		         	<tr>
		         		<td>방이름</td>
		         		<td>방개수</td>
	
		         	</tr>
			         	
			        <c:forEach items="${roomList}" var="rdto">
			         	<tr>
			         		<td>
								<div class="form-check">
									<input class="form-check-input_${rdto.roomName}" type="radio" name="radioBtn_${rdto.roomName}" id="radio_${rdto.roomName}">
									<label class="form-check-label" for="flexRadioDefault1">
										${rdto.roomName}
									</label>
								</div>
							</td>
							<td>${rdto.roomCount}</td>
								
			     		</tr>
		         	</c:forEach>
	         	
		     	</table>
		         	
		         	
				<h1>일자 예약</h1>
				<article>
					<div class="demo">
						
							<p id="datepairExample">	
								<input type="text" name="startDate" class="date start" />
								<input type="text" name="startTime" class="time start" /> to
								<input type="text" name="endDate" class="date end" />
								<input type="text" name="endTime"class="time end" />
							</p>
					</div>
					<script src="https://jonthornton.github.io/Datepair.js/dist/datepair.js"></script>
					<script src="https://jonthornton.github.io/Datepair.js/dist/jquery.datepair.js"></script>
					<script>
					$('#datepairExample .time').timepicker({
						'showDuration': true,				
						'timeFormat': 'g:ia',
								 
						interval: 60,     
						minTime: '07',     
						maxTime: '11:00pm',              
						dynamic: false,     
						dropdown: true,     
						scrollbar: true 
				
					});
				
					$('#datepairExample .date').datepicker({
						'format': 'yyyy/mm/dd',
						'autoclose': true
							
					});
				
					$('#datepairExample').datepair();
					</script>
						
				</article>
	        
				
				<button id="sendDate" type="button">예약완료</button>
			
		
			</div>
		</section>
		
	<c:import url="../template/footer.jsp"></c:import>
	    
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
		<script src="/resources/js/common.js">
	</script>
	<script src="/resources/js/studyCafe.js"></script>
</body>
</html>