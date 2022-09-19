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
</head>
<body>

<!-- header.jsp -->
<c:import url="../template/header.jsp"></c:import>
		  
	<c:forEach items="${requestScope.detailBook}" var="detailBook">
		<h5>
			자격증 번호 : 	${detailBook.licenseNum} <br>
			자격증 이름 : 	${detailBook.licenseName} <br>
			교재 번호 :  	${detailBook.bookDTO.bookNum} <br>
			교재 제목 :  	${detailBook.bookDTO.bookName} <br>
			교재 이미지 : 	${detailBook.bookDTO.bookImage} <br>
			교재 가격 :   	${detailBook.bookDTO.bookPrice} <br>	
		</h5>
	</c:forEach>
		
	<c:forEach items="${requestScope.detailVideo}" var="detailVideo">
		<h5>
			자격증 번호 : ${detailVideo.licenseNum} <br>
			자격증 이름 : ${detailVideo.licenseName} <br>
			동영상 번호 : ${detailVideo.videoDTO.videoNum} <br>
			동영상 제목 : ${detailVideo.videoDTO.videoTitle} <br>
			동영상 링크 : ${detailVideo.videoDTO.videoLink} <br>
		</h5>
	</c:forEach>
	
	<c:forEach items="${requestScope.detailJob}" var="detailJob">
		<h5>
			자격증 번호 :	${detailJob.licenseNum} <br>
			자격증 이름 :	${detailJob.licenseName} <br>
			직업 번호 :	${detailJob.jobDTO.jobNum} <br>
			직업 이름 :	${detailJob.jobDTO.jobName} <br>
			직업 소개글 :	${detailJob.jobDTO.jobIntro} <br>
		</h5>
	</c:forEach>
	
	<c:forEach items="${requestScope.detailSchedule}" var="detailSchedule">
		<h5>
			자격증 번호 :	${detailSchedule.licenseNum} <br>
			자격증 이름 :	${detailSchedule.licenseName} <br>
			일정 번호 :	${detailSchedule.scheduleDTO.scheduleNum} <br>
			일정 이름 :	${detailSchedule.scheduleDTO.scheduleName}  <br>
			일정 날짜 :	${detailSchedule.scheduleDTO.scheduleDate}  <br>
		</h5>
	</c:forEach>	

<!-- footer.jsp -->
<c:import url="../template/footer.jsp"></c:import>
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</body>
</html>