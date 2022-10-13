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
    
    <link href="/resources/css/myOrderList.css" rel="stylesheet" />
</head>
<body>

<!-- header.jsp -->
<c:import url="../template/header.jsp"></c:import>
	<section class="container-fluid col-lg-8 mt-5">
     	<div class="row">
			<h1>CafeDetail</h1>
			
			<img src="/resources/img/${dto.img}" width="500px" height="400px">

			<!--지도-->
			<h1>지도</h1>
         		
         		<div id="map" style="width:500px;height:400px; margin-left:360px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e50c1a3d843524281f35f43447abac4a"></script>
				<script>
					
					var container = document.getElementById('map');
					var options = {
						center: new kakao.maps.LatLng(${dto.latitude}, ${dto.longitude}),
						level: 3
					};
			
					var map = new kakao.maps.Map(container, options);


					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = { 
						center: new kakao.maps.LatLng(${dto.latitude}, ${dto.longitude}), // 지도의 중심좌표
						level: 3 // 지도의 확대 레벨
					};

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(${dto.latitude}, ${dto.longitude}); 

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						position: markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);

					var iwContent = '<div style="padding:5px;">${dto.scName}<br><a href="https://map.kakao.com/link/map/${dto.scName},${dto.latitude}, ${dto.longitude}" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/${dto.scName},${dto.latitude},${dto.longitude}" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    				iwPosition = new kakao.maps.LatLng(${dto.latitude}, ${dto.longitude}); //인포윈도우 표시 위치입니다

					// 인포윈도우를 생성합니다
					var infowindow = new kakao.maps.InfoWindow({
						position : iwPosition, 
						content : iwContent 
					});

					// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
					infowindow.open(map, marker); 

				</script>
			<!--지도-->
		    <table class="point_table">
		        <tr>
		        	<td>번호</td>
		            <td>이름</td>
		            <td>장소</td>
		            <td>가격</td>
		        </tr>
		
			    <tr>
			    	<td>${dto.detailNum}</td>
			      	<td>${dto.scName}</td>
					<td>${dto.cdRegion}</td>
			        <td>${dto.cdPay}</td>
			    </tr>
		        <tr>
		        	<td>설명</td>
		        	<td>${dto.scExplain}</td>
		        </tr>
		    </table>
		    
		    <a href="./reservation?detailNum=${dto.detailNum}">예약하기</a>
		    <a href="./updateDetail?scName=${dto.scName}">수정하기</a>
		    
		</div>
	</section>
	
<c:import url="../template/footer.jsp"></c:import>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<script src="/resources/js/common.js">
</script>
<script src="/resources/js/studyCafeDetail.js"></script>
</body>
</html>