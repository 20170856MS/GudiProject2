    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

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
                            				<a href = "/member/myPage" class="btn_memb myPage">마이페이지</a>
					                  	      <a href = "/member/logout" class="btn_memb logout">로그아웃</a>
                           			</div>
			                  	   </c:when>
			                      	<c:otherwise>
                             		<div class="text-end">
                            				<a href = "/member/join0" class="btn_memb join">회원가입</a>
			                  		      	<a href = "/member/login" class="btn_memb login">로그인</a>
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
                                <li><a href="/order/complete" title="test0">결제완료 테스트</a></li>
                                <li><a href="/order/order" title="test1">결제화면 테스트</a></li>
                                 
                              </ul>
                          </div>
                      </li>
                      <li><a href="#" title="커뮤니티">커뮤니티</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="/qna/list" title="QNA">게시판</a></li>
                              <li><a href="#" title="test1">test</a></li>
                               
                            </ul>
                         </div>
                       </li>
                       <li><a href="/info/main" title="TEST2">자격증 정보 페이지</a>
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
                       <li><a href="#" title="TEST6">StudyCafe</a>
                        <div class="dep2" style="height: 0px;">
                            <ul class="depth2" style="display: none;">
                              <li><a href="/studyCafe/cafeList" title="test0">StudyCafe</a></li>
                              <li><a href="/studyCafe/map" title="지도">지도</a></li>
                              <li><a href="/studyCafe/calender" title="달력">달력</a></li>
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

 