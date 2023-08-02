/*$(init)

function init() {
	var joinForm = $("#join_input_form");
	joinForm.submit(checkValidation);
}*/

function blueBox_email() {
	var rgb = $(".join_input_userInfo_email").css("border-bottom-color");
	if(rgb === "rgb(204, 204, 204)") {
		$(".join_input_userInfo_email").css("border-bottom-color", "blue");
	}
}

function blueBox_pwd() {
	var rgb = $(".join_input_userInfo_pwd").css("border-bottom-color");
	if(rgb === "rgb(204, 204, 204)") {
		$(".join_input_userInfo_pwd").css("border-bottom-color", "blue");
	}
}

// 유효성 검사
function checkValidation() {
	var errorMsgs = $(".errorMsg");
	errorMsgs.each(function(index, el) {$(el).addClass("d-none")});
	
	var email = $("#userEmail").val();
	if(email === "") {
		isValidation = false;	
		var emailErr1 = $("#emailErr1");
		emailErr1.removeClass("d-none");
		$(".join_input_userInfo_email").css("border-bottom-color", "red");
	} else {
		var pattern = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
	 	var result = pattern.test(email);
	 	if(!result) {
	 		isValidation = false;		
	 		var emailErr2 = $("#emailErr2");
	 		emailErr2.removeClass("d-none");
	 		$(".join_input_userInfo_email").css("border-bottom-color", "red");
	 	} else {
	 		$(".join_input_userInfo_email").css("border-bottom-color", "rgb(204, 204, 204)");
	 	}
	 	
	}
	
	
	var pwd = $("#userPassword").val();
	if(pwd === "") {
		isValidation = false;	
		var pwdErr1 = $("#pwdErr1");
		pwdErr1.removeClass("d-none");
		$(".join_input_userInfo_pwd").css("border-bottom-color", "red");
	} else if(pwd.length < 8) {
 		isValidation = false;		
 		var pwdErr2 = $("#pwdErr2");
 		pwdErr2.removeClass("d-none");
 		$(".join_input_userInfo_pwd").css("border-bottom-color", "red");
 	} else {
 		$(".join_input_userInfo_pwd").css("border-bottom-color", "rgb(204, 204, 204)");
 	}
	
	if(!isValidation) {
		event.preventDefault();		
	}
}

function clickEye() {
	// 아이콘 변경 기능
	var openedEyeIcon = $('._loginPasswordIconOpenedEye');
	var closedEyeIcon = $('._loginPasswordIconClosedEye');

	openedEyeIcon.toggle();
	closedEyeIcon.toggle();
	
	// password <-> text 기능 구현
	var pwdType = $("#userPassword").attr("type");
	
	if(pwdType === "password") {
		$("#userPassword").prop("type", "text");
	} else {
		$("#userPassword").prop("type", "password");
	}
}