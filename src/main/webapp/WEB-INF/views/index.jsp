<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>License</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
                crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

            <link href="/resources/css/common.css" rel="stylesheet" type="text/css">

            <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
            <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/top10.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/d-day.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/calendar.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/infoMain.css" rel="stylesheet" type="text/css">

        </head>

        <body>
            <div id="wrap">
                <div class="progress-container">
                    <div class="progress-bar" id="myBar" style="width: 0%;"></div>
                </div>
                <!-- header.jsp -->
                <c:import url="template/header.jsp"></c:import>
                <section class="container-fluid col-lg-8 mt-5">
                    <!-- calendar -->
                    <div class="wrapper">

                        <div class="container-calendar">
                            <h3 id="monthAndYear"></h3>

                            <div class="button-container-calendar">
                                <button id="previous" onclick="previous()">&#8249;</button>
                                <button id="next" onclick="next()">&#8250;</button>
                            </div>

                            <table class="table-calendar" id="calendar" data-lang="en">
                                <thead id="thead-month"></thead>
                                <tbody id="calendar-body"></tbody>
                            </table>

                            <div class="footer-container-calendar">
                                <label for="month">Jump To: </label>
                                <select id="month" onchange="jump()">
                                    <option value=0>Jan</option>
                                    <option value=1>Feb</option>
                                    <option value=2>Mar</option>
                                    <option value=3>Apr</option>
                                    <option value=4>May</option>
                                    <option value=5>Jun</option>
                                    <option value=6>Jul</option>
                                    <option value=7>Aug</option>
                                    <option value=8>Sep</option>
                                    <option value=9>Oct</option>
                                    <option value=10>Nov</option>
                                    <option value=11>Dec</option>
                                </select>
                                <select id="year" onchange="jump()"></select>
                            </div>
                        </div>

                        <!-- top10 -->
                        <div class="rankingBox" data-v-19226b75="">
                            <h3 data-v-19226b75=""><span data-v-19226b75="">자격증TOP10</span></h3>
                            <ul data-v-19226b75="">
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=1" data-v-19226b75="">정보처리기사</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=2" data-v-19226b75="">전기기사</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=3" data-v-19226b75="">한식조리기능사</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=4" data-v-19226b75="">빅데이터분석기사</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=5" data-v-19226b75="">정보처리기능사</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=51" data-v-19226b75="">기사1</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=52" data-v-19226b75="">기사2</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=53" data-v-19226b75="">기사3</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=54" data-v-19226b75="">기사4</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                                <li data-v-19226b75=""><a href="./info/detail?licenseNum=55" data-v-19226b75="">기사5</a>
                                    <div data-v-19226b75=""></div>
                                </li>
                            </ul>
                        </div>

                    </div>

                </section>
                <!-- 자격증종류 -->
                <div class="cards">
                    <c:forEach items="${requestScope.list}" var="dto">
                            <div class="card" >
                                <div class="user-wrap">
                                    <img src="https://janet.co.kr/data/licenseitem/155/7JiB7Ja0.jpg" class="card-img-top" alt="...">
                                    <div class="user-text">조회수 ${dto.licenseHits}</div>
                                </div>
                                <div class="count"></div>
                                <div class="card-body">
                                    <h5 class="card-title">${dto.licenseName}</h5>
                                    
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                
                                    <div class="detail">
                                        <a href="./info/detail?licenseNum=${dto.licenseNum}" class="btn btn-primary">자격증 상세 보기</a>
                                    </div>
                                    
                                    <div class="col-lg-5 user-schedule" >
                                        <p>
                                            <div id ="test" schedule-Date="${dto.licenseNum}">
                                                <c:forEach items="${requestScope.detailSchedule}" var="detailSchedule">
                                                    ${detailSchedule.scheduleDTO.scheduleName}<br>
                                                    ${detailSchedule.scheduleDTO.scheduleDate}<br><br>
                                                </c:forEach>
                                            </div>
                                        </p>
                                            <a class="btn btn-primary" href="./add?licenseNum=${name.licenseNum}">추가</a>
                                            <a class="btn btn-primary" href="./update?licenseNum=${name.licenseNum}">수정</a>
                                    </div>

                                </div>
                            </div><br>
                        </c:forEach> 
                    </div>
                    <!-- 페이지더보기 -->
                    <div class="paging">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <c:if test="${pager.pre}">
                                    <li class="page-item">
                                        <a class="page-link" href="./info/main?page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                
                                <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                    <li class="page-item"><a class="page-link" href="./info/main?page=${i}">${i}</a></li>
                                </c:forEach>
                                
                                <li class="page-item ${pager.next?'':'disabled'}">
                                    <a class="page-link" href="./info/main?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        &nbsp;&nbsp;&nbsp;
                    </div>

            </div>


            <!-- footer.jsp -->
            <c:import url="template/footer.jsp"></c:import>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
                crossorigin="anonymous"></script>
            <script src="/resources/js/common.js" type="text/javascript"></script>

            <script src="/resources/js/top10.js"></script>
            <script src="/resources/js/d-day.js"></script>
            <script src="/resources/js/calendar.js"></script>
            <script src="/resources/js/infoMain.js"></script>

        </body>

        </html>