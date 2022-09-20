// let today = new Date();	// 현재 날짜 및 시간
// let year = today.getFullYear();	// 년도
// console.log("년도 : ", year);


// let dDay = new Date("December 22, 2022, 0:00:00").getTime(); //디데이
// setInterval(function() {
//     let today = new Date().getTime(); //현재날짜 가져오기 
//     let distance = dDay-today; //디데이-현재
//     // 일 시 분 초 등록
//     let day = Math.floor(distance / (1000 * 60 * 60 * 24));
//     let hour = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
//     let min = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
//     let sec = Math.floor((distance % (1000 * 60)) / 1000);

//     const bx_timer = document.getElementsByClassName("bx_timer").innerHTML = day + "일" + hour + "시간" + min + "분" + sec + "초";
// },1000);

let EVENT = (function (global, $) {

    /**
     * 옵션
     */
    let defaults = {
        timer: false
    };

     /**
     * 타이머
     */
      var timer = function (timer_ms) {
        var _this = this;
        var date, start, end, finish, num, tmptime, finishtime, ms;
        var set_label = false;
        var obj = $(document).find('[data-component=timer]');

        var format = {
            n: [],
            d: [],
            dd: [],
            d1: [],
            d2: [],
            hh: [],
            h1: [],
            h2: [],
            mm: [],
            m1: [],
            m2: [],
            ss: [],
            s1: [],
            s2: [],
            ms: [],
            label: []
        };

        function init() {
            // 포맷설정
            obj.each(function (i, el) {
                try {
                    var item_format = $(this).data('format');
                    format[item_format].push($(this));
                } catch (e) {
                }
            });

            // 시간설정
            date = getDate(document.getElementById('now_date').value, 'timestamp');
            start = getDate(_this.options.period_sdate, 'timestamp');
            end = getDate(_this.options.period_edate, 'timestamp');
            finish = getDate(_this.options.evt_edate, 'timestamp');
            ms = 100 - document.getElementById('now_date_ms').value;


            if (start < 0 || end < 0 || finish < 0) {
                return;
            }

            /*
            num = 1;
            while (date < start || date >= end) {
                start += 604800000;
                end += 604800000;
                num++;
            }

            while (date >= finish) {
                finish += 3600000;
            }*/

            tmptime = parseInt((end - date) / 1000);
            play(tmptime, timer_ms, ms);
        };

        // 타이머스타트
        var play = function (time, timer_ms, ms) {
            var _this = this;
            var d, h, m, s, ms, d_mod, h_mod;
            var r = document.getElementById('r').value;

            d = Math.floor(time / 86400);
            d_mod = time % 86400;
            h = Math.floor(d_mod / 3600);
            h_mod = d_mod % 3600;
            m = Math.floor(h_mod / 60);
            s = h_mod % 60;
            d = (d < 10) ? '0' + d : d;
            h = (h < 10) ? '0' + h : h;
            m = (m < 10) ? '0' + m : m;
            s = (s < 10) ? '0' + s : s;
            ms = (ms < 10) ? '0' + ms : ms;

            try {
                for (i in format) {
                    if (format.hasOwnProperty(i)) {
                        for (j in format[i]) {
                            switch (i) {
                                case 'n'    :
                                    format[i][j].text(_this.options.period_no);
                                    break;
                                case 'd' :
                                    format[i][j].text(parseInt(d));
                                    break;
                                case 'dd'    :
                                    format[i][j].text(d);
                                    break;
                                case 'd1'    :
                                    format[i][j].text(d.toString().substr(0, 1));
                                    break;
                                case 'd2'    :
                                    format[i][j].text(d.toString().substr(1, 1));
                                    break;
                                case 'hh'    :
                                    format[i][j].text(h);
                                    break;
                                case 'h1'    :
                                    format[i][j].text(h.toString().substr(0, 1));
                                    break;
                                case 'h2'    :
                                    format[i][j].text(h.toString().substr(1, 1));
                                    break;
                                case 'mm'    :
                                    format[i][j].text(m);
                                    break;
                                case 'm1'    :
                                    format[i][j].text(m.toString().substr(0, 1));
                                    break;
                                case 'm2'    :
                                    format[i][j].text(m.toString().substr(1, 1));
                                    break;
                                case 'ss'    :
                                    format[i][j].text(s);
                                    break;
                                case 's1'    :
                                    format[i][j].text(s.toString().substr(0, 1));
                                    break;
                                case 's2'    :
                                    format[i][j].text(s.toString().substr(1, 1));
                                    break;
                                case 'ms'    :
                                    format[i][j].text(ms);
                                    break;
                                case 'label':
                                    if (set_label == false && d.toString().substr(1, 1) <= 3 && d.toString().substr(0, 1) == 0) {
                                        var label = $("<img src='//gscdn.hackers.co.kr/champ/img/event/2014/common/start_end_" + d.toString().substr(1, 1) + ".png'>");
                                        format[i][j].html(label);
                                    } else if(r == 'china' && set_label == false && d.toString().substr(1, 1) > 3) {
                                        var label = $("<img src='//gscdn.hackers.co.kr/champ/img/event/2014/common/start_end_5.png '>");
                                        format[i][j].html(label);
                                    }
                                    break;
                            }
                        }
                    }
                }
                // 아래 set_label의 경우 둥둥이 배너 때문에 한번만 설정하도록 되어있는 것으로 확인되어짐.
                // for를 한번 다 돈 후에 true로 바꿀 경우 둥둥이 배너 여러개 노출 가능.
                set_label = true;
            } catch (e) {
            }
            if (timer_ms) {
                ms--;
                if (ms < 0) {
                    ms = 99;
                    time--;
                }
            } else {
                time--;
            }


            if (time < 0) {
                return;
            } else {
                var interval = timer_ms ? 10 : 1000;
                setTimeout(function () {
                    play(time, timer_ms, ms);
                }, interval);
            }
        };

        var getDate = function (ymdhis, type) {
            var obj = {
                y: ymdhis.toString().substr(0, 4),
                m: ymdhis.toString().substr(4, 2),
                d: ymdhis.toString().substr(6, 2),
                h: ymdhis.toString().substr(8, 2),
                i: ymdhis.toString().substr(10, 2),
                s: ymdhis.toString().substr(12, 2)
            };


            switch (type) {
                case 'timestamp':
                    return new Date(obj.y, Number(obj.m) - 1, obj.d, obj.h, obj.i, obj.s).getTime();
                case 'Y-m-d':
                default:
                    return obj.y + '-' + obj.m + '-' + obj.d;
            }
        };

        init();
    };

    // 타이머
    if (this.options.timer === true) {
        timer(this.options.timer_ms);
    }

});
