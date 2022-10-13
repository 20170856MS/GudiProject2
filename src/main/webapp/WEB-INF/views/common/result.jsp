<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>	
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

<body>
	
	<script type="text/javascript">
		let message = '${message}';
		swal(message).then(function(){
			location.href="${url}";
		})
	</script>
</body>
</html>