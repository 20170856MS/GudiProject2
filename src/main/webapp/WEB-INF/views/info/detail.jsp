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
    
    <!-- <link href="/resources/css/reset.css" rel="stylesheet" type="text/css"> 글자크기 달라져서 reset 대신 resetInfo 참조함--> 
    <link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    
    <link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/infoDetail.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/infoDetailBootStrap.css" rel="stylesheet" type="text/css">
    
</head>
<body>
					<!------------------------------------- header.jsp ----------------------------------------------------------------->
	<c:import url="../template/header.jsp"></c:import>
					<!-------------------------------------infoDetailBootStrap 시작 ----------------------------------------------------->
        <!-- Page Content-->
        <div class="container px-4 px-lg-5">
            <!-- Heading Row-->
            <div class="row gx-4 gx-lg-5 align-items-center my-5 user-wrap">
                <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg" alt="..." /></div>
                <div class="user-text">${name.licenseName}</div>
                <div class="col-lg-5">
                    <h1 class="font-weight-light">일정</h1>
                    <p>
                    	<div>
							<c:forEach items="${requestScope.detailSchedule}" var="detailSchedule">
								${detailSchedule.scheduleDTO.scheduleName}<br>
								${detailSchedule.scheduleDTO.scheduleDate}<br>
							</c:forEach>
						</div>
					</p>
                    <a class="btn btn-primary" href="#!">Call to Action!</a>
                </div>
            </div>
            <!-- Call to Action-->
            <div class="card text-white bg-secondary my-5 py-4 text-center">
                <div class="card-body"><p class="text-white m-0">조회수 : ${name.licenseHits}</p></div>
            </div>
            <!-- Content Row-->
            <div class="row gx-4 gx-lg-5">
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">책</h2>
                            <p class="card-text">
								<c:forEach items="${requestScope.detailBook}" var="detailBook">
									${detailBook.bookDTO.bookName}<br>
									${detailBook.bookDTO.bookPrice}<br>
								</c:forEach>
                            </p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">동영상</h2>
                            <p class="card-text">
								<c:forEach items="${requestScope.detailVideo}" var="detailVideo">
									${detailVideo.videoDTO.videoTitle}<br>
									${detailVideo.videoDTO.videoLink}<br>
								</c:forEach>
							</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">직업소개</h2>
                            <p class="card-text">
								<c:forEach items="${requestScope.detailJob}" var="detailJob">
									${detailJob.jobDTO.jobName}<br>
									${detailJob.jobDTO.jobIntro}<br>
								</c:forEach>
							</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
            </div>
        </div>
					<!-------------------------------------infoDetailBootStrap 끝 ----------------------------------------------------->

	<!-------------------------test------------------------->
	<div>
		<c:forEach items="${requestScope.detailBook}" var="detailBook">
			${detailBook.bookDTO.bookName}<br>
			${detailBook.bookDTO.bookPrice}<br>
		</c:forEach>
	</div>
	<div>
		<c:forEach items="${requestScope.detailVideo}" var="detailVideo">
			${detailVideo.videoDTO.videoTitle}<br>
			${detailVideo.videoDTO.videoLink}<br>
		</c:forEach>
	</div>
	<div>
		<c:forEach items="${requestScope.detailJob}" var="detailJob">
			${detailJob.jobDTO.jobName}<br>
			${detailJob.jobDTO.jobIntro}<br>
		</c:forEach>
	</div>
	<div>
		<c:forEach items="${requestScope.detailSchedule}" var="detailSchedule">
			${detailSchedule.scheduleDTO.scheduleName}<br>
			${detailSchedule.scheduleDTO.scheduleDate}<br>
		</c:forEach>
	</div>
	
	
	<!-------------------------test------------------------->

<!-- footer.jsp -->
<c:import url="../template/footer.jsp"></c:import>


		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
		<script src="/src/main/webapp/resources/js/infoDetail.js"></script>
		<script src="/resources/js/common.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>