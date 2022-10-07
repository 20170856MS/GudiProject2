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
    console.log(checkMsg)

	if (nickname == null || nickname == "") {
		checkMsg.html("닉네임을 입력 해주세요");
		return;
	}

	if (!nicknameCheck(nickname)) {
		checkMsg.html("닉네임은 한글, 영어, 숫자만 4 ~10자리로 입력 가능합니다.");
		return;
	}
	
	const data = {
		value: nickname,
		valueType: "nickname"
	};
	

	$.ajax({
		url: "/overlapCheck",
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
        console.log(msg)
		swal(msg);
		$("input").val("");
		
	})
	.fail(function(){
		swal("에러가 발생했습니다","","error");
	})
}