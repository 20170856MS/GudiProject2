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
         
         
         		<h1>지도</h1>
         		
         		<div id="map" style="width:500px;height:400px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e50c1a3d843524281f35f43447abac4a"></script>
				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
				    mapOption = { 
				        center: new kakao.maps.LatLng(37.478351, 126.866479), // 지도의 중심좌표
				        level: 4 // 지도의 확대 레벨
				    };
	
					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				 
					// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
					var positions = [
				    {
				        content: '<div><a href="https://map.kakao.com/link/map/구디스터디카페,37.478392, 126.870077" style="color:blue" target="_blank">구디스터디카페</a></div>', 
				        latlng: new kakao.maps.LatLng(37.478392, 126.870077)
				    },
				    {
				        content: '<div><a href="https://map.kakao.com/link/map/팔디스터디카페,37.478309, 126.863327" style="color:blue" target="_blank">팔디스터디카페</a></div>', 
				        latlng: new kakao.maps.LatLng(37.478309, 126.863327)
				    },
				    {
				        content: '<div><a href="https://map.kakao.com/link/map/칠디스터디카페,37.475453, 126.870366" style="color:blue" target="_blank">칠디스터디카페</a></div>', 
				        latlng: new kakao.maps.LatLng(37.475453, 126.870366)
				    },
				    {
				        content: '<div><a href="https://map.kakao.com/link/map/육디스터디카페,37.475182, 126.864956" style="color:blue" target="_blank">육디스터디카페</a></div>',
				        latlng: new kakao.maps.LatLng(37.475182, 126.864956)
				    }
					];
	
						for (var i = 0; i < positions.length; i ++) {
						    // 마커를 생성합니다
						    var marker = new kakao.maps.Marker({
						        map: map, // 마커를 표시할 지도
						        position: positions[i].latlng // 마커의 위치
						    });
			
						    // 마커에 표시할 인포윈도우를 생성합니다 
						    var infowindow = new kakao.maps.InfoWindow({
						        content: positions[i].content // 인포윈도우에 표시할 내용
					    	});
					    
					    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
					    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
					    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
						    infowindow.open(map, marker);
						}
						
				</script>

				
         
			</div>
		</section>
	
	<c:import url="../template/footer.jsp"></c:import>
    
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
   
	<script src="/resources/js/common.js">

</script>
</body>
</html>