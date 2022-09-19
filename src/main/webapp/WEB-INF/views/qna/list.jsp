<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/font.css" rel="stylesheet" type="text/css">
<link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<section class="container-fluid">
		<div class="row">
			<h1>Q&A 게시판 리스트</h1>

			<div class="row mb-3">
				<form action="./list"
					class="row row-cols-lg-auto g-3 align-items-center">

					<div class="col-12">
						<label class="visually-hidden" for="Kind">Kind</label> <select
							name="kind" class="form-select" id="Kind">
							<option class="kinds" value="qnaNum">글번호</option>
							<option class="kinds" value="contents">글내용</option>
							<option class="kinds" value="title">글제목</option>
							<option class="kinds" value="writer">작성자</option>
						</select>
					</div>

					<div class="col-12">
						<label class="visually-hidden" for="search">Search</label>
						<div class="input-group">
							<input type="text" name="search" value="${param.search}"
								class="form-control" id="search" placeholder="Search">
						</div>
					</div>
					<div class="col-12">
						<button type="submit" class="btn btn-primary">검색어찾기</button>
					</div>
				</form>

			</div>


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
	</section>


	<c:import url="../template/footer.jsp"></c:import>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
	<script src="/resources/js/common.js">
</script>
</body>
</html>