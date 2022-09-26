const check = document.querySelector("#check");
const licenseNum = check.getAttribute("license-Num")

function schedule(){

    const xhttp = new XMLHttpRequest;

    xhttp.open("GET","/"); 

    //4. 파라미터 전송 요청 발생 (메서드 post일 경우 파라미터 추가)
    xhttp.send("licenseNum"+licenseNum);

    //5. 응답 처리
    xhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200) {
            let result = xhttp.responseText.trim();
            console.log(result)

            
        }
    }
}
