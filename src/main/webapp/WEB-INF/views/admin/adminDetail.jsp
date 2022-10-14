<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/theme.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>

script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<link rel="stylesheet" href="/resources/css/myOrderList.css">
<link rel="stylesheet" href="/resources/css/paging.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>    
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

	<section class="checkout-section spad mt-5">
		<div class="container">
          <!-- Navigation-->
          <nav class="navbar navbar-expand-lg navbar-light bg-light" th:replace="/fragment/navigation :: menu(${user})">
          
          </nav>
          
          <div class="container-fluid">
              <div class="row">
                  <main class="col-md ms-sm-auto col-lg-20 px-md-4">
                      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                          <h1 class="h2">Admin 회원관리</h1>
                      </div>
                      <div class="table-responsive">
                          <table class="table table-striped table-sm">
                              <thead>
                              <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">번호</th>
                                  <th scope="col">아이디</th>
                                  <th scope="col">회원등급</th>
                                  <th scope="col">수정할 등급</th>
                                  <th scope="col">이메일</th>
                                  <!-- <th scope="col">가입날짜</th> -->
                                  
                                  <th scope="col">폰번호</th>
                                  <th scope="col">수정</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                                  <c:forEach items="${userList}" var="users">           
                                      <c:set var="i" value="${i+1}"/>
                                  <tr>
                                            <td	title="count">${i}</td>
	                                        <td	title="num" class="userNum" >${users.num}</td>
	                                        
	                                        <td title="userName" class="userName">${users.userName}</td>
	                                        <td title="roleName" class="roleName" >${users.adminRoleDTOs[0].roleName}</td>
	                                        <td>
	                                            <select name="role" class="roles">
	                                                <option value="1" >admin</option> <!-- admin 전체 페이지 관리자-->
	                                                <option value="2" >vip</option>  <!-- vip = 스터디카페 관리자-->
	                                                <option value="3" >member</option>
	                                            </select>
	                                        </td>
	                                        <td title="email">${users.email}</td>
	                                        <td title="phone">${users.phone}</td>
	                                        <td>
                                                <c:choose>
                                                    <c:when test="${check.userName == users.userName}">
                                                        <button class="updatebtn btn btn-info flex-shrink-0" disabled type="button" >
                                                            업데이트
                                                        </button>
                                                        
                                                    </c:when>
                                                    <c:otherwise>
                                                        <button class="updatebtn btn btn-info flex-shrink-0" type="button" >
                                                            업데이트
                                                        </button>
                                                        
                                                  </c:otherwise>
                                                </c:choose>
	                                        </td>

                                        
                                        </tr>
	                                </c:forEach>
                              
                              </tbody>
                          </table>
                      </div>
                  </main>
              </div>
          </div>
      
        </div>
      </section>
    
    <c:import url="../template/footer.jsp"></c:import>
  <!-- Bootstrap core JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="/resources/js/common.js">

  </script>
    <script src="/resources/js/admincheck.js"></script>
</body>
  </html>