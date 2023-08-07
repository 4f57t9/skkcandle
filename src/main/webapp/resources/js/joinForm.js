$(function() {
	// 체크박스 한번에 체크
    $('#chk_checkall').on('change', function() {
    	$('.join_terms_other input[type="checkbox"]').prop('checked', $(this).prop('checked'));
		$("#join_success_button").attr("disabled", false);
    });
    
    // 하나라도 풀리면 해제
    $('.join_terms_other input[type="checkbox"]').on('change', function() {
        let checkboxes = $('.join_terms_other input[type="checkbox"]');
        
        if (checkboxes.length === checkboxes.filter(':checked').length) {
            $('#chk_checkall').prop('checked', true);
            $("#join_success_button").attr("disabled", false);
        } else {
            $('#chk_checkall').prop('checked', false);
            $("#join_success_button").attr("disabled", true);
        }
    });

$(init);
function init() {
   //유효성 검사
   var joinButton = $("#join_success_button");
   joinButton.click(checkValidation);
}

function eventInit() {
	
}

//유효성 검사
function checkValidation(){
	console.log("유효성 검사 실행");
	
	isValidation = true;
	
	//모든 에러문구 d-none 으로 초기화
	var errorMsgs = $(".errorMsg");
	errorMsgs.each(function(index, el) {$(el).addClass("d-none")});

	//이메일 유효성 검사
	var email = $("#userEmail").val();
	if(email ===""){
		isValidation = false;
		var emailErr1 = $("#emailErr1");
		emailErr1.removeClass("d-none");
	}else{
		var pattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
		var result = pattern.test(email);
	 	if(!result) {
	 		isValidation = false;		
	 		var emailErr2 = $("#emailErr2");
	 		emailErr2.removeClass("d-none");
	 	} else {
	 	}
	}
	
	//비밀번호 유효성 검사
	var pwd = $("#userPassword").val();
	if(pwd === ""){
		isValidation = false;
		var pwdErr1 = $("#pwdErr1");
		pwdErr1.removeClass("d-none");
	}else if(pwd.length < 8){
		isValidation = false;
		var pwdErr2 = $("#pwdErr2");
		pwdErr2.removeClass("d-none");
	}else{
		var pwd2 = $("#userCheckPassword").val();
		if(pwd != pwd2){
			isValidation = false;
			var pwdErr3 = $("#pwdErr3");
			pwdErr3.removeClass("d-none");
		}
	}
	
	//이름 유효성 검사
	var name = $("#userName").val();
	if(name === ""){
		isValidation = false;
		var nameErr1 = $("#nameErr1");
		nameErr1.removeClass("d-none");
	}
	
	//휴대폰 번호 유효성 검사
	var phone = $("#userPhone").val();
	if(phone === ""){
		isValidation = false;
		var phoneErr1 = $("#phoneErr1");
		phoneErr1.removeClass("d-none");
	}else{
		var pattern = /^010[0-9]{4}[0-9]{4}$/;
		var result = pattern.test(phone);
		if(!result){
			isValidation = false;
			var phoneErr2 = $("#phoneErr2");
			phoneErr2.removeClass("d-none");
		}
	}
	
	//주소 유효성 검사
	var address = $("#userAddress").val();
	if(address === ""){
		isValidation = false;
		var addressErr1 = $("#addressErr1");
		addressErr1.removeClass("d-none");
	}
	
	if(!isValidation) {
		event.preventDefault();		
	}
	
}
   


});





