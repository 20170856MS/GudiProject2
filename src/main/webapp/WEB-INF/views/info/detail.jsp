<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
					<!---------------------------------------search--------------------------------------------------------------------->
	<div class="col-12">
		<label class="visually-hidden" for="search">Search</label>
		<div class="input-group">
			<input type="text" name="search" value="${param.search}"
				class="form-control" id="search" placeholder="Search">
		</div>
	</div>
	<div class="col-12 ex2">
		<button type="submit" class="btn btn-primary">검색어찾기</button>
	</div>
					<!-------------------------------------infoDetailBootStrap 시작 ----------------------------------------------------->
        <!-- Page Content-->
        <div class="container px-4 px-lg-5">
            <!-- Heading Row-->
            <div class="row gx-4 gx-lg-5 align-items-center my-5 user-wrap">
                <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg" alt="..." /></div>
                <div class="user-text" id="license" data-license-num="${name.licenseNum}">${name.licenseName}</div>
                <div class="col-lg-5 user-schedule" >
                    <h1 class="font-weight-light user-texts">일정</h1>
                    <p>
                    	<div>
							<c:forEach items="${requestScope.detailSchedule}" var="detailSchedule">
								${detailSchedule.scheduleName}<br>
								${detailSchedule.scheduleDate}<br><br>
							</c:forEach>
						</div>
					</p>
					<a class="btn btn-primary add s" href="#!">추가</a>
					<a class="btn btn-primary alt s" href="#!">수정</a> <!--class="col-lg-5 user-schedule"-->
					<a class="btn btn-primary del s" href="#!">삭제</a>
                </div>
            </div>
            <!-- Call to Action-->
            <div class="card text-white bg-secondary my-5 py-4 text-center">
                <div class="card-body"><p class="text-white m-0">
					조회수 : ${name.licenseHits}</p>
					<a class="btn btn-primary" href="#!" id="board">게시판</a>
					<a class="btn btn-primary" href="#!" id="interest">관심 등록</a><!-- 회원만 -->
					<a class="btn btn-primary" href="#!" id="have">보유 등록</a><!-- 회원만 -->
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
									책이름: ${detailBook.bookDTO.bookName}<br>
									책가격: ${detailBook.bookDTO.bookPrice}<br>
									<img src="${detailBook.bookDTO.bookImage}" width="140" height="140" alt="..." /><br><br>
								</c:forEach>
                            </p>
                        </div>
                        <div class="card-footer">
							<a class="btn btn-primary btn-sm add b" href="#!">추가</a>
							<a class="btn btn-primary btn-sm alt b" href="#!">수정</a>
							<a class="btn btn-primary btn-sm del b" href="#!">삭제</a>
						</div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">동영상</h2>
                            <p class="card-text">
								<c:forEach items="${requestScope.detailVideo}" var="detailVideo">
									<iframe width="280" height="157.5" src="${detailVideo.videoDTO.videoLink}"
									 title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write;
									  encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br>
								</c:forEach> 
							</p>
                        </div>
                        <div class="card-footer user-wrap">
							<a class="btn btn-primary btn-sm add v" href="#!">추가</a>
							<a class="btn btn-primary btn-sm alt v" href="#!">수정</a>
							<a class="btn btn-primary btn-sm del v" href="#!">삭제</a>
						</div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">직업소개</h2>
                            <p class="card-text">
								<c:forEach items="${requestScope.detailJob}" var="detailJob">
									${detailJob.jobDTO.jobName}<br>
									${detailJob.jobDTO.jobIntro}<br><br>
								</c:forEach>
							</p>
                        </div>
                        <div class="card-footer">
							<a class="btn btn-primary btn-sm add j" href="#!">추가</a>
							<a class="btn btn-primary btn-sm alt j" href="#!">수정</a>
							<a class="btn btn-primary btn-sm del j" href="#!">삭제</a>
						</div>
                    </div>
                </div>
				<!-- 게시 -->
				<table border="1">
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
						<c:forEach items="${list}" var="qnaDTO">
							<tr>
								<c:catch>
									<c:forEach begin="1" end="${dto.depth}">--</c:forEach>
								</c:catch>
								<td><a href="./detail?qnaNum=${qnaDTO.qnaNum}">${qnaDTO.qnaNum}</a></td>
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
								href="./list?page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">Previous</a></li>
						</c:if>
						<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
							<li class="page-item"><a class="page-link"
								href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
						</c:forEach>
	
						<li class="page-item ${pager.next?'':'disabled'}"><a
							class="page-link"
							href="./list?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">Next</a></li>
					</ul>
				</nav>
	
				<div class="mb-3">
					<a href="./add" class="btn btn-primary">글쓰기</a>
				</div>

            </div>
        </div>
					<!-------------------------------------infoDetailBootStrap 끝 ----------------------------------------------------->


						<!-------------------------------------Modal----------------------------------------------------------------------->
			<div>
			<button type="button" style="display:none;"class="btn btn-primary" id="up" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap">Open modal for @getbootstrap</button>

			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">${name.licenseName}</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
		</div>

	<!-- footer.jsp -->
	<c:import url="../template/footer.jsp"></c:import>


		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
		<script src="/src/main/webapp/resources/js/infoDetail.js"></script>
		<script src="/resources/js/common.js"></script>
		<script src="/resources/js/infoDetail.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>