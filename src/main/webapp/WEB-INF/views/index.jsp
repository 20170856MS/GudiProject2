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
            <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">

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
            
        </head>

        <body>
            <div id="background">
                <div id="wrap">
                    <!-- header.jsp -->
                    <c:import url="template/header.jsp"></c:import>
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
                                    </div>
                                </div>
                            </div>


                            <!-- 월간 시험일정 : 큐넷에 있는거 따옴-->
                            <div id="content">
                                <form name="form1"></form>
                                <div class="content">
                                    <!-- 컨텐츠 타이틀 -->
                                    <h3 class="tit_content" style="margin-bottom: 0px;">월간 시험일정</h3>
                                    <!-- //컨텐츠 타이틀 -->

                                    <title>제목없음</title>
                                    <meta content="text/html; charset=euc-kr" http-equiv="Content-Type">
                                    <meta content="IE=7" http-equiv="X-UA-Compatible">
                                    <meta content="IE=7" http-equiv="X-UA-Compatible">

                                    <p style="TEXT-ALIGN: right; LINE-HEIGHT: 140%">&nbsp;&nbsp;<iframe
                                            style="BORDER-LEFT-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-TOP-WIDTH: 0px"
                                            height="650"
                                            src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23ffffff&amp;ctz=Asia%2FSeoul&amp;src=b2hxMTZkY2JsdjQ4aDIxc2tlZXI4MmZjMjRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=bTZpaDk0ZHRxMDRoMGk0NXVyMXJuNmh2dDhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=NWdzYWxkdWVmc2o3cm9hc2Z0aTg1OWc4Mm9AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=NmNxNjM3cnFzb2FkY3M4ZW9jNzVpdG90ZHNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=OXNpajNldWEyZTI0aGtmM3N0Y2tjOWlxcThAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=NTZwYWgybGExbWQya2hrbHVmZDU0dmNqbmdAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=aWpnbGJjMmRwOTFzc2VpdWxtbmp1MnJtb2NAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=aGs0bmtncHYwcGJnYmoxMmUzMTRyamJyZjRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=Y2J0bjFobjNnMjBtcGIydWNjZWVjOWhuNDBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=Z3JjcHJvMjAyZ3U4aWxiMHByYWk5cm5laW9AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=bDA1aDM0c2g3dWtlZHJoaTNjN25uMzhhNW9AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=Y3I0bWNhMzNhOHRzY2M2bGo4Z3J2aGtnZTRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=dmRsOGl1ZXJlbDVwcWM4c2ZrbDZxazc5ZmdAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=MXZkbzAwdmVlbjBpNms0MDRoa3ZybHNmYzRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=Ym1ibm1sYXUwZW4zMXNxbm5wbmFxOWZ2b2tAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=YjIxOTFhc25tbnVzZGFqbmRwZjY3NmNnMzRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=ZGk5aGxyM3RrYmw3ODk0cWNxYjRlazE0YWtAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=bW1kOTdxaGIyc2x2ZzIzdGVmYmQ5NzNpbDBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=OWcwdjBvYmYyMnJuN2txM2Q5cnR2NHY5NTRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=dTRxMTk1N2MycmkwdnZvMGJtdXVibTdwN2NAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=aHFwNGRpMjRvNGJldmk3dDJmbDhzOGtvazhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=ZmNxdjczZmxjamlsM2gxbWtnbmc2MTlkaDhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=ZThkOTNwZDg3c2RxNmdkZjZuOWlxNDlpdjRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=MzkwZTVjcHJhY2Z0cWd0cW0wZnF0cTkxNm9AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=M2Y3NmlhYWNzM2Y0OW0wY2o5YXBoYW0zYTRAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=ODlzOGIyYTIyZjg0NGdrNXJhZXRucm1yNG9AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=MmxjZGhnYW91ZnVvdWl1ZDc5ajRoODQxZWtAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=YWc5c29iMThkb3B0NjQ0Mmh0NW5kNGJlaHNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=OG5vcDNqdnY2Nzk5dGdxNmpzcjg5aHZsYzhAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=YTZrZjAxYm05bjM4amg1OTVlbDdnMDc4MmNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=NW41bXBibzVyNDNtaG1ndGhkNWEzcW44cGNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=dmg4cWJpaGFsbjZkMjVlN3U3cmRucjEwcmtAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=MmoydGU3ZjFibmY0cWhlMjFpZ3NiZTM2bThAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=YW0yMnI0NWczdGtkZGZybDRsaDk0dmRnZXNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;src=NjE3NWlqdGoxMDdxdmNxNmp1M2Jmcmhra3NAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23009688&amp;color=%23795548&amp;color=%23E67C73&amp;color=%23D50000&amp;color=%23C0CA33&amp;color=%23F4511E&amp;color=%23EF6C00&amp;color=%23F09300&amp;color=%237CB342&amp;color=%230B8043&amp;color=%237CB342&amp;color=%23C0CA33&amp;color=%23E4C441&amp;color=%23F6BF26&amp;color=%2333B679&amp;color=%23039BE5&amp;color=%234285F4&amp;color=%233F51B5&amp;color=%237986CB&amp;color=%23B39DDB&amp;color=%23616161&amp;color=%23A79B8E&amp;color=%23AD1457&amp;color=%23D81B60&amp;color=%238E24AA&amp;color=%239E69AF&amp;color=%23AD1457&amp;color=%23795548&amp;color=%23E67C73&amp;color=%23D50000&amp;color=%23F4511E&amp;color=%23EF6C00&amp;color=%23F09300&amp;color=%23009688&amp;color=%230B8043"
                                            frameborder="0" width="100%" scrolling="no"></iframe><span
                                            style="FONT-SIZE: 10pt; FONT-FAMILY: 맑은 고딕"><a
                                                href="https://calendar.naver.com/subscribePage.nhn" target="_blank"><img
                                                    title=""
                                                    style="BORDER-TOP: #000000 0px solid; HEIGHT: 21px; BORDER-RIGHT: #000000 0px solid; WIDTH: 109px; VERTICAL-ALIGN: baseline; BORDER-BOTTOM: #000000 0px solid; BORDER-LEFT: #000000 0px solid"
                                                    alt=""
                                                    src="http://www.q-net.or.kr/crsedt/websource/jsp/NamoCrsEdtMediaView.jsp?fileName=/images/000011/20180115163446752.jpg"></a></span>
                                    </p>

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
                                <body onload = "changeImage()">
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

            <script src="/resources/js/schedule.js"></script>
            <script src="/resources/js/infoMain.js"></script>
            <script src="/resources/js/image.js">
            </script>



        </body>

        </html>