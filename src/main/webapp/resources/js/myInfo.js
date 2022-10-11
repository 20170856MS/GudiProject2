const user_name = document.getElementById("user_name")
const userName1 = user_name.getAttribute("userName");

$(".pwd_modify").click(function() {
	const prevPassword = $(".present_password").val().replaceAll(" ", "");
	const newPassword = $(".new_password").val().replaceAll(" ", "");
	const newPasswordCheck = $(".new_password_check").val().replaceAll(" ", "");
	
	if(!prevPassword || !newPassword) {
		return;
	}
	
	if(newPassword != newPasswordCheck) {
		swal('변경하실 비밀번호를 확인해 주세요',"","error");
		return;
	}
	
	swal({
		text: '비밀번호를 변경하시겠습니까?',
		buttons: ['취소', '변경하기']
	})
	.then(function(value){
		if(value) {
			const data = {
				value: newPassword,
				valueType: "password",
				prevPassword : prevPassword,
                userName : userName1
			};
		
			infoModify(data);
		}
	})
})



$(".nickname_modify").click(function() {
	const nickname = $(".nickname").val();
	const checkMsg = $(".nickname_check");

    console.log(nickname);

	if (nickname == null || nickname == "") {
		checkMsg.html("닉네임을 입력 해주세요");
		return;
	}

	
	const data = {
		value: nickname,
		valueType: "nickname",
        userName : userName1
	};
	

	$.ajax({
		url: "/member/nameCheck",
		type: "get",
		data: data,
	})
	.then(function(result){
		if (result != 0) {
			checkMsg.html("이미 사용중인 닉네임입니다");
		} else {
			checkMsg.html("");

			swal(nickname + "으로 변경하시겠습니까?", {
				buttons: ["취소", "변경하기"],
			})
			.then(function(value){
				if (value == true) {
					infoModify(data);
				}
			})
		}
	})
	.fail(function(){
		swal("에러가 발생했습니다","","error");
	})
}); // nickname_modify




function infoModify(data) {
	$.ajax({
		url: "/member/infoModify",
		type: "POST",
		data: data
	})
	.then(function(msg){
        if(msg == 0){
            swal("현재 비밀번호가 다릅니다.","","error").then(function(){
                location.replace('/member/myInfo')
            })
        }
        else if(msg == 1){
            swal("비밀번호가 변경되었습니다.","","success").then(function(){
                location.replace('/member/myInfo')
            })
        } else if (msg == 2) {
            swal("닉네임이 변경되었습니다.","","success").then(function(){
                location.replace('/member/myInfo')
            })
        } else if (msg == 3) {
            swal("폰 번호가 변경되었습니다.","","success").then(function(){
                location.replace('/member/myInfo')
            })
        } 
		
	})
	.fail(function(){
		swal("에러가 발생했습니다","","error");
	})
}

$(".auth_num_send").click(function(){
	const phone = $(".phone").val();
	console.log(phone);
	if(!timer.status().isStart) {
		swal(timer.status().restartTime +' 초 후에 전송가능합니다');
		return;
	}
	
	$.ajax({
		url: "/member/authNum",
		type: "POST",
		data: {phone : phone}
	})
	.then(function(result){
        if(result == 1) {
            
            swal("인증번호가 전송되었습니다.");
            $(".auth_num_box").fadeIn(100);
            timer.start();
        }
	})
	.fail(function(result){
		alert("에러")	;
	})
})
 
 
$(".phone_auth_btn").click(function(){
	 const authNum = $(".phone_auth_num").val().replaceAll(" ", "");
	 console.log(authNum)
     if(!authNum) {
		return;
	}
	
	const data = {
		authNum : authNum,
	}	
	
	$.ajax({
		url: "/member/authNumCheck",
		type: "POST",
		data: data 
	})
	.then(function(msg){
		swal({
			text: "전화번호를 변경하시겠습니까?",
			buttons: ['취소', '변경']
		})
		.then(function(value){
			console.log(value);
			console.log(msg)
			if(value == true) {
				if(msg == 3){
					const data = {
						value: $(".phone").val(),
						valueType: "phone",
						userName : userName1
					};
					infoModify(data);
					$(".auth_num_box").fadeOut(100);
				}else if(msg ==0){
					swal("인증번호를 전송해주세요","","error")
				} else if(msg ==1){
					swal("인증시간이 만료되었습니다.","","error")
				} else if(msg == 2){
					swal("인증번호가 일치하지않습니다.","","error")
				}
				
			} 
			
		})
	})
	.fail(function(result){
		console.log("설마여기")
		swal(result.responseText);
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


function lenthCheck(e, length) {
	if(e.value.length >= length) {
		return false;
	}
	
	$(this).off().focusout(function(){
		if(e.value.length > length) {
			e.value = "";
		}
	})
	
	return true; 
}