		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
		<meta charset="UTF-8">
		<title>자바스</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
			crossorigin="anonymous">

		<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
		<link href="/resources/css/theme.css" rel="stylesheet" />
		<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		</head>

		<body>
		<c:import url="../template/header.jsp"></c:import>

		<c:forEach items="${qnaDTO.qnaFileDTOs}" var="fileDTO">
			<p>
				<a href="../resources/upload/${qna}/${fileDTO.fileName}">${fileDTO.oriName}</a>
			</p>
		</c:forEach>

		<section class="container-fluid" style="padding-top: 120px; padding-bottom: 0px;">
			<h1>게시판 글 상세보기</h1>
			<table class="table table-sm">
				<tr>
					<th>글번호</th>
					<th>글제목</th>
					<th>글내용</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<tr>
					<td>${detail.qnaNum}</td>
					<td>${detail.title}</td>
					<td>${detail.contents}</td>
					<td>${detail.writer}</td>
					<td>${detail.regDate}</td>
					<td>${detail.hit}</td>
				</tr>
			</table>
		</section>
		<a href="./list" class="btn btn-info">글목록 보기</a>
		<a href="update?qnaNum=${qnaDTO.qnaNum}" class="btn btn-primary">글수정</a>
		<a href="delete?qnaNum=${qnaDTO.qnaNum}" class="btn btn-danger">글삭제</a>

		<!-- 댓글 -->
		<div class="row">
			<div class="mb-3">
				<label for="writer" class="form-label">USERNAME</label> <input type="text" class="form-control"
					id="writer" placeholder="Enter USERNAME">
			</div>

			<div class="mb-3">
				<label for="contents" class="form-label">WRITE CONTENTS</label>
				<textarea class="form-control" id="contents" rows="3"></textarea>
			</div>

			<div class="mb-3">
				<button type="button" id="b1" data-qnaNum="${qnaDTO.qnaNum}" class="btn btn-success">댓글등록</button>
			</div>
		</div>

		<!-- 댓글 목록 -->
		<div>
			<table id="commentList" class="table table-success table-striped"></table>
		</div>

		<!-- <button id="more" class="btn btn-info">더보기</button> -->

		<div>
			<!-- modal -->
			<button type="button" style="display: none;" class="btn btn-primary" id="up" data-bs-toggle="modal"
				data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap">Open modal for
				@getbootstrap</button>

			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">댓글수정</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form>
								<input type="hidden" id="num">
								<div class="mb-3">
									<label for="recipient-name" class="col-form-label">작성자:</label>
									<input type="text" class="form-control" id="updateWriter">
								</div>
								<div class="mb-3">
									<label for="message-text" class="col-form-label">내용:</label>
									<textarea class="form-control" id="updateContents"></textarea>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" data-bs-dismiss="modal"
								id="update">수정하기</button>
						</div>
					</div>
				</div>
			</div>

		</div>

		<!-- <a href="./reply?qnaNum=${qnaDTO.qnaNum}" class="btn btn-secondary">답글</a> -->

		<c:import url="../template/footer.jsp"></c:import>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
			crossorigin="anonymous"></script>
		<script src="/resources/js/common.js"></script>
		<script src="/resources/js/qnaComment.js"></script>
		</body>

		</html>