<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

  row = calendarTable.insertRow();

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
		
		
    	//opener.document.getElementById("date").value = clickedYMD;
    	//self.close();


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
				
				<table id="radioTable" display = none;>
					
		         	<tr>
		         		<td>방이름</td>
		         		<td>방개수</td>
	
		         	</tr>
			         	
			       
					<tr>
						<td>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
								<label class="form-check-label" for="flexRadioDefault1">
								Default radio
								</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
								<label class="form-check-label" for="flexRadioDefault2">
								Default checked radio
								</label>
							</div>
						</td>
					</tr>
							
	         	
		     	</table>
				
			</div>
		</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="/resources/js/cafeCalender.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
   
	<script src="/resources/js/common.js">

</script>
</body>
</html>