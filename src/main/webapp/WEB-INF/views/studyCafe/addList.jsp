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
    <link href="/resources/css/theme.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>


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
        		<h1>addList</h1>
        		
				<table style="border: solid;">
					<tr>
						<td>지역</td>
						<tr>
							<td>
								<button id="areaBtn">선택</button>
							</td>
							<td>
								<td id="areaText"></Td>
							</td>
						</tr>
						<td>
							<table>
								<c:forEach items="${list}" var="dto">
									<tr>
										
										<div class="form-check">
											<input class="form-check-input" value="${dto.areaNum}.${dto.areaName}" type="radio" name="arearBtn" id="radio_${dto.areaName}">
											<label class="form-check-label" for="flexRadioDefault1">
												${dto.areaNum}
											</label>
											<label class="form-check-label" for="flexRadioDefault1">
												${dto.areaName}
											</label>
										</div>
									</tr>
								</c:forEach>	
							</table>
						</td>
					</tr>
					<tr id="cafePlace">
						<td>카페이름</td>
						<td id="cafeN">입력</td>
						<td><button id="cBtn" style="display: none;">완료</button></td>
					</tr>
					<tr id="imgPlace">
						<td>이미지</td>
						<td id="imgText">이미지 추가</td>
						<td><button id="iBtn" style="display: none;">완료</button></td>
					</tr>
				</table>
				<button id="addBtn">추가</button>

  			</div>
		</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
   
	<script src="/resources/js/common.js">

</script>
	<script src="/resources/js/studyCafeList.js">
</script>

</body>
</html>