    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header id="header">
	<div class="top">
		
	</div>
  <!-- top_logo -->
  <div class="top_logo">
      <!-- container -->
      <div class="container">
          <h1 class="logo"><a href="/" title="자격증넷"><span>자격증넷</span></a></h1>
          
          <ul>
              
              <li class="menu_right">
                  <!-- btn_wrap -->
                  <div class="btn_wrap">
                      
                          <!-- 로그인전 -->
                          <c:choose>
                            <c:when test="${not empty check}">
                               	<div class="text-end">
                            				<a href = "/member/myPage" class="btn btn-light text-dark me-2">마이페이지</a>
					                  	      <a href = "/member/logout" class="btn btn-primary">로그아웃</a>
                           			</div>
			                  	   </c:when>
			                      	<c:otherwise>
                             		<div class="text-end">
                            				<a href = "/member/join0" class="btn btn-light text-dark me-2">회원가입</a>
			                  		      	<a href = "/member/login" class="btn btn-primary" >로그인</a>
                          		  </div>
                             </c:otherwise>
                            </c:choose>

                  </div>
                  <!-- /.btn_wrap -->
              </li>
          </ul>
      </div>
      <!-- /.container -->
  </div>
  <!-- /.top_logo -->

  <!-- gnb_wrap -->
  <div class="gnb_wrap">
      <!-- gnb_inner -->
      <div class="gnb_inner">
          <!-- container -->
          <div class="container">
              <!-- gnb_menu -->
              <div id="navBg" style="height: 0px;"></div>
              <nav class="gnb_menu">
                  <ul id="skip_gnb" class="gnb">
                      <li><a href="/admin/adminTest" title="관리자테스트">관리자 테스트</a>
                          <div class="dep2" style="height: 0px;">
                              <ul class="depth2" style="display: none;">
                                <li><a href="#" title="test0">관리자</a></li>
                                <li><a href="#" title="test1">test</a></li>
                                 
                              </ul>
                          </div>
                      </li>
                      <li><a href="#" title="TEST1">TEST1</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="#" title="test0">test0</a></li>
                              <li><a href="#" title="test1">test</a></li>
                               
                            </ul>
                         </div>
                       </li>
                       <li><a href="#" title="TEST2">TEST2</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="#" title="test0">test0</a></li>
                              <li><a href="#" title="test1">test</a></li>
                               
                            </ul>
                         </div>
                       </li>
                       <li><a href="#" title="TEST3">TEST3</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="#" title="test0">test0</a></li>
                              <li><a href="#" title="test1">test</a></li>
                               
                            </ul>
                         </div>
                       </li>
                       <li><a href="#" title="TEST4">TEST4</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="#" title="test0">test0</a></li>
                              <li><a href="#" title="test1">test</a></li>
                               
                            </ul>
                         </div>
                       </li>
                       <li><a href="#" title="TEST5">TEST5</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="#" title="test0">test0</a></li>
                              <li><a href="#" title="test1">test</a></li>
                               
                            </ul>
                         </div>
                       </li>
                       <li><a href="#" title="TEST6">TEST6</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="#" title="test0">test0</a></li>
                              <li><a href="#" title="test1">test</a></li>
                               
                            </ul>
                         </div>
                       </li>
                  </ul>
              </nav>
              <!-- /.gnb_menu -->

          </div>
          <!-- /.container -->
      </div>
      <!-- /.gnb_inner -->
  </div>
  <!-- /.gnb_wrap -->
</header>

    <!-- <header>
      <div class="px-3 py-2 text-bg-dark">
        <div class="container">
          <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
              <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
            </a>
  
            <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
              <li>
                <a href="#" class="nav-link text-secondary">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#home"></use></svg>
                  Home
                </a>
              </li>
              <li>
                <a href="/admin/adminTest" class="nav-link text-white">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#people-circle"></use></svg>
                  관리자테스트
                </a>
              </li>
              <li>
                <a href="#" class="nav-link text-white">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"></use></svg>
                  Orders
                </a>
              </li>
              <li>
                <a href="#" class="nav-link text-white">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#grid"></use></svg>
                  Products
                </a>
              </li>
              <li>
                <a href="#" class="nav-link text-white">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#people-circle"></use></svg>
                  Customers
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="px-3 py-2 border-bottom mb-3">
        <div class="container d-flex flex-wrap justify-content-center">
          <form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-auto" role="search">
            <input type="search" class="form-control" placeholder="검색" aria-label="Search">
          </form>
  
         
          <c:choose>
               <c:when test="${not empty check}">
              		<div class="text-end">
           				 <a href = "/member/myPage" class="btn btn-light text-dark me-2">마이페이지</a>
						<a href = "/member/logout" class="btn btn-primary">로그아웃</a>
         			 </div>
				</c:when>
				<c:otherwise>
            		<div class="text-end">
           				 <a href = "/member/join0" class="btn btn-light text-dark me-2">회원가입</a>
						<a href = "/member/login" class="btn btn-primary" >로그인</a>
        		  </div>
                </c:otherwise>
          </c:choose>
          
        </div>
      </div>
    </header> -->

    