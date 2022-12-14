<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html lang="en">
<body>
		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>자바스</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
				crossorigin="anonymous">

			<!-- <link href="/resources/css/reset.css" rel="stylesheet" type="text/css"> 글자크기 달라져서 reset 대신 resetInfo 참조함-->
			<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
			<link href="/resources/css/theme.css" rel="stylesheet"/>
			<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
			<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
			<link href="/resources/css/calendar.css" rel="stylesheet" type="text/css">
			<link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
			<link href="/resources/css/infoDetail.css" rel="stylesheet" type="text/css">
			<link href="/resources/css/infoDetailBootStrap.css" rel="stylesheet" type="text/css">
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
			<!------------------------------------- header.jsp ----------------------------------------------------------------->
			<c:import url="../template/header.jsp"></c:import>
			
			<!-------------------------------------infoDetailBootStrap 시작 ----------------------------------------------------->
			<!-- Page Content-->
			<div class="container px-4 px-lg-5">
				<!-- Heading Row-->
				<div class="row gx-4 gx-lg-5 align-items-center my-5 user-wrap">
					<div class="col-lg-7">
						<body onload="changeImage()">
							<img class="imageList card-img-top" alt="..." style="max-width: 100%; height: auto;">
						</body>
					</div>
					<div class="user-text" id="license" data-grade="${grade}" data-license-num="${name.licenseNum}">${name.licenseName}</div>
					<div class="col-lg-5 user-schedule">
						<h1 class="font-weight-light user-texts">일정</h1>
						<p>
						<div>
							<c:forEach items="${requestScope.detailSchedule}" var="detailSchedule">
								<div class="divrow form3">
									${detailSchedule.scheduleName}
									<div class="form-check-s">
										<input class="form-check-input1" type="checkbox" value="asd" id="flexCheckDefault">
											<label class="form-check-label" for="flexCheckDefault">
										</label>
									</div>
								</div>
								
								<div class="form4">
									${detailSchedule.scheduleDate}
								</div><br><br>
								
							</c:forEach>
						</div>
						</p>
						<c:if test="${grade == 'admin'}">
							<a class="btn btn-primary add s" href="#!">추가</a> <a class="btn btn-primary alt s"
								href="#!">수정</a>
							<!--class="col-lg-5 user-schedule"-->
							<a class="btn btn-primary del s" href="#!">삭제</a>
							<a class="btn btn-primary chks" href="#!">확인</a>
						</c:if>
					</div>
				</div>
				<!-- Call to Action-->
				<div class="card text-white bg-secondary my-5 py-4 text-center">
					<div class="card-body">
						<p class="text-white m-0">조회수 : ${name.licenseHits}</p>
						<a class="btn btn-primary" href="#!" id="board">게시판</a> 
						<c:choose>
							<c:when test="${not empty check}">
								<a class="btn btn-primary" href="#!"id="interest" data-num="${saveNum}" data-license-num="${name.licenseNum}">관심 등록</a>
							</c:when>
							<c:otherwise>
								<a class="btn btn-primary" href="#!"id="interest">관심 등록(로그인 필요)</a>
							</c:otherwise>
						</c:choose>
						
					</div>
				</div>
				<!-- Content Row-->
				<div class="row gx-4 gx-lg-5">
					<div class="col-md-4 mb-5">
						<div class="card h-100">
							<div class="card-body">
								<h2 class="card-title">책</h2>
								<p class="card-text">
									<c:forEach items="${requestScope.detailBook}" var="detailBook">
										<div class="divrow form5">
											${detailBook.bookDTO.bookName}
											<div class="form-check-b">
												<input class="form-check-input2" type="checkbox" value="asd" id="flexCheckDefault">
													<label class="form-check-label" for="flexCheckDefault">
												</label>
											</div>
										</div>
										
										<div class="form6">
											${detailBook.bookDTO.bookPrice}
										</div>
										<img src="${detailBook.bookDTO.bookImage}" width="140" height="140" alt="..." /><br><br><br>
									</c:forEach>
								</p>
							</div>
							<c:if test="${grade == 'admin'}">
								<div class="card-footer">
									<a class="btn btn-primary btn-sm add b" href="#!">추가</a>
									<a class="btn btn-primary btn-sm alt b" href="#!">수정</a>
									<a class="btn btn-primary btn-sm del b" href="#!">삭제</a>
									<a class="btn btn-primary chkb" href="#!">확인</a>
								</div>
							</c:if>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<div class="card h-100">
							<div class="card-body">
								<h2 class="card-title">동영상</h2>
								<p class="card-text">
									<c:forEach items="${requestScope.detailVideo}" var="detailVideo">
										<div class="divrow form7">
											${detailVideo.videoDTO.videoTitle}
											<div class="form-check-v">
												<input class="form-check-input3" type="checkbox" value="asd" id="flexCheckDefault">
													<label class="form-check-label" for="flexCheckDefault">
												</label>
											</div>
										</div>
										
										<div class="form8" data-link="${detailVideo.videoDTO.videoLink}">
										<iframe width="280" height="157.5" src="${detailVideo.videoDTO.videoLink}"
											title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write;
									  		encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
										</div>
										<br><br>
									</c:forEach>
								</p>
							</div>
							<c:if test="${grade == 'admin'}">
								<div class="card-footer user-wrap">
									<a class="btn btn-primary btn-sm add v" href="#!">추가</a>
									<a class="btn btn-primary btn-sm alt v" href="#!">수정</a>
									<a class="btn btn-primary btn-sm del v" href="#!">삭제</a>
									<a class="btn btn-primary chkv" href="#!">확인</a>
								</div>
							</c:if>
						</div>
					</div>
					<div class="col-md-4 mb-5">
						<div class="card h-100">
							<div class="card-body">
								<h2 class="card-title">자격증 소개</h2>
								<p class="card-text">
									<c:forEach items="${requestScope.detailJob}" var="detailJob">

										<div class="divrow form9">
											${detailJob.jobDTO.jobName}
											<div class="form-check-j">
												<input class="form-check-input4" type="checkbox" value="asd" id="flexCheckDefault">
													<label class="form-check-label" for="flexCheckDefault">
												</label>
											</div>
										</div>
										<div class="form10">
										${detailJob.jobDTO.jobIntro}
										</div><br><br>
									</c:forEach>
								</p>
							</div>
							<c:if test="${grade == 'admin'}">
								<div class="card-footer">
									<a class="btn btn-primary btn-sm add j" href="#!">추가</a>
									<a class="btn btn-primary btn-sm alt j" href="#!">수정</a>
									<a class="btn btn-primary btn-sm del j" href="#!">삭제</a>
									<a class="btn btn-primary chkj" href="#!">확인</a>
								</div>
							</c:if>
						</div>
					</div>

					<!-- 게시판 상세보기 -->
					<table class="table table-sm">
						<thead>
							<tr>
								<th>글번호</th>
								<th>글제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${detailList}" var="qnaDTO">

								<tr>
									<c:catch>
										<c:forEach begin="1" end="${dto.depth}">--</c:forEach>
									</c:catch>
									<td><a href="/qna/detail?qnaNum=${qnaDTO.qnaNum}">${qnaDTO.qnaNum}</a></td>
									<td>${qnaDTO.title}</td>
									<td>${qnaDTO.writer}</td>
									<td>${qnaDTO.regDate}</td>
									<td>${qnaDTO.hit}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<c:if test="${pager.pre}">
								<li class="page-item"><a class="page-link"
										href="./detail?licenseNum=${name.licenseNum}&page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">Previous</a>
								</li>
							</c:if>
							<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
								<li class="page-item"><a class="page-link"
										href="./detail?licenseNum=${name.licenseNum}&page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
							</c:forEach>

							<li class="page-item ${pager.next?'':'disabled'}"><a class="page-link"
									href="./detail?licenseNum=${name.licenseNum}&page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">Next</a>
							</li>
						</ul>
					</nav>

					<div class="mb-3">
						<a href="./add?licenseNum=${name.licenseNum}" licenseNum="${name.licenseNum}" id="test"
							class="btn btn-primary">글쓰기</a>
					</div>

				</div>
			</div>
			<!-------------------------------------infoDetailBootStrap 끝 ----------------------------------------------------->


			<!-------------------------------------Modal----------------------------------------------------------------------->
			<div>
				<button type="button" style="display: none;" class="btn btn-primary" id="up" data-bs-toggle="modal"
					data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap">Open modal for
					@getbootstrap</button>

				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
					aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">${name.licenseName}</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form id="mb">
									<input type="hidden" id="num">

									<!--	<div class="mb-3">
									<label for="recipient-name" class="col-form-label">일정</label>
									<input type="text" class="form-control form1 s" value=ds[i].scheduleName, >
								</div>
								<div class="mb-3">
									<label for="message-text" class="col-form-label">날짜</label>
									<textarea class="form-control form2 s"> ds[i].scheduleDate </textarea>
								</div>	-->

							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="close">취소</button>
							<button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="btnModal"></button>
						</div>
					</div>
				</div>
			</div>

			<!-- footer.jsp -->
			<c:import url="../template/footer.jsp"></c:import>


			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
				crossorigin="anonymous"></script>
			<script src="/src/main/webapp/resources/js/infoDetail.js"></script>
			<script src="/resources/js/common.js"></script>
			<script src="/resources/js/infoDetail.js"></script>
			<script src="/resources/js/image.js"></script>
			<!-- Bootstrap core JS-->
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			<!-- Core theme JS-->
			<script src="js/scripts.js"></script>

		</body>

		</html>