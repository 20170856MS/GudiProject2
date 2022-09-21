<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>License</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<link href="/resources/css/common.css" rel="stylesheet" type="text/css">

     <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/calendar.css">

    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/d-day.css">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
    <div id="wrap">
			<div class="progress-container">
            <div class="progress-bar" id="myBar" style="width: 0%;"></div>
        </div>
        <!-- header.jsp -->
        <c:import url="template/header.jsp"></c:import>
        <section class="container-fluid col-lg-8 mt-5">

            <div id="count"></div>
              
              <!-- calendar -->
            <div class="wrapper">

                <div class="container-calendar">
                    <h3 id="monthAndYear"></h3>
                    
                    <div class="button-container-calendar">
                        <button id="previous" onclick="previous()">&#8249;</button>
                        <button id="next" onclick="next()">&#8250;</button>
                    </div>
                    
                    <table class="table-calendar" id="calendar" data-lang="en">
                        <thead id="thead-month"></thead>
                        <tbody id="calendar-body"></tbody>
                    </table>
                    
                    <div class="footer-container-calendar">
                         <label for="month">Jump To: </label>
                         <select id="month" onchange="jump()">
                             <option value=0>Jan</option>
                             <option value=1>Feb</option>
                             <option value=2>Mar</option>
                             <option value=3>Apr</option>
                             <option value=4>May</option>
                             <option value=5>Jun</option>
                             <option value=6>Jul</option>
                             <option value=7>Aug</option>
                             <option value=8>Sep</option>
                             <option value=9>Oct</option>
                             <option value=10>Nov</option>
                             <option value=11>Dec</option>
                         </select>
                         <select id="year" onchange="jump()"></select>       
                    </div>
            
                </div>
                
            </div>


        </section>
    </div>



<!-- footer.jsp -->
<c:import url="template/footer.jsp"></c:import>
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/common.js" type="text/javascript"></script>

<script src="/resources/js/calendar.js"></script>

<script src="/resources/js/d-day.js"></script>


</body>
</html>	