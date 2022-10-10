$(document).ready(function(){
	
function usernameCheck() {
	let submit = false;
	const username = $("input[name=username]").val().replaceAll(" ", "");
	if(!username) {
		return false;
	}
	
	$.ajax({
		url: "/member/userNameCheck",
		type: "GET",
		async: false,
		data: {
			value : username,
			valueType : "username"
		}
	})
	.done(function(result){
		if(result == 1) {
			submit = true;
			console.log("result = " + submit)
		} 
	})
	.fail(function(){
		alert("에러");
	})
	return submit;
}
 
 
 
 
$(".next_page").click(function(){
	if(!usernameCheck()) {
		swal("아이디를 정확히 입력해주세요");
		return;
	}
	const data = {
		username : $(".username").val(),	
	}
	
	$.ajax({
		url: "/member/findPassword",
		type: "POST",
		data: data
	})
	.then(function(result){
		location.href= "/member/findPasswordAuth?username=" + result;
	})
	.fail(function(){
		alert('에러');
	})
})
 
 
 
	
 
	
})
