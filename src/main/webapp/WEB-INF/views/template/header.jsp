<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<link rel="stylesheet"
			href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />


<header id="header" >
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" data-navbar-on-scroll="data-navbar-on-scroll" style="
    height: 112px;
">
		<div class="container">
			<a class="navbar-brand d-inline-flex" href="/"><img class="d-inline-block" src="/resources/img/team_logo123.png" alt="logo" width="190px" /></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
			<div class="collapse navbar-collapse border-top border-lg-0 my-2 mt-lg-0" id="navbarSupportedContent">
			<div class="mx-auto pt-5 pt-lg-0 d-block d-lg-none d-xl-block">
				<p class="mb-0 fw-bold text-lg-center"></p>
			</div>
			<form class="d-flex mt-4 mt-lg-0 ms-lg-0 ms-xl-0">
				<c:choose>
								<c:when test="${not empty check}">
									<c:choose>
									
									<c:when test="${check.adminRoleDTOs[0].roleName == 'admin'}">
										<div class="text-end">
											
												<a style="color:black; ">${check.adminRoleDTOs[0].roleName} 계정 접속중 </a>
											
												<a href = "/member/myPage" class="btn btn-white shadow-warning text-primary myPage">마이페이지</a>
												<a href = "/member/logout" class="btn btn-white shadow-warning text-primary logout">로그아웃</a>
										</div>
									
									</c:when>
										<c:otherwise>
										<div class="text-end">
													<a href = "/member/myPage" class="btn btn-white shadow-warning text-primary myPage">마이페이지</a>
													<a href = "/member/logout" class="btn btn-white shadow-warning text-primary logout">로그아웃</a>
										</div>
										</c:otherwise>
									</c:choose>
								</c:when>
	
								<c:when test="${sessionConfigVO ne null}">
									<ul style="height:30px;float:right;margin-bottom:20px;" class="fn-font">
										<li><a style="color:#f97088;text-decoration:none;" class="" >${sessionConfigVO.userName}' s come in</a></li>
										
											<li>
												<img src="/resources/img/btn_kakao_m.png" style="width:30px;">
												<a style="color:black;">KAKAO 계정 접속중 </a>
												
											</li>
											<div class="text-end">
											<a href = "/member/sosialMyPage" class="btn btn-white shadow-warning text-primary myPage">마이페이지</a>
											<a href = "/member/logout" class="btn btn-white shadow-warning text-primary logout">로그아웃</a>
										</div>
										
									</ul>
									
								</c:when>

								<c:when test="${sessionConfigVO1 ne null}">
									<ul style="height:30px;float:right;margin-bottom:20px;" class="fn-font">
										<li><a style="color:#f97088;text-decoration:none;" class="" >${sessionConfigVO1.userName}' s come in</a></li>

											<li>
												<img src="/resources/img/btn_naver_m.png" style="width:30px;">
												<a style="color:black;">NAVER 계정 접속중 </a>

											</li>
											<div class="text-end">
											<a href = "/member/sosialMyPage" class="btn btn-white shadow-warning text-primary myPage">마이페이지</a>
											<a href = "/member/logout"class="btn btn-white shadow-warning text-primary logout">로그아웃</a>
										</div>
										
									</ul>
									
								</c:when>
									
								<c:otherwise>
										<div class="text-end">
												<a href = "/member/login" class="btn btn-white shadow-warning text-primary login">로그인</a>
									</div>
								</c:otherwise>
							</c:choose>
			</form>
			</div>
		</div>      
	</nav>

	<c:choose>
    <c:when test="${check.adminRoleDTOs[0].roleName == 'admin'}">
	      <div class="gnb_wrap mt-8">
	        <!-- gnb_inner -->
	        <div class="gnb_inner">
	            <!-- container -->
	          	<div class="container" >
	                <!-- gnb_menu -->
	                <div id="navBg" style="height: 0px;"></div>
	                <nav class="gnb_menu">
	                    <ul id="skip_gnb" class="gnb"style="
						padding-left: 350px;
					">
							<li><a href="#" title="Q&A" style="
								height: 55px;
							">Q&A</a>
								<div class="dep2" style="height: 0px;">
									<ul class="depth2" style="display: none;">
									  <li><a href="/qna/list" title="전체게시판">전체게시판</a></li>
									</ul>
								 </div>
							   </li>
							   <li><a href="#" title="TEST2" style="
								height: 55px;
							">자격증 정보</a>
								<div class="dep2" style="height: 0px;">
									<ul class="depth2" style="display: none;">
									  <li><a href="/info/main" title="test0">자격증 검색</a></li>
									   
									</ul>
								 </div>
							   </li>
	                        <li><a href="#" title="${check.adminRoleDTOs[0].roleName}" style="
								height: 55px;
							">관리자 페이지</a>
	                          <div class="dep2" style="height: 0px;">
	                              <ul class="depth2" style="display: none;">
	                                <li><a href="/admin/adminOrderInfo" title="test0">정보</a></li>
	                                <li><a href="/admin/adminDetail" title="test1">매장 정보 수정</a></li>
	                                
	                              </ul>
	                          </div>
	                        </li>
							<li><a href="#" title="TEST6" style="
								height: 55px;
							">스터디카페</a>
								<div class="dep2" style="height: 0px;">
									<ul class="depth2" style="display: none;">
									  <li><a href="/studyCafe/cafeList" title="test0">StudyCafe</a></li>
									   
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
    </c:when>
  
	<c:otherwise>
	    <div class="gnb_wrap mt-8">
	      <!-- gnb_inner -->
	      <div class="gnb_inner">
	          <!-- container -->
	          <div class="container" >
	              <!-- gnb_menu -->
	              <div id="navBg" style="height: 0px;"></div>
	              <nav class="gnb_menu">
	                  <ul id="skip_gnb" class="gnb" style="
					  padding-left: 450px;
				  ">
	                      <li><a href="#" title="Q&A" style="
							height: 55px;
						">Q&A </a>
	                        <div class="dep2" style="height: 0px;">
	                            <ul class="depth2" style="display: none;">
	                              <li><a href="/qna/list" title="전체게시판">전체게시판</a></li>
	                            </ul>
	                         </div>
	                       </li>
	                       <li><a href="#" title="TEST2" style="
							height: 55px;
						">자격증 정보</a>
	                        <div class="dep2" style="height: 0px;">
	                            <ul class="depth2" style="display: none;">
	                              <li><a href="/info/main" title="test0">자격증 검색</a></li>
	                               
	                            </ul>
	                         </div>
	                       </li>
	                       <li><a href="/studyCafe/cafeList" title="TEST6" style="
							height: 55px;
						">스터디카페</a>
	                        <div class="dep2" style="height: 0px;">
	                            <ul class="depth2" style="display: none;">
	                              <li><a href="/studyCafe/cafeList" title="test0">StudyCafe</a></li>
	                               
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
	  </c:otherwise>
  </c:choose>
  <!-- /.gnb_wrap -->
</header>

								