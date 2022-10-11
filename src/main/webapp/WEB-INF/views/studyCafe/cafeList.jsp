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
  

    			<h1>StudyCafe</h1>

				<div id="map" style="width:500px;height:400px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e50c1a3d843524281f35f43447abac4a"></script>
				<c:forEach items="${list}" var="dto">
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
						mapOption = { 
							center: new kakao.maps.LatLng(${dto.latitude}, ${dto.longitude}), // 지도의 중심좌표
							level: 4 // 지도의 확대 레벨
						};
						console.log(${dto.latitude});
						console.log(${dto.longitude});
						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
					
						// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
						var positions = [
						{
							content: '<div><a href="https://map.kakao.com/link/map/${dto.scName},${dto.latitude}, ${dto.longitude}" style="color:blue" target="_blank">${dto.scName}</a></div>', 
							latlng: new kakao.maps.LatLng(${dto.latitude}, ${dto.longitude})
						}
						];
								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									map: map, // 마커를 표시할 지도
									position: positions.latlng // 마커의 위치
								});
				
								// 마커에 표시할 인포윈도우를 생성합니다 
								var infowindow = new kakao.maps.InfoWindow({
									content: positions.content // 인포윈도우에 표시할 내용
								});
							
							// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
							// 이벤트 리스너로는 클로저를 만들어 등록합니다 
							// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
								infowindow.open(map, marker);
							
					</script>
				</c:forEach>
				<table>
					<tr>
					    <th scope="col">번호</th>
						<th scope="col">지역</th>
					    <th scope="col">카페이름</th>
					</tr>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.scNum}</td>
							<td>${dto.areaName}</td>
							<td>
								<a href="./cafeDetail?scName=${dto.scName}">${dto.scName}</a>
							</td>
							<td><img src="/resources/img/GOOD.png" width="60px" height="50px"></td>
								
						</tr>
						
					</c:forEach>
				</table>

				<div>
					<a href="#">추가</a>
					<a href="#">수정</a>
					<a href="#">삭제</a>
				</div>
   
   			</div>
		</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
   
	<script src="/resources/js/common.js">

</script>
	<script src="/resources/js/studyCafeList.js"></script>
	
</body>
</html>