$(document).ready(function(){
	
    const URLSearch = new URLSearchParams(location.search);
    const username = URLSearch.get("username"); 
     
    console.log(username);
            
    // 인증번호 발송했는지 여부
    const authNum = (function(){
        let send = false;
        const isSend = function(set){
            if(!set) {
                return send;
            } else {
                send = set;
            }
        }
        return {isSend : isSend}
    })();
     
     
     
     
    // 인증번호 보내기
    function sendAuthNum(data, func){
        $.ajax({
            url: "/member/authNum",
            type: "POST",
            data: data 
        })
        .then(function(result){
            if(result == 1){

                swal(
                    "인증번호 전송 성공"
                )
                .then(function(){
                    func();
                })
            } else{
                swal("인증번호 전송 실패","","error");
            }
        })
        .fail(function(){
            alert("에러");
        })
    }
     
        
    // 인증번호 보낸 뒤 함수
    function sendAuthNumFnc(inputBox){
        inputBox.prop("readonly", false);
        inputBox.focus();
        timer.start();
        authNum.isSend(true);
    }
     
     
    // 이메일로 인증번호 보내기
    $(".auth_num_send_email").click(function(){
        const data = {
            email : $(".email").val(),
            username : username
        }
        // if(!emailCheck(data.email)) {
        //     swal("이메일을 정확히 입력해주세요");
        //     return;
        // }
        
        if(!timer.status().isStart) {
            swal('잠시 후 다시 시도해주세요');
            return;
        }
        
        const inputBox = $(this).siblings(".auth_num");
        console.log(inputBox)
        // username의 이메일이 맞는지 확인 
        $.ajax({
            url: "/member/find/emailCheck",
            type: "GET",
            data : data
        })
        .then(function(result){
            console.log(result)
            if(result == 1) {
                sendAuthNum({email : data.email}, function(){
                    sendAuthNumFnc(inputBox);
                });
                
            } else {
                swal("가입하신 이메일과 일치하지 않습니다");
            }
        })
        .fail(function(){
            alert("에러");
        })
    })	
     
     
     
    // 전화번호로 인증번호 보내기
    $(".auth_num_send_phone").click(function(){
        if(!timer.status().isStart) {
            swal('잠시 후 다시 시도해주세요');
            return;
        }
        
        const data = {
            phone : $(".phone").val(),
            username : username
        }
        if(!phoneCheck(data.phone)) {
            swal("전화번호를 정확히 입력해주세요");
            return;
        }
        
        const inputBox = $(this).siblings(".auth_num");
        
        // username의 전화번호가 맞는지 확인
        $.ajax({
            url: "/find/password/phoneCheck",
            type: "GET",
            data : data
        })
        .then(function(result){
            if(result) {
                sendAuthNum({phone : data.phone}, function(){
                    sendAuthNumFnc(inputBox);
                });
                
            } else {
                swal("가입하신 전화번호와 일치하지 않습니다");
            }
        })
        .fail(function(){
            alert("에러");
        })
    })
     
     
     
    // 인증완료 후 함수
    function authCompletion(){
        $.ajax({
            url: "/member/completion",
            type: "POST",
        })
        .then(function(){
            location.href = "/member/modify?username=" + username;
        })
        .fail(function(result){
            swal(result.responseText);
        })
    }
     
     
     
     
    // 인증번호 입력 후 다음 버튼
    $(".move_modify").click(function(){
        if(!authNum.isSend()) {
            swal("인증번호를 발송해주세요");
            return;
        }
        let authNumber = "";
        
        $("input[type=radio]:checked").each(function(){
            authNumber = $(this).siblings(".auth").find(".auth_num").val(); 
        })
        
        if(!authNumber) {
            return;
        }
        console.log(authNumber);
        
        $.ajax({
            url: "/member/authNumCheck",
            type: "POST",
            data: {authNum : authNumber}
        })
        .then(function(msg){
            console.log(msg)
            if(msg == 3){
                swal("인증번호가 일치합니다.").then(function(){
                   
                     authCompletion(); 
                })
            } else if(msg ==0){
                swal("인증번호를 전송해주세요","","error")
            } else if(msg ==1){
                swal("인증시간이 만료되었습니다.","","error")
            } else if(msg == 2){
                swal("인증번호가 일치하지않습니다.","","error")
            }
        })
        .fail(function(result){
            swal(result.responseText);
        })
    })
     
    })

    const timer = (function(){
        let time;	// 타이머 시간
        let timerStart;	// setInterval 이름
        let timerArr = [];	// 실행중인 타이머
        let isStart = true;	// 재시작 가능여부 
        let restartTime;	// 재시작 가능한 시간
        
        let minute;
        let second;
        
        const start = function(){
            if(!isStart) {
                return false;
            }
            
            // 타이머 초기화하기
            const reset = function(){
                time = 300;
                restartTime = 30;
                
                minute = Math.floor(time / 60);
                second = time % 60;
            }
            
            // 배열이 사이즈가 0이면 처음 실행
            if(timerArr.length == 0) {
                reset();
            }
            
            // 배열이 사이즈가 1이면 재실행 
            if(timerArr.length == 1) {
                // 재실행시 실행중인 타이머를 종료하고 다시 실행
                clearInterval(timerArr.pop());
                reset();
            }
            
            isStart = false;
                
            $(".timer").text(minute + ' : ' + String(second).padStart(2,'0'));
            
            timerStart = setInterval(function(){
                if(0 < restartTime) {
                    restartTime--;
                }
                
                if(restartTime == 0) {
                    isStart = true;
                }
                
                if(second == 0) {
                    minute--;
                    if(minute == -1) {
                        for(i=0;i<timerArr.length;i++) {
                            clearInterval(timerArr[i]);
                        }
                        timerArr = [];
                        return;
                    }
                    second = 60;
                }
                second--; 
                $(".timer").text(minute + ' : ' + String(second).padStart(2,'0'));
                
            }, 1000)
            timerArr.push(timerStart);
        }
        
        const status = function(){
            return {
                isStart : isStart,
                restartTime : restartTime,
            }
        }
            
        return {
            start : start,
            status : status,
        }
    })();