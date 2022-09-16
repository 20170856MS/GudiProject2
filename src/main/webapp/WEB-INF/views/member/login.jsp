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
</head>
<style>
    .align-center {text-align: center;}
</style>
<body>
	
	<c:import url="../template/header.jsp"></c:import>
	
	<section class="container-fluid col-lg-4 mt-5">
		<div class="row">
		<main class="form-signin w-100 m-auto">
		  <form action="./login" method="post" id ="frm">
  		  <img class="mb-4" src="../../../resources/img/GOOD.png" alt="" width="100" height="100">
  		  <h1 class="h3 mb-3 fw-normal">Enter ID</h1>

   		 	<div class="form-floating">
   		 
   		 
   	  		 <input type="text" name="userName" id = "userName" class="form-control" placeholder="name@example.com">
    		 
   		</div>
   			 <div class="form-floating">
   			 <h1 class="h3 mb-3 fw-normal">Enter Password</h1>
      		<input type="password" name="password" id = "password" class="form-control" placeholder="Password">
  		</div>

    		<div class="checkbox mb-3">
     			 <label>
     		   <input type="checkbox" value="remember-me"> Remember me
     		 </label>
   		 </div>
   		 <button class="w-100 btn btn-lg btn-primary" id="btn" type="button" name="login">Sign in</button>
    	<p class="mt-5 mb-3 text-muted">© 2017–2022</p>
  		</form>
		</main>
		</div>
	
	</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/member.js">

</script>
<script src="/resources/js/common.js">

</script> 

</body>
</html>