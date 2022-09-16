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
                      <li><a href="/qna/list" title="QNA">QNA</a>
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

 