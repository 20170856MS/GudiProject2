<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- 달력 -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<meta name="description" content="A lightweight, customizable jQuery timepicker plugin inspired by Google Calendar. Add a user-friendly javascript timepicker dropdown to your app in minutes." />
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	
	<script type="text/javascript"><%@include file="./TimePicker/jquery.timepicker.js"%></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/TimePicker/jquery.timepicker.css" />
	<script type="text/javascript"><%@include file="./TimePicker/documentation-assets/bootstrap-datepicker.js"%></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/TimePicker/bootstrap-datepicker.css" />
	<script type="text/javascript"><%@include file="./TimePicker/documentation-assets/site.js"%></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        body, h1, h2, h3, h4, h5, h6, p, span {
    	    font-family: 'Noto Sans KR', sans-serif !important;
        }
    </style>
</head>
<script type="text/javascript">
	var today = new Date();
	function buildCalendar(){
		var row = null
		var cnt = 0;
		var calendarTable = document.getElementById("calendar");
		var calendarTableTitle = document.getElementById("calendarTitle");
		calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
	  
		var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
		var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
		while(calendarTable.rows.length > 2){
			calendarTable.deleteRow(calendarTable.rows.length -1);
		}
	
		row = calendarTable.insertRow();
		for(i = 0; i < firstDate.getDay(); i++){
			cell = row.insertCell();
			cnt += 1;
		}
	
		for(i = 1; i <= lastDate.getDate(); i++){
			cell = row.insertCell();
			cnt += 1;
	
			cell.setAttribute('id', i);
			cell.innerHTML = i;
			cell.align = "center";

			cell.onclick = function(){
				clickedYear = today.getFullYear();
				clickedMonth = ( 1 + today.getMonth() );
				clickedDate = this.getAttribute('id');

				let y = today.getFullYear();
				let m = today.getMonth()+1;
				let d = today.getDate();

				if(clickedYear>=y&&clickedMonth>=m&&clickedDate>=d){
					clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
					clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
					clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;
					
					// console.log("클릭");
					// let t = document.createTextNode(clickedYear + "-" + clickedMonth + "-" + clickedDate);
					// let li = document.createElement("li");
					// li.appendChild(t);
					// dateText.append(li);
			
					let dateText = document.getElementById("dateText");
					dateText.textContent = clickedYear + "-" + clickedMonth + "-" + clickedDate;
					if(dateText != "" && clickedDate == clickedDate){
						dateText= "";
					}
					
					
					//opener.document.getElementById("date").value = clickedYMD;
					//self.close();
					
				}else{
					swal("이미 지난 날짜입니다.","","warning");
				}
				
			}
	
			if (cnt % 7 == 1) {
				cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
			}
	
			if (cnt % 7 == 0){
				cell.innerHTML = "<font color=skyblue>" + i + "</font>";
				row = calendar.insertRow();
			}
	  	}
	
	  if(cnt % 7 != 0){
		  for(i = 0; i < 7 - (cnt % 7); i++){
			  cell = row.insertCell();
		  }
	  }
	}
	
	function prevCalendar(){
		today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
		buildCalendar();
	}
	
	function nextCalendar(){
		today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
		buildCalendar();
	}
	
	
	
	
</script>

<body>
	
	<!-- header.jsp -->
		<c:import url="../template/header.jsp"></c:import>
		<section class="container-fluid col-lg-8 mt-5">
			<div class="row">
			
				<!--TimePicker-->
				<!-- <h1>일자 예약</h1>
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
						
				</article> -->
				<table id="calendar" align="center">
					<tr>
						<td align="center"><label onclick="prevCalendar()"> ◀ </label></td>
						<td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
						<td align="center"><label onclick="nextCalendar()"> ▶ </label></td>
					</tr>
					<tr>
						<td align="center"><font color ="#F79DC2">일</td>
						<td align="center">월</td>
						<td align="center">화</td>
						<td align="center">수</td>
						<td align="center">목</td>
						<td align="center">금</td>
						<td align="center"><font color ="skyblue">토</td>
					</tr>
					<script type="text/javascript">buildCalendar();</script>
				</table>
				
				<text id="dateText"></text>
				

					<div magin : 50px 0>
						<br>
					</div>
					
					<input type="hidden" >
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
										<text id="test1" hidden detail-Num="${rdto.detailNum}">${rdto.detailNum}</text>
										<input class="form-check-input" value="${rdto.roomName}" type="radio" name="radioBtn" id="radio_${rdto.roomName}">
										<label class="form-check-label" for="flexRadioDefault1">
											${rdto.roomName}
										</label>
									</div>
								</td>
								<td>${rdto.roomCount}</td>
									
							</tr>
						</c:forEach>	 
					</table>
					<button id="btnRoom" class="button" >선택 완료</button>
					<text id="radioText"></text>
					
					<div class="room_box">
					<table >
							<tr>
								<td>
									<button class="timeBtn button btn-info" value="07:00"style="border-style: solid; border-width: 4px;">07:00</button>
									<button class="timeBtn button btn-info" value="08:00" style="border-style: solid; border-width: 4px;">08:00</button>
									<button class="timeBtn button btn-info" value="09:00" style="border-style: solid; border-width: 4px;">09:00</button>
									<button class="timeBtn button btn-info" value="10:00" style="border-style: solid; border-width: 4px;">10:00</button>
									<button class="timeBtn button btn-info" value="11:00" style="border-style: solid; border-width: 4px;">11:00</button>
									<button class="timeBtn button btn-info" value="12:00" style="border-style: solid; border-width: 4px;">12:00</button>
								</td>
							</tr>
							<tr>
								<td>
									<button class="timeBtn button btn-info" value="13:00" style="border-style: solid; border-width: 4px;">13:00</button>
									<button class="timeBtn button btn-info" value="14:00" style="border-style: solid; border-width: 4px;">14:00</button>
									<button class="timeBtn button btn-info" value="15:00" style="border-style: solid; border-width: 4px;">15:00</button>
									<button class="timeBtn button btn-info" value="16:00" style="border-style: solid; border-width: 4px;">16:00</button>
									<button class="timeBtn button btn-info" value="17:00" style="border-style: solid; border-width: 4px;">17:00</button>
									<button class="timeBtn button btn-info" value="18:00" style="border-style: solid; border-width: 4px;">18:00</button>
								</td>
							</tr>
							<tr>
								<td>
									<button class="timeBtn button btn-info" value="19:00" style="border-style: solid; border-width: 4px;">19:00</button>
									<button class="timeBtn button btn-info" value="20:00" style="border-style: solid; border-width: 4px;">20:00</button>
									<button class="timeBtn button btn-info" value="21:00" style="border-style: solid; border-width: 4px;">21:00</button>
									<button class="timeBtn button btn-info" value="22:00" style="border-style: solid; border-width: 4px;">22:00</button>
									<button class="timeBtn button btn-info" value="23:00" style="border-style: solid; border-width: 4px;">23:00</button>
									
								</td>
							</tr>
					</table>

					<div>
						<button id="complete" class="button">선택완료</button>
						<text id="timeText"></text><br>
						<text id="timeText1"></text>
					</div>
					
					<button id="sendDate" type="button" class="button">예약완료</button>
					</div>
				
		
			</div>
		</section>
		
	<c:import url="../template/footer.jsp"></c:import>
   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
   
	<script src="/resources/js/common.js">

</script>
	<script src="/resources/js/studyCafe.js"></script>
</body>
</html>