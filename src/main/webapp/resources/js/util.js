function usernameCheck(userName) {
	const regUsername =  /^[A-Za-z0-9]{4,15}$/;
	
	if(regUsername.test(userName)) {
		return true;
	} else {
		return false;
	}
}
 
function emailCheck(email){
	const regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	
	if(regEmail.test(email)) {
		return true;
	} else {
		return false;
	}
}
 
function phoneCheck(phone){
	const regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	if(regPhone.test(phone)) {
		return true;
	} else {
		return false;
	}
}
 
 
function nicknameCheck(name) {
	const regNickname = /^[가-힣|a-z|A-Z|0-9|]+$/;
	if (regNickname.test(name)) {
		return true;
	} else {
		return false;
	}
}
 
 
 
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