<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="http://www.google.com/s2/favicons?domain=https://login.coupang.com/login/memberJoinFrm.pang" type="image/x-ico">
		<link rel="stylesheet" href="joinForm.css">
		<title>회원가입</title>
	</head>
	<body>
		<div class="wrapper">
			<header class="join_header">
				<img src="https://static.coupangcdn.com/image/static/login/logo-coupang.x2.20201201.png"/>
			</header>

			<section id="join_section">
				<div id="section_name">회원정보를 입력해주세요.</div>
				
				<%-- 사용자 정보 입력 --%>
				<div id="join_input">
					<%-- 이메일(아이디) --%>
					<form id="join_input_form" method="post" action="">
						<div class="join_input_userInfo">
							<label for="userEmail">
								<span class="join_input_icon_box">
									<i class="join_input_icon icon_email"></i>
								</span>
								<span class="join_input_box">
									<input type="email" class="join_input_content" id="userEmail" name="userEmail" 
										placeholder="아이디(이메일)" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디(이메일)'"/>
								</span>
							</label>
						</div>
						<%-- 비밀번호 --%>
						<div class="join_input_userInfo">
							<label for="userPassword">
								<span class="join_input_icon_box">
									<i class="join_input_icon icon_password"></i>
								</span>
								<span class="join_input_box">
									<input type="password" class="join_input_content" id="userPassword" name="userPassword" 
										placeholder="비밀번호" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'"/>
								</span>
							</label>
						</div>
						<%-- 비밀번호 확인 --%>
						<div class="join_input_userInfo">
							<label for="userCheckPassword">
								<span class="join_input_icon_box">
									<i class="join_input_icon icon_checkPassword"></i>
								</span>
								<span class="join_input_box">
									<input type="password" class="join_input_content" id="userCheckPassword" name="userCheckPassword" 
										placeholder="비밀번호 확인" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호 확인'"/>
								</span>
							</label>
						</div>
						<%-- 이름 --%>
						<div class="join_input_userInfo">
							<label for="userName">
								<span class="join_input_icon_box">
									<i class="join_input_icon icon_name"></i>
								</span>
								<span class="join_input_box">
									<input type="text" class="join_input_content" id="userName" name="userName" 
										placeholder="이름" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'"/>
								</span>
							</label>
						</div>
						<%-- 전화번호 --%>
						<div class="join_input_userInfo">
							<label for="userTel">
								<span class="join_input_icon_box">
									<i class="join_input_icon icon_tel"></i>
								</span>
								<span class="join_input_box">
									<input type="tel" class="join_input_content" id="userTel" name="userTel" 
										placeholder="휴대폰 번호" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '휴대폰 번호'"/>
								</span>
							</label>
						</div>
					</form>
				</div>
				
				<%-- 모든 약관 동의 --%>
				<div id="join_terms_chkAll">
				    <div id="join_terms">
				        <input type="checkbox" id="chk_checkall" aria-hidden="true">
				        <label for="chk_checkall" role="checkbox" aria-label="모두 확인하였으며 동의합니다" aria-checked="false">
				            <i aria-hidden="true" class="icon_chk"></i>
				            <span aria-hidden="true">모두 확인하였으며 동의합니다.</span>
				        </label>
				    </div>
				    <span class="chk_all_message">
	                	전체 동의에는 필수 및 선택 정보에 대한 동의가 포함되어 있으며,&nbsp;개별적으로 동의를 선택 하실 수 있습니다.&nbsp;선택 항목에 대한 동의를 거부하시는 경우에도 서비스 이용이 가능합니다.
	            	</span>
				</div>
				
				<%-- 약관 동의 목록 --%>
				<ul class="join_terms_other">
			        <div class="join_terms_frame">
				        <input type="checkbox" id="chk_join-terms-fourteen">
				        <label for="chk_join-terms-fourteen" role="checkbox" aria-label="만 14세 이상입니다" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[필수] 만 14세 이상입니다</span>
				        </label>
					</div>
					<div class="join_terms_frame">
				        <input type="checkbox" id="chk_join-terms-service">
				        <label for="chk_join-terms-service" role="checkbox" aria-label="쿠팡 이용약관 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[필수] 쿠팡 이용약관 동의</span>
				        </label>
					</div>
					<div id="c-checkbox-item_join-terms-commerce" class="join_terms_frame">
				        <input type="checkbox" id="chk_join-terms-commerce">
				        <label for="chk_join-terms-commerce" role="checkbox" aria-label="전자금융거래 이용약관 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[필수] 전자금융거래 이용약관 동의</span>
				        </label>
					</div>
					<div id="c-checkbox-item_join-terms-privacy-collect-use" class="join_terms_frame">
				        <input type="checkbox" id="chk_join-terms-privacy-collect-use">
				        <label for="chk_join-terms-privacy-collect-use" role="checkbox" aria-label="개인정보 수집 및 이용 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[필수] 개인정보 수집 및 이용 동의</span>
				        </label>
					</div>
					<div id="c-checkbox-item_agree-to-collect-third-part-information" class="join_terms_frame">
				        <input type="checkbox" id="chk_agree-to-collect-third-part-information">
				        <label for="chk_agree-to-collect-third-part-information" role="checkbox" aria-label="개인정보 제3자 제공 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[필수] 개인정보 제3자 제공 동의</span>
				        </label>
					</div>
					<div id="c-checkbox-item_POLICY_AGREE_COLLECT" class="join_terms_frame">
		      			<input type="checkbox" id="chk_POLICY_AGREE_COLLECT">
				        <label for="chk_POLICY_AGREE_COLLECT" role="checkbox" aria-label="마케팅 목적의 개인정보 수집 및 이용 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[선택] 마케팅 목적의 개인정보 수집 및 이용 동의</span>
				        </label>				
					</div>
					<div id="c-checkbox-item_agree-to-receive-ads" class="join_terms_frame">
				        <input type="checkbox" id="chk_agree-to-receive-ads">
				        <label for="chk_agree-to-receive-ads" role="checkbox" aria-label="광고성 정보 수신 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[선택] 광고성 정보 수신 동의</span>
				        </label>							
					</div>
					<div id="c-checkbox-item_POLICY_AGREE_EMAIL" class="join_terms_frame marketing_consent">
				        <input type="checkbox" id="chk_POLICY_AGREE_EMAIL">
				        <label for="chk_POLICY_AGREE_EMAIL" role="checkbox" aria-label="이메일 수신 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[선택] 이메일 수신 동의</span>
				        </label>								
					</div>
					<div id="c-checkbox-item_POLICY_AGREE_SMS" class="join_terms_frame marketing_consent">
				        <input type="checkbox" id="chk_POLICY_AGREE_SMS">
				        <label for="chk_POLICY_AGREE_SMS" role="checkbox" aria-label="SMS, SNS 수신 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[선택] SMS, SNS 수신 동의</span>
				        </label>	
					</div>
					<div class="join_terms_frame marketing_consent">
				        <input type="checkbox" id="chk_POLICY_AGREE_MARKETING_PUSH">
				        <label for="chk_POLICY_AGREE_MARKETING_PUSH" role="checkbox" aria-label="앱 푸시 수신 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i>
				            <span aria-hidden="true">[선택] 앱 푸시 수신 동의</span>
				        </label>
					</div>
   				 </ul>
   				 
				<%-- 확인 버튼 --%>
				<div class="join_submit_button">
				    <button type="button" class="button_style">
				           동의하고 계속하기
				    </button>
				</div>
				
				<%-- tip 메세지 --%>
				<div id="join_helpMessage">
					<p>법인 고객이신가요?</p>
					<p>사업자 회원으로 전용 특가 혜택을 누려보세요.</p>
					<a href="https://login.coupang.com/corporation/member/landing-page">쿠팡비즈 간편가입</a>			
				</div>
			</section>
			
			<%-- 푸터영역 --%>
			<footer id="join_footer">
				<p>©Coupang Corp. All rights reserved.</p>
			</footer>
		</div>
	</body>
</html>