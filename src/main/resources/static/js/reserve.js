/**
 * 
 */

function reserveCheck() {
	
	if(document.reserveForm.rid.value.length == 0) {
		alert("아이디는 필수 입력사항입니다.")
		return;
	}
	
	if(document.reserveForm.rdate.value.length == 0) {
		alert("날짜를 선택해 주세요")
		return;
	}
	
	if(document.reserveForm.rcontent.value.length == 0) {
		alert("증상을 적어주십시오.")
		return;
	}

	document.reserveForm.submit();
	
}
 