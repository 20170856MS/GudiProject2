
		<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!DOCTYPE html>
		<html>
		<head>
		<meta charset="UTF-8">
		<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
		<title>자바스</title>
		<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
		<link href="/resources/css/theme.css" rel="stylesheet" />
		<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>    
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

		<c:import url="../template/header.jsp"></c:import>
		<section class="container-fluid" style="padding-top: 120px; padding-bottom: 0px;">
			<div class="row">
			<h1>게시판 글 수정하기</h1>
			
				
				<div class="row mb-3">
				<form action="./update" method="post" enctype="multipart/form-data">
					<input type="hidden" name="qnaNum" value="${qnaDTO.qnaNum}">
					<div class="mb-3">

						<label for="title" class="form-label">글제목</label> <input type="text" name="title"
							value="${qnaDTO.title}" class="form-control" id="title" placeholder="제목 입력">
					</div>
					<div class="mb-3">

						<label for="writer" class="form-label">작성자</label> <input type="text" name="writer"
							value="${qnaDTO.writer}" class="form-control" id="Writer" placeholder="작성자 입력">
					</div>
					<div class="mb-3">

						<label for="contents" class="form-label">글내용</label>
						<textarea class="form-control" name="contents" id="contents"
							rows="3">${qnaDTO.contents}</textarea>
					</div>

					<c:forEach items="${qnaDTO.qnaFileDTOs}" var="fileDTO">
						<div class="mb-3">
							<span class="form-control">${fileDTO.oriName}</span>
							<button type="button" class="fileDelete" data-file-num="${fileDTO.fileNum}">삭제</button>
						</div>
					</c:forEach>

					<!-- <div id="addFiles">
						<button type="button" id="fileAdd" class="btn btn-primary">파일추가</button>
					</div> -->

					<div class="mb-3">
						<button class="btn btn-success">제출</button>
					</div>

				</form>
			</div>
			</div>
		</section>
		<c:import url="../template/footer.jsp"></c:import>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
			crossorigin="anonymous"></script>
		<script src="/resources/js/common.js"></script>
		<script src="/resources/js/add.js"></script>
		</body>

		</html>