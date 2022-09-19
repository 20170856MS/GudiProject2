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
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="/resources/css/d-day.css" type="text/css">
</head>
<body>
    <div id="wrap">
      <div class="progress-container">
        <div class="progress-bar" id="myBar" style="width: 0%;"></div>
      </div>
         <!-- header.jsp -->
          <c:import url="template/header.jsp"></c:import>
         <section class="container-fluid col-lg-8 mt-5">
      

    
        </section>
    </div>
    <!--d-day count div -->
    <h4>D-DAY</h4>
    <div id="count"></div>
    <div class="black-overlay"></div>

    <!-- footer.jsp -->
    <c:import url="template/footer.jsp"></c:import>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/js/common.js" type="text/javascript"></script>
    <script src="/resources/js/d-day.js"></script>
</body>
</body>
</html>	