const dateAdmin = document.querySelector("#dateAdmin")
const timeLength = document.querySelector("#timeLength")
const detailNum = document.querySelector("#detailNum")
const reserNum = document.querySelector("#reserNum")

dateAdmin.addEventListener("click",function(){

    console.log(timeLength.value);
    console.log(detailNum.value);
    $.ajax({
        url: "/studyCafe/reUpdate",
        type: "POST",
        data: {
            reserNum : reserNum.value,
			timeLength : timeLength.value
		}
    })
    .then(function(result){
        console.log(result)
        if(result == 1){
        location.replace('/studyCafe/reUpdate?detailNum='+detailNum.value);     
         }
    })
    .fail(function(){
        alert("에러");
    })
})