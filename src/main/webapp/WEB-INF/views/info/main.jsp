<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>자바스</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- <link href="/resources/css/reset.css" rel="stylesheet" type="text/css"> 글자크기 달라져서 reset 대신 resetInfo 참조함--> 
    <link href="/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/theme.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

	<link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/infoMain.css" rel="stylesheet" type="text/css">
    
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />

</head>
<body>
    <!-- header.jsp -->
        <c:import url="../template/header.jsp"></c:import>
        <!---------------------------------------search--------------------------------------------------------------------->
		<div class="row">
            <form action="./main" class="row row-cols-lg-auto g-3 align-items-center">

                <div class="col-12">
                    <label class="visually-hidden" for="Kind">Kind</label> <select name="kind"
                        class="form-select" id="Kind">
                        <option class="kinds" value="licenseName">자격증이름</option>
                    </select>
                </div>

                <div class="col-12">
                    <label class="visually-hidden" for="search">Search</label>
                    <div class="input-group">
                        <input type="text" name="search" value="${param.search}" class="form-control"
                            id="search" placeholder="Search">
                    </div>
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">검색어찾기</button>
                </div>
            </form>

        </div>
        
        <div class="cards">
            <c:forEach items="${requestScope.list}" var="dto">
                
                <div class="card" >
                    <div class="user-wrap">
                        <!-- 자격증 이미지 랜덤출력 -->
                        <body onload = "changeImage()">
                            <img class="imageList card-img-top" alt="..." style="max-width: 100%; height: auto;">
                            <div class="user-text">조회수 ${dto.licenseHits}</div>
                            </body>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">${dto.licenseName}</h5>
                        <p class="card-text schedule" data-license-num="${dto.licenseNum}"><p style="margin-left: 40px;">수험생 여러분 힘내세요!!!</p>                     
                        <div class="detail">
                            <a href="./detail?licenseNum=${dto.licenseNum}" class="btn btn-primary">자격증 상세 보기</a>
                        </div>
                        <div class="user-schedule">
                            
                        </div>
                    </div>
                </div><br>
            </c:forEach> 
        </div>

        <div class="paging">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <c:if test="${pager.pre}">
                        <li class="page-item">
                            <a class="page-link" href="./main?page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    
                    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                        <li class="page-item"><a class="page-link" href="./main?page=${i}">${i}</a></li>
                    </c:forEach>
                    
                    <li class="page-item ${pager.next?'':'disabled'}">
                        <a class="page-link" href="./main?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            &nbsp;&nbsp;&nbsp;
            <div>
                <a href="./add" class="btn btn-primary">자격증 추가</a>
            </div>
        </div>
    
    <!-- footer.jsp -->
    <c:import url="../template/footer.jsp"></c:import>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/js/common.js"></script>
    <script src="/resources/js/infoMain.js"></script>
    <script src="/resources/js/image.js"></script>
</body>
</html>