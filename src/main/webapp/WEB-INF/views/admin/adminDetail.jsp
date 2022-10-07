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
<title>회원 관리 페이지</title>
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
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/css/styles2.css" rel="stylesheet" />

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
                          <h1 class="h2">Admin s회원관리</h1>
                      </div>
                      <div class="table-responsive">
                          <table class="table table-striped table-sm">
                              <thead>
                              <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">Name</th>
                                  <th scope="col">UserName</th>
                                  <th scope="col">UserRole</th>
                                  <th scope="col">UpdateRole</th>
                                  <th scope="col">UserEmail</th>
                                  <th scope="col">UserMoney</th>
                                  <th scope="col">CreateDate</th>
                                  <th scope="col">Update</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr th:each="users : ${userList}">
                                  <form th:action="@{/user/change/{id}(id=${users.id})}" method="post" class="d-flex">
                                      <td th:text="${users.getId()}">1</td>
                                      <td th:text="${users.getName()}">name</td>
                                      <td th:text="${users.getUsername()}">username</td>
                                      <td th:text="${users.getRole()}">role</td>
                                      <td>
                                          <select name="role">
                                              <option value="ROLE_SELLER">ROLE_SELLER</option>
                                              <option value="ROLE_USER">ROLE_USER</option>
                                          </select>
                                      </td>
                                      <td th:text="${users.getEmail()}">email</td>
                                      <td th:text="${users.getMoney()}">money</td>
                                      <td th:text="${users.getCreateDate()}">createdate</td>
                                      <td>
                                          <button class="btn btn-warning flex-shrink-0" type="submit">
                                              업데이트
                                          </button>
                                      </td>
                                  </form>
                              </tr>
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
  <script src="/js/scripts.js"></script>
  <script src="/resources/js/common.js">

  </script>
  </body>
  </html>