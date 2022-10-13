<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>자바스</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
                crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

            <link href="/resources/css/common.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/theme.css" rel="stylesheet" />
            <link href="/resources/css/exam.css" rel="stylesheet" />
            <link rel="stylesheet" href="/resources/css/sub.css" type="text/css">
            <link rel="stylesheet" href="/resources/css/top10.css">
            <link rel="stylesheet" href="/resources/css/d-day.css">
            <link rel="stylesheet" href="/resources/css/calendar.css">
            <link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/infoMain.css" rel="stylesheet" type="text/css">
            <link href="/resources/css/infoDetail.css" rel="stylesheet" type="text/css">

            <link rel="stylesheet" href="/resources/css/login.css" type="text/css">
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <link href="/resources/css/resetInfo.css" rel="stylesheet" type="text/css">
        </head>

        <body>
            <c:import url="template/header.jsp"></c:import>

            <!-- header.jsp -->

            <section class="container-fluid col-lg-8 mt-5" style="padding-top: 40px; padding-bottom: 40px;">

                <div class="wrapper">
                    <div class="d-flex justify-content-between">
                        <!-- top10 -->
                        <div class="rankingBox" data-v-19226b75="">
                            <h3 data-v-19226b75=""><span data-v-19226b75="">자격증TOP10</span></h3>
                            <ul data-v-19226b75="">
                                <c:forEach items="${requestScope.topList}" var="dto">

                                    <li data-v-19226b75=""><a href="./info/detail?licenseNum=${dto.licenseNum}"
                                            data-v-19226b75="">${dto.licenseName}</a>
                                        <div data-v-19226b75="${dto.licenseHits}"></div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!-- calendar -->
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
                            <div class="eeee">
                                <h1 style="padding-top: 40px;font-size: 18px;">시작부터 끝까지, 자격증에 대한 모든 종류는 자바스에서
                                    확인하세요</h1>
                                <c:if test="${not empty check}">

                                    <c:forEach items="${requestScope.ar2}" var="ar2">

                                        <pre>  ${ar2.licenseName}</pre>
                                        <pre>  ${ar2.scheduleName1}: ${ar2.scheduleDate1}, ${ar2.scheduleName2}: ${ar2.scheduleDate2}</pre>
                                        <br>

                                    </c:forEach>

                                </c:if>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- 자격증종류 -->
            </section>
            </div>
            <div class="cards">
                <c:forEach items="${requestScope.list}" var="dto" varStatus="statusNm">
                    <div class="card" id="check" license-Num="${dto.licenseNum}">
                        <div class="user-wrap" style="margin-top: 49px;">
                            <!-- 자격증 이미지 랜덤출력 -->

                            <body onload="changeImage()">
                                <img class="imageList card-img-top" alt="..." style="max-width: 100%; height: auto;">
                                <div class="user-text">조회수 ${dto.licenseHits}</div>
                            </body>
                        </div>
                        <!-- 자격증 d-day -->
                        <div class="count">
                            <c:forEach var="schedule" items="${schedule}">
                                <c:if test="${dto.licenseNum == schedule.licenseNum && schedule.dDay != 0}">
                                    D-${schedule.dDay}
                                </c:if>
                            </c:forEach>
                        </div>

                        <div class="count1">
                            <c:forEach var="schedule1" items="${schedule1}">
                                <c:if test="${dto.licenseNum == schedule1.licenseNum && schedule1.dDay != 0}">
                                    D-${schedule1.dDay}
                                </c:if>
                            </c:forEach>
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">${dto.licenseName}</h5>

                            <!-- <p class="card-text">Content</p> -->

                            <div class="detail">
                                <a href="./info/detail?licenseNum=${dto.licenseNum}" class="btn btn-primary" style="
                                    padding-top: 5px;
                                    padding-bottom: 5px;
                                ">자격증 상세보기</a>
                            </div>
                            <div class="user-text" id="license" data-license-num="${name.licenseNum}">
                                ${name.licenseName}</div>
                            <!-- 시험일 -->
                            <div class="col-lg user-schedule">
                                <p>
                                <div id="text1">
                                    <hr>
                                    <c:forEach var="schedule" items="${schedule}">
                                        <c:if test="${dto.licenseNum eq schedule.licenseNum}">
                                            ${schedule.scheduleName} :
                                            ${schedule.scheduleDate}<br><br>
                                        </c:if>
                                    </c:forEach>
                                </div><br>
                                </p>
                            </div>

                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="meImg"><img src="/resources/img/awarded.png" style="margin-left: 1550px;"></div>

            <!-- footer.jsp -->
            <c:import url="template/footer.jsp"></c:import>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
                crossorigin="anonymous"></script>
            <script src="/resources/js/common.js" type="text/javascript"></script>

            <script src="/resources/js/top10.js"></script>
            <script src="/resources/js/d-day.js"></script>
            <script src="/resources/js/calendar.js"></script>

            <script src="/resources/js/schedule.js"></script>
            <script src="/resources/js/infoMain.js"></script>
            <script src="/resources/js/image.js">
            </script>



        </body>

        </html>