$(init)

//결제 페이지 실행시 불러들이는 값
function init(){
	order(); 
	priceCalculate();
}

//주문 json
function order() {
	$.ajax({
		url: "orderPay_content.jsp",
		method: "get",
		success: function(data) {
			console.log(data);
			let html = "";
	   	  	data.forEach(function(item, index) {
		   		 if(index == 0) {
		   			html +=' <table class="nofn" style="font-family: Dotum, sans-serif;">';
		   			html +='<tr>';
		   			html +='	<th colspan="3" class="text-left" style="font-size: 16px; color: #00891A;">내일(화)';
		   			html +='		7/12 도착 보장</th>';
		   			html +='</tr>';
		   		}
		   		 
		   		html +='<tr>'; 
		   		html +='	<td style="border-right: white;">';
		   		html +='	<span class="nofnc" style="font-size: 16px;">';
		   		html +=item.ordername + '</span>';
		   		html +='	</td>';
		   		html +='	<td style="border-left: white; border-right: white;">';	
		   		html +='		 <span>'+ item.nb +'</span>';
		   		html +='	</td>';
		   		html +='	<td style="border-left: white;">';		
		   		html +='			 <img';
		   		html +='			data-bundle-info--rocket-img=""';
		   		html +='			class="bundle-info__delivery-type__icon bundle-info__retail__icon__pc"';
		   		html +='			src="//img1a.coupangcdn.com/image/cmg/icon/ios/logo_rocket_large@3x.png"';
		   		html +='			height="16" alt="로켓배송 상품">';
		   		html +='	</td>	';
		   		html +='</tr>	';
	   			
		   		if(index === (data.length-1)) {
		   			html += '	</table>';
		   		}
		   });
	  $("#orderplus").html(html);
		},
		
		error: function(error) {
			console.log(error.status);
		}
	
	});
} 

//결제 금액 계산
function priceCalculate() {
	var totalPrice = parseInt($('#totalPrice').text().replace(/,/gi, ""));
	console.log("totalPrice : "+ totalPrice);
	var discount =parseInt($('#discount').text().replace(/,/gi, ""));	
	console.log("discount : "+ discount);
	var delFee =parseInt($('#delFee').text().replace(/,/gi, ""));
	console.log("delFee : "+ delFee);
	var balance =parseInt($('#balance').text().replace(/,/gi, ""));
	console.log("balance : "+ balance);
	if(isNaN(balance)){
		balance =0;
		parseInt($('#balance').text(0));
	}
	var price = parseInt($('#price').text().replace(/,/gi, ""));
	console.log("price : "+price);
	
	price = totalPrice - discount + delFee + balance
	

	point = parseInt(price*0.01);
	$('#price').text(price);
	$('#point').text(point);
	
	
}

function openAdress() {
   		window.open("addressSelect.jsp", "winLogin", "left=350, top=300, width=500, height=650");
}
function openRequest() {
		window.open("addressRequest.jsp", "winLogin", "left=350, top=300, width=530, height=650");
}


$(document).ready(function(){
	
   	// 초깃값 설정
    $('#credit-card-option').hide();
	$('#coupay-money-option').hide();
	$('#corporation-card-option').hide();
	$('#phone-option').hide();
	$('#deposit-without-bankbook-option').hide();
	$('#account-transfer-option').show();
	$('#deposit-without-bankbook-option-caution').hide();
	$('#selectPay').hide();
	$('#basicPay').show();
	$('#discount-info').hide();
	$('#expectPoint').css('display', 'none');
	
	$("input[name='pay-method']").change(function(){
		$('#expectPoint').css('display', 'none');
		// 계좌이체 선택 시.
		if($("input[name='pay-method']:checked").val() == '계좌이체'){
			$('#credit-card-option').hide();
			$('#coupay-money-option').hide();
			$('#corporation-card-option').hide();
			$('#phone-option').hide();
			$('#deposit-without-bankbook-option').hide();
			$('#account-transfer-option').show();
			$('#cash-receipt').show();
			$('#deposit-without-bankbook-option-caution').hide();
			$('#selectPay').hide();
			$('#basicPay').show();
			$('#discount-info').hide();
			
			$('#L_account-transfer').addClass("payMethod-arrow");
			$("#L_coupay-money").removeClass("payMethod-arrow");
			$("#L_credit-card").removeClass("payMethod-arrow");
			$("#L_corporation-card").removeClass("payMethod-arrow");
			$("#L_phone").removeClass("payMethod-arrow");
			$("#L_deposit-without-bankbook").removeClass("payMethod-arrow");
		
			
		}	
		// 쿠페이머니 선택 시.
		else if($("input[name='pay-method']:checked").val() == '쿠페이머니'){
			$('#credit-card-option').hide();
			$('#coupay-money-option').show();
			$('#corporation-card-option').hide();
			$('#phone-option').hide();
			$('#deposit-without-bankbook-option').hide();
			$('#account-transfer-option').hide();
			$('#cash-receipt').show();
			$('#deposit-without-bankbook-option-caution').hide();
			$('#selectPay').hide();
			$('#basicPay').show();
			$('#discount-info').hide();
			$('#expectPoint').css('display', 'inline-block');
			
			
			$("#L_coupay-money").addClass("payMethod-arrow");
			$('#L_account-transfer').removeClass("payMethod-arrow");
			$("#L_credit-card").removeClass("payMethod-arrow");
			$("#L_corporation-card").removeClass("payMethod-arrow");
			$("#L_phone").removeClass("payMethod-arrow");
			$("#L_deposit-without-bankbook").removeClass("payMethod-arrow");
		
			
		}
		// 신용/체크카드 결제 선택 시.
		else if($("input[name='pay-method']:checked").val() == '신용/체크카드'){
			$('#credit-card-option').show();
			$('#coupay-money-option').hide();
			$('#corporation-card-option').hide();
			$('#phone-option').hide();
			$('#deposit-without-bankbook-option').hide();
			$('#account-transfer-option').hide();
			$('#cash-receipt').hide();
			$('#deposit-without-bankbook-option-caution').hide();
			$('#selectPay').hide();
			$('#basicPay').show();
			$('#discount-info').show();
			
			$("#L_credit-card").addClass("payMethod-arrow");
			$("#L_coupay-money").removeClass("payMethod-arrow");
			$('#L_account-transfer').removeClass("payMethod-arrow");
			$("#L_corporation-card").removeClass("payMethod-arrow");
			$("#L_phone").removeClass("payMethod-arrow");
			$("#L_deposit-without-bankbook").removeClass("payMethod-arrow");
		}
		// 법인카드 선택 결제 시
		else if($("input[name='pay-method']:checked").val() == '법인카드'){
			$('#credit-card-option').hide();
			$('#coupay-money-option').hide();
			$('#corporation-card-option').show();
			$('#phone-option').hide();
			$('#deposit-without-bankbook-option').hide();
			$('#account-transfer-option').hide();
			$('#cash-receipt').hide();
			$('#deposit-without-bankbook-option-caution').hide();
			$('#selectPay').hide();
			$('#basicPay').show();
			$('#discount-info').hide();
			
			$("#L_corporation-card").addClass("payMethod-arrow");
			$("#L_credit-card").removeClass("payMethod-arrow");
			$("#L_coupay-money").removeClass("payMethod-arrow");
			$('#L_account-transfer').removeClass("payMethod-arrow");
			$("#L_phone").removeClass("payMethod-arrow");
			$("#L_deposit-without-bankbook").removeClass("payMethod-arrow");
		}
		// 휴대폰 선택 결제 시
		else if($("input[name='pay-method']:checked").val() == '휴대폰'){
			$('#credit-card-option').hide();
			$('#coupay-money-option').hide();
			$('#corporation-card-option').hide();
			$('#phone-option').show();
			$('#deposit-without-bankbook-option').hide();
			$('#account-transfer-option').hide();
			$('#cash-receipt').hide();
			$('#deposit-without-bankbook-option-caution').hide();
			$('#selectPay').show();
			$('#basicPay').hide();
			$('#discount-info').hide();
			
			$("#L_phone").addClass("payMethod-arrow");
			
			$("#L_credit-card").removeClass("payMethod-arrow");
			$("#L_corporation-card").removeClass("payMethod-arrow");
			$("#L_coupay-money").removeClass("payMethod-arrow");
			$('#L_account-transfer').removeClass("payMethod-arrow");
			$("#L_corporation-card").removeClass("payMethod-arrow");
			$("#L_deposit-without-bankbook").removeClass("payMethod-arrow");
		}
		// 무통장입금 선택 결제 시
		else if($("input[name='pay-method']:checked").val() == '무통장입금'){
			$('#credit-card-option').hide();
			$('#coupay-money-option').hide();
			$('#corporation-card-option').hide();
			$('#phone-option').hide();
			$('#deposit-without-bankbook-option').show();
			$('#account-transfer-option').hide();
			$('#cash-receipt').show();
			$('#deposit-without-bankbook-option-caution').show();
			$('#selectPay').hide();
			$('#basicPay').show();
			$('#discount-info').hide();
			
			$("#L_phone").removeClass("payMethod-arrow");
			$("#L_corporation-card").removeClass("payMethod-arrow");
			$("#L_coupay-money").removeClass("payMethod-arrow");
			$('#L_account-transfer').removeClass("payMethod-arrow");
			$("#L_corporation-card").removeClass("payMethod-arrow");
			$("#L_credit-card").removeClass("payMethod-arrow");
			
			$("#L_deposit-without-bankbook").addClass("payMethod-arrow");
		}
	});
	
	
	//현금 영수증 체크박스에 따라 아래 요소 숨기기
	$('#cash-receipt-type').hide();
	$('#cash-receipt-application').click(function(){
		   
		var checked = $('#cash-receipt-application').prop('checked');
		if (checked) {
			 $('#cash-receipt-type').show();
			 
	 	} else if (!checked) {
			 
			 $('#cash-receipt-type').hide();
 	 	}
	});
	
	//현금 영수증 라디오박스에 따라 요소 바꾸기
	$('#proof-of-expenditure-option').hide();
	
	$("input[name='cash-receipt-type']").change(function(){
		// 계좌이체 선택 시.
		if($("input[name='cash-receipt-type']:checked").val() == 'income-deduction'){
			$('#income-deduction-option').show();
			$('#proof-of-expenditure-option').hide();
			
			var select = $("#income-deduction-option option:selected").val();
			if(select === "pnum") {
				$('#numErr1').show();
				$('#numErr2').hide();
				$('#numErr3').hide();
			} else if(select === "cash-card"){
				$('#numErr1').hide();
				$('#numErr2').show();
				$('#numErr3').hide();
			}
			
		} else if($("input[name='cash-receipt-type']:checked").val() == 'proof-of-expenditure'){
			$('#proof-of-expenditure-option').show();
			$('#income-deduction-option').hide();
			var select = $("#proof-of-expenditure-option option:selected").val();
			
			if(select === "cash-card") {
				$('#numErr1').hide();
				$('#numErr2').show();
				$('#numErr3').hide();
			} else if(select === "biznum"){
				$('#numErr1').hide();
				$('#numErr2').hide();
				$('#numErr3').show();
			}
		}
	});
	
	//현금 영수증 체크박스에 따라 인풋 넘버 바꾸기
	$('#numErr1').show();
	$('#numErr2').hide();
	$('#numErr3').hide();
	
	$('#income-deduction-option').change(function(){
		$('#numErr1').hide();
		$('#numErr2').hide();
		$('#numErr3').hide();
		var select = $("#income-deduction-option option:selected").val();
		if(select === "pnum") {
			$('#numErr1').show();
			$('#numErr2').hide();
			$('#numErr3').hide();
		} else if(select === "cash-card"){
			$('#numErr1').hide();
			$('#numErr2').show();
			$('#numErr3').hide();
		}
		
	});

	$('#proof-of-expenditure-option').change(function(){
		
		$('#numErr1').hide();
		$('#numErr2').show();
		$('#numErr3').hide();
		var select = $("#proof-of-expenditure-option option:selected").val();
		if(select === "cash-card") {
			$('#numErr1').hide();
			$('#numErr2').show();
			$('#numErr3').hide();
		} else if(select === "biznum"){
			$('#numErr1').hide();
			$('#numErr2').hide();
			$('#numErr3').show();
		}
		
	});
	
	
	//전화번호 수정 유효성 검사
	$('#telErr1').hide();
	$('#telErr2').hide();
	$('#certiNote').hide();
	$('#certiNum').hide();
	$('#certiBtn').hide();
	
	$('#telBtn').click(function(){
		
		var isValidation = true;
		$('#telBtn').html('수정');
		$('#telErr1').hide();
		$('#telErr2').hide();
		$("#tel").css("border", "1px solid #9A9A9A");
		//전화번호 수정 유효성 검사
		var tel = $("#tel").val();
			if(tel ==="") {
				isValidation = false;
				var telErr1 = $("#telErr1");
				$('#telErr1').show();
				$("#tel").css("border", "1px solid red");
				$('#telErr2').hide();
				$('#certiNote').hide();
				$('#certiNum').hide();
				$('#certiBtn').hide();
				
				
			} else if(tel === $("#tel").prop("defaultValue")) {
				$('#telErr1').hide();
				$('#telErr2').show();
				$("#tel").css("border", "1px solid red");
				$('#certiNote').hide();
				$('#certiNum').hide();
				$('#certiBtn').hide();
				
				
			} 
			
			else {
				var pattern = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
				var result = pattern.test(tel);
				if(!result) {
   				isValidation = false;
   				$("#tel").css("border", "1px solid red");
   				$('#telErr1').show();
   				$('#telErr2').hide();
   				$('#certiNote').hide();
   				$('#certiNum').hide();
   				$('#certiBtn').hide();
   			}
				if(result) {
					$('#certiNote').show();
					$('#certiNum').show();
					$('#certiBtn').show();
					$('#telBtn').html('재발송');
				}
				
			}
			
			$("#tel").val($("#tel").val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
		
			if(!isValidation) {
	  			event.preventDefault();
	  		}
	});
	
		//인증번호 클릭 이벤트
		$('#certiBtn').click(function(){
			var num = $("#certiNum").val();
			
			if(num==="") {
				$('#certiNote').text("알 수 없는 에러입니다.");
				$('#certiNote').css("color", "red");
				$("#certiNum").css("border", "1px solid red");
				
			}
			else if(num.length === 6) {
				$('#certiNote').hide();
				$('#certiNum').hide();
				$('#certiBtn').hide();
				$('#telBtn').html('수정');
			} else {
				$('#certiNote').text("인증번호를 잘못 입력하셨습니다.");
				$('#certiNote').css("color", "red");
				$("#certiNum").css("border", "1px solid red");
			}
			
		});
		
		
		//할인쿠폰 입력 클릭 이벤트
		$('#dicountRow').hide();
		$('#couponSelect').click(function(){
			$('#dicountRow').toggle();
			
		});
		
		$('#couponUse').click(function(){
			if($("#couponUse").is(":checked")){
	            var couponPrice = parseInt($('#couponDiscount').text().replace(/,/gi, ""));	
	            
	            $('#discount').text(couponPrice);

	            priceCalculate();
	        }else if(!$("#couponUse").is(":checked")){
	        	$('#discount').text(0);
	        	priceCalculate();
	        }
		});
		
		
		
		
		
		//쿠팡캐시 입력 클릭 이벤트
		$('#cuCashrow').hide();
		$('#cuCashInput').click(function(){
			$('#cuCashrow').toggle();
			
		});
		
		
		//쿠팡캐시 모두사용 체크 이벤트
		$('#allUse').click(function(){
			if($("#allUse").is(":checked")){
	            var allCash = parseInt($('#cuBal').text());
	            //$('#cuCash').attr('value', allCash);
	           
	            $('#cuCash').val(allCash);
	            console.log(allCash);
	            console.log(cuCash);
	        }else if(!$("#allUse").is(":checked")){
	        	$('#cuCash').val(0);
	        }
		});
		
		//쿠팡캐시 적용 클릭 이벤트
		$('#cuCashApply').click(function(){
			$("#cashOver").css("display", "none"); 	
			var balance = parseInt( $('#cuBal').text())
			 	
			if(($("#cuCash").val())>balance){
				console.log($("#cuCash").val());
				$("#cashOver").css("display", "block");
				
			} else if(($("#cuCash").val())<=balance) {
				$("#balance").text('-' + $('#cuCash').val()); 
				$('#cuCashrow').hide();
				priceCalculate();
				
			} else {
				console.log($("#cuCash").val());
				$('#cuCash').val(0);
				priceCalculate();
				$("#balance").text($('#cuCash').val()); 
			}
		});
		
		
		
		
	
	//계좌이체 선택 유효성 검사
	$('#account-transfer-no-choice').hide();
	$('#account-transfer-choice-bank').change(function(){

		$('#account-transfer-no-choice').hide();
		var nonselect = $("#account-transfer-choice-bank option:selected").val();
		
		if(nonselect === "none") {
				$('#account-transfer-no-choice').show();
			} else {
				$('#account-transfer-no-choice').hide();
			}
		
		
	});
	
	//할부기간 알림 메세지
	$('#interest-free-note').hide();
	$('#installment-period').change(function(){
		
		$('#interest-free-note').hide();
		var select = $("#installment-period option:selected").val();
		
		if(select === "pay-in-full") {
			$('#interest-free-note').hide();
			$('#pay-in-full-note').show();
		} else if(select !== "pay-in-full"){
			$('#interest-free-note').show();
			$('#pay-in-full-note').hide();
		}
		
		
	});
	//법인카드 선택 유효성 검사
	$('#coporation-card-no-choice').hide();
	$('#coporation-card-choice').change(function(){
		
		$('.account-transfer-no-choice').hide();
		var nonselect = $("#coporation-card-choice option:selected").val();
		
		if(nonselect === "none") {
			$('#coporation-card-no-choice').show();
		} else {
			$('#coporation-card-no-choice').hide();
		}
		
		
	});
	
	//통신사 선택 유효성 검사
	$('#mobile-corp-no-choice').hide();
	$('#mobile-corp').change(function(){
		
		$('mobile-corp-no-choice').hide();
		var nonselect = $("#mobile-corp option:selected").val();
		
		if(nonselect === "none") {
			window.alert("통신사를 선택해주세요");
			$('#mobile-corp-no-choice').show();
		} else {
			$('#mobile-corp-no-choice').hide();
		}
		
		
	});
	
	//무통장입금 계좌 선택 유효성 검사
	$('#bank-no-choice').hide();
	$('#bank-choice').change(function(){
		
		$('bank-no-choice').hide();
		var nonselect = $("#bank-choice option:selected").val();
		
		if(nonselect === "none") {
			$('#bank-no-choice').show();
		} else {
			$('#bank-no-choice').hide();
		}
		
		
	});
	
	//무통장입금 계좌 선택 유효성 검사
	$('#bank-no-choice').hide();
	$('#bank-choice').change(function(){
		
		$('bank-no-choice').hide();
		var nonselect = $("#bank-choice option:selected").val();
		
		if(nonselect === "none") {
			$('#bank-no-choice').show();
		} else {
			$('#bank-no-choice').hide();
		}
		
		
	});
	
	//현금영수증 선택 유효성 검사
	$('#biznumErr').hide();
	$('#telnumErr').hide();
	$('#cashnumErr').hide();
		
		$('.payb').click(function(){
			//현금 영수증 수정 유효성 검사
			$('#biznumErr').hide();
			$('#telnumErr').hide();
			$('#cashnumErr').hide();
			if($("input[name='cash-receipt-type']:checked").val() == 'income-deduction'){
				var select = $("#income-deduction-option option:selected").val();
				if(select === "pnum") {
					var tel = $("#numErr1").val();
					console.log(tel);
					if(tel ==="") {
						console.log(tel);
						$('#biznumErr').hide();
						$('#cashnumErr').hide();
						$('#telnumErr').show();
						console.log(select);
					} else{
						var pattern = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
						var result = pattern.test(tel);
						if(!result) {
			   			$('#biznumErr').hide();
			   			$('#cashnumErr').hide();
			   			$('#telnumErr').show();
						}
				}
				
				} else if(select === "cash-card"){
					var cashnum = $("#numErr2").val();
					if(cashnum ==="") {
						$('#biznumErr').hide();
						$('#telnumErr').hide();
						$('#cashnumErr').show();
						} else {
							var pattern = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
							var result = pattern.test(cashnum);
							if(!result) {
			   				$('#biznumErr').hide();
			   				$('#telnumErr').hide();
			   				$('#cashnumErr').show();
							}
					}
				}
				
				
			} else {
				
				$('#biznumErr').hide();
				$('#telnumErr').hide();
				$('#cashnumErr').hide();
				
				var select = $("#proof-of-expenditure-option option:selected").val();
					
					if(select === "cash-card") {
						//현금영수증카드번호 수정 유효성 검사	
						var cashnum = $("#numErr2").val();
						if(cashnum ==="") {
							$('#biznumErr').hide();
							$('#telnumErr').hide();
							$('#cashnumErr').show();
						} else {
							var pattern = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
							var result = pattern.test(cashnum);
							if(!result) {
			   				
			   				$('#biznumErr').hide();
			   				$('#telnumErr').hide();
			   				$('#cashnumErr').show();
							}
						}
						
					} else if(select === "biznum"){
						//사업자번호 수정 유효성 검사
						var biznum = $("#numErr3").val();	
							if(biznum ==="") {
								$('#telnumErr').hide();
								$('#cashnumErr').hide();
								$('#biznumErr').show();
							} else {
								var pattern = /^(01[016789]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
								var result = pattern.test(biznum);
								if(!result) {
				   				
				   				$('#telnumErr').hide();
				   				$('#cashnumErr').hide();
				   				$('#biznumErr').show();
								}
							}
					
					
						}
		
			}
					
			})
		
				
				
		
	});


