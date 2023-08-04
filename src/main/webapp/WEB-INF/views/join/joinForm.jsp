<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="http://www.google.com/s2/favicons?domain=https://login.coupang.com/login/memberJoinFrm.pang" type="image/x-ico">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/joinForm.css">
		<script src="${pageContext.request.contextPath}/resources/js/joinForm.js"></script>
		<title>회원가입</title>
	</head>
	<body>
		<div class="wrapper">
			<header class="join_header">
				<img src="${pageContext.request.contextPath}/resources/images/skkcandle_nuki2.png"/>
			</header>

			<section id="join_section">
				<div id="section_name">회원정보를 입력해주세요.</div>
				
				<%-- 사용자 정보 입력 --%>
				<div id="join_input">
					<%-- 이메일(아이디) --%>
					<form id="join_input_form" method="post" action="join/register">
						<div class="join_input_userInfo">
							<label for="userEmail">
								<span class="join_input_icon_box">
									<i class="join_input_icon icon_email"></i>
								</span>
								<span class="join_input_box">
									<input type="email" class="join_input_content" id="userEmail" name="userEmail" value=""
										placeholder="${register_msg}" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '${register_msg}'"/>
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
									<input type="password" class="join_input_content" id="userPassword" name="userPassword" value="${user.userPassword }"
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
									<input type="text" class="join_input_content" id="userName" name="userName" value="${user.userName }"
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
									<input type="text" class="join_input_content" id="userPhone" name="userPhone" value="${user.userPhone }"
										placeholder="휴대폰 번호" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '휴대폰 번호'"/>
								</span>
							</label>
						</div>
						<div class="join_input_userInfo">
							<label for="userAddress">
								<span class="join_input_icon_box">
									<i class="join_input_icon icon_email"></i>
								</span>
								<span class="join_input_box">
									<input type="text" class="join_input_content" id="userAddress" name="userAddress" value="${user.userAddress }"
										placeholder="주소" autocomplete="off" onfocus="this.placeholder = ''" onblur="this.placeholder = '주소'"/>
								</span>
							</label>
						</div>
					</form>
				</div>
				
				<%-- 모든 약관 동의 --%>
				<div id="join_terms_chkAll">
				    <div id="join_terms">
				        <input type="checkbox" id="chk_checkall" aria-hidden="true">
				        <!-- <label for="chk_checkall" role="checkbox" aria-label="모두 확인하였으며 동의합니다" aria-checked="false">
				            <i aria-hidden="true" class="icon_chk"></i> -->
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
				        <input type="checkbox" id="chk_join-terms-fourteen" name="cbox" >
				        <!-- <label for="chk_join-terms-fourteen" role="checkbox" aria-label="만 14세 이상입니다" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i> -->
				            <span aria-hidden="true">[필수] 만 14세 이상입니다</span>
				        </label>
					</div>
					<div id="c-checkbox-item_join-terms-commerce" class="join_terms_frame">
				        <input type="checkbox" id="chk_join-terms-commerce" name="cbox">
				       <!--  <label for="chk_join-terms-commerce" role="checkbox" aria-label="전자금융거래 이용약관 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i> -->
				            <span aria-hidden="true">[필수] 전자금융거래 이용약관 동의</span>
				        </label>
					</div>
					<div id="c-checkbox-item_join-terms-privacy-collect-use" class="join_terms_frame">
				        <input type="checkbox" id="chk_join-terms-privacy-collect-use" name="cbox">
				        <!-- <label for="chk_join-terms-privacy-collect-use" role="checkbox" aria-label="개인정보 수집 및 이용 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i> -->
				            <span aria-hidden="true">[필수] 개인정보 수집 및 이용 동의</span>
				        </label>
					</div>
					<div id="c-checkbox-item_agree-to-collect-third-part-information" class="join_terms_frame">
				        <input type="checkbox" id="chk_agree-to-collect-third-part-information" name="cbox">
				        <!-- <label for="chk_agree-to-collect-third-part-information" role="checkbox" aria-label="개인정보 제3자 제공 동의" aria-checked="false">
				            <i aria-hidden="true" class="icon-chk"></i> -->
				            <span aria-hidden="true">[필수] 개인정보 제3자 제공 동의</span>
				        </label>
					</div>
   				 </ul>
   				 
				<%-- 확인 버튼 --%>
				<div class="join_submit_button">
				    <button type="submit" class="button_style" form="join_input_form">
				           동의하고 계속하기
				    </button>
				</div>
				
				<%-- tip 메세지 --%>
				<!-- <div id="join_helpMessage">
					<p>법인 고객이신가요?</p>
					<p>사업자 회원으로 전용 특가 혜택을 누려보세요.</p>
					<a href="https://login.coupang.com/corporation/member/landing-page">쿠팡비즈 간편가입</a>			
				</div> -->
			</section>
			
			<%-- 푸터영역 --%>
			<footer id="join_footer">
				<p>©SkksCandle Corp. All rights reserved.</p>
			</footer>
		</div>
	</body>
</html>