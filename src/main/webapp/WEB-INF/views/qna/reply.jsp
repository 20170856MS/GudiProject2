<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
				crossorigin="anonymous">
			<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
			<title>Insert title here</title>
		</head>

		<body>
			<c:import url="../template/header.jsp"></c:import>
			<h1>Reply Page</h1>
			<form action="./reply" method="post">
				<input type="hidden" name="qnaNum" value="${qnaDTO.qnaNum}">

				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">Title</label>
					<input type="text" class="form-control" name="title">
				</div>
				<div class="mb-3">
					<label for="inputPassword" class="form-label">작성자</label>
					<input type="text" class="form-control" name="writer"></input>
				</div>
				<div class="mb-3">
					<label for="inputPassword" class="form-label">내용</label>
					<input type="text" class="form-control" name="contents"></input>
				</div>
				<input type="submit" class="btn btn-primary">
			</form>
			<c:import url="../template/footer.jsp"></c:import>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
				crossorigin="anonymous"></script>
		</body>

		</html>
		<!-- <div class="box">
	<div id="comment">
		<textarea name="commentText_" class="txt_input new_comment" placeholder="Note - 댓글은 자신을 나타내는 얼굴입니다. 무분별한 댓글, 욕설, 비방 등을 삼가하여 주세요."></textarea>
		<div class=" file_hidden">
			<label for="file_" class="input input-file">
				<div class="button"><input type="file" id="file_" name="file[]" value="파일찾기" title="파일첨부 : 용량 21M 바이트 이하만 업로드 가능">파일찾기
				</div>
				<input type="text" readonly="">
			</label>
		</div>
		<div class="movie_hidden">
			<div><input name="video_" value="" placeholder="동영상 주소 입력">
				<button type="button" class="btn_apply">적용하기</button>
			</div>
			<button type="button" class="movie_pop"><span style="color: red">*</span> 지원 동영상 서비스 목록 보기
			</button>
		</div>
		<div class="etc_area">
			<div>
				<button type="button" class="btn_emoticon" data-vbtype="iframe" href="https://janet.co.kr/eyoom/core/board/emoticon.php">이모티콘
				</button>
				<button type="button" class="btn_file">첨부파일</button>
				<button type="button" class="btn_movie">동영상</button>
			</div>
			<div id="emoticon" class="emoticon vbox-item emoticon_">
			
				<div>
				<button type="button" class="btn_write" data-captcha="0">댓글등록</button>
				</div>
			</div>
		</div>
	</div>
</div> -->