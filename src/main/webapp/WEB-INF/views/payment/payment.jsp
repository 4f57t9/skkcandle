<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="/html_css_javascript/favicon.ico"
			type="image/x-icon">
		<title>Insert title here</title>
		
		
		<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/payment/payment.css">
		<script src="${pageContext.request.contextPath}/resources/js/payment/payment.js"></script>
	
	</head>

	<body>
		<div id="wrapper">
		
			<!-- 헤더 -->
			<section class="d-flex-column mx-auto " style="width: 1250px;">
				<header class="border-h">
							<div class="head">
								<img 
									src="//image7.coupangcdn.com/image/coupang/common/logo_coupang_w350.png"
									width="174" height="41" alt="쿠팡">
							</div>
					</header>
			</section>
			
			<hr>
			
			<!-- 바디 -->
			<section class="d-flex-column mx-auto " style="width: 1250px;">
					
					<!-- 페이지창 -->
				<div class="d-flex justify-content-between" style="border-bottom: 3px solid #777">
					<h3>주문/결제</h3>
					<span class="align-self-center"> <span style="color: #346AFF">주문결제></span>주문완료
					</span>
				</div>
				
				<form onsubmit="return false;">
				
					<!-- 구매자 정보 -->
					<div class="">
						<h2>구매자정보</h2>
						<table class="consumerInfo">
							<tr>
								<th>이름</th>
								<td>${userinfo.userName }</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>${userinfo.userEmail }</td>
							</tr>
							<tr>
								<th>휴대폰 번호</th>
								<td>${userinfo.userPhone }</td>
							</tr>
							<tr>
								<th>배송주소</th>
								<td>${userinfo.userAddress } <span style="margin-left: 10px;"><button id="transAddress" onclick="openAdress()"> 배송지변경</button></span></td>
								
							</tr>
						</table>
					</div>
	
					
	
					<!--배송 n건중 n -->
					<div class="">
						<h2>배송 상품</h2>
						<div id="orderplus">
						<table class="consumerInfo">
							<%-- <c:forEach var="products" items=${buyProducts} > --%>
								<tr>
									<th>${productinfo}</th>
									<td>${productnum } 개</td>
								</tr>
							<%-- </c:forEach> --%>
						</table>
						</div>
					</div>
	
	
					<!-- 결제 정보 -->
					<div id="payInfo" class="">
						<h2>결제 정보</h2>
						<table class="payInfomation">
							<tr>
								<th>총상품가격</th>
								<td><span id="totalPrice">${productnum*productprice}</span>원</td>
							</tr>
							<tr>
								<th>적립금</th>
								<td style="margin:0px; padding:0px;">
									<div style=" padding-top:10px; padding-left:16px; padding-bottom:10px;">
										<span style="display:inline-block; width:155px;"><span id ="balance"> 0 </span><span>원</span></span>
										<span style="padding-top:20px;">보유 : <span id="cuBal">302</span>원</span>
										<button id="cuCashInput">쿠팡캐시입력</button>
									</div>
								
									<div id="cuCashrow" style="background-color: #f8f8f8; padding-bottom:16px; padding-top:10px;">
									 	
										<input id="cuCash" type="number" value="0" placeholder="0" name="cuCash" style="margin-left: 170px;">원 | 
										<input id="allUse" type="checkbox" name="allUse"> 모두사용
										<div><button id="cuCashApply" style="margin-left: 170px; margin-top:10px;">쿠팡캐시적용</button></div>
										
										
										<div id="cashOver" class="choice-error" style="color: red; padding-left: 17px; margin-left: 170px; display: none;">
										사용가능한 캐시를 초과 입력하였습니다.
										</div>
									</div> 
								</td>
							</tr>	
							
							<tr>
								<th>총결제금액</th>
								<td><span id="price">34,900</span>원<span id="expectPoint" style="margin-left: 100px; display=none;">캐시적립 예정 : <span id="point">399</span>원</span></td>
							</tr>
							<tr>
								<th>결제 방법</th>
								<td>
								 <div class="payMethod">
									<div id="L_account-transfer" class="payMethod-arrow">
										<label><input id="account-transfer" class="cash"
											type="radio" name="pay-method" value="계좌이체" checked="checked"> 계좌이체 </label></div>
										
									<div id="L_coupay-money" >
										<label><input id="coupay-money" class="cash"
											type="radio" name="pay-method" value="쿠페이머니"> 쿠페이 머니 <img
											class="rpay-badge rpay-icon-2percent"
											src="//image7.coupangcdn.com/image/rocketpay/order/icon_max_cashback_v2.png"
											width="66" height="14" alt="최대 캐시적립"> </label></div>
									
									<div id="L_credit-card">
										<label><input
											id="credit-card" class="no-cash" type="radio" name="pay-method"
											value="신용/체크카드"> 신용/체크카드  </label></div>
									
									<div id="L_corporation-card">
										<label><input
											id="corporation-card" class="no-cash" type="radio"
											name="pay-method" value="법인카드"> 법인카드  </label></div>
									
									<div id="L_phone">
										<label><input
											id="phone" type="radio" class="no-cash" name="pay-method"
											value="휴대폰"> 휴대폰  </label></div>
									
									<div id="L_deposit-without-bankbook">
										<label><input
											id="deposit-without-bankbook" class="cash" type="radio"
											name="pay-method" value="무통장입금"> 무통장입금(가상계좌)  </label></div>
									 </div>		
										
										
										<!-- 계좌이체 선택시 옵션 -->
									<div id="account-transfer-option" class="pay_select">
										<div>
											<label><span style="padding-right:35px;">은행선택</span> <select id="account-transfer-choice-bank">
												<option value="none">선택</option>
												<option value="카카오뱅크">카카오뱅크</option>
												<option value="농협은행">농협은행</option>
												<option value="국민은행">국민은행</option>
												</select>
											</label>
										</div>
										
										<div id="account-transfer-no-choice" class="choice-error" style="color: red; padding-left: 17px;">은행을
											선택해주세요</div>
											
									</div> <!--  쿠페이 머니 선택 시 옵션 -->
									<div id="coupay-money-option" class="pay_select">
										<div><label>잔액</label> <span style="padding-left:70px; font-weight:bold">0원</span></div>
										<div style="border-top: 1px solid #e4e4e4; padding-top: 10px;">* 잔액이 부족할 경우, 결제 진행 시에 충전됩니다.</div>
										
									</div> <!-- 신용/체크카드 선택 시 옵션 -->
									<div id="credit-card-option" class="pay_select">
										<div>
											<label><span style="padding-right:35px;">카드선택</span>  <select>
													<option value="KB국민카드">KB국민카드</option>
													<option value="롯데카드">롯데카드</option>
													<option value="신한카드">신한카드</option>
											</select>
											</label>
											
											 <span style="padding-right:35px;"></span> <label style="font-weight: lighter"><input type="checkbox"
													checked="checked"> 김시온님 명의 카드</label>
											
										</div>
										<div style="border-top: 1px solid #e4e4e4; padding-top: 10px;"><label>
											<span style="padding-right:35px;">할부기간 </span> <span style="padding-right:35px;"> <select id="installment-period">
													<option value="pay-in-full">일시불</option>
													<option>2개월(무이자)</option>
													<option>3개월(무이자)</option>
													<option>6개월(부분무이자)</option>
													<option>12개월(부분무이자)</option>
													<option>24개월(부분무이자)</option>
														  </select>
											</span></label>
											 <span id="pay-in-full-note"> *할부는 50,000원 이상만 가능합니다.</span>
											 <span id="interest-free-note"> *무이자 할부 적용 제외 대상 : 법인, 개인사업자, 체크, 기프트, 선불,하이브리드 카드</span>
										</div>
										
									</div> <!-- 법인카드 선택시 옵션-->
									<div id="corporation-card-option" class="pay_select">
										<div><label>
											 <span style="padding-right:35px;">카드선택 </span> <span> <select id = "coporation-card-choice">
											 		<option value="none">선택</option>
													<option>KB국민카드</option>
													<option>롯데카드</option>
													<option>신한카드</option>
											</select>
											</span></label>
										</div>
										<div id="coporation-card-no-choice" class="choice-error" style="color: red; padding-left: 17px;">카드종류를
											선택해주세요</div>
										<div style="border-top: 1px solid #e4e4e4; padding-top: 10px;"><label>
											 <span style="padding-right:35px;">할부기간  </span> <span> <select disabled="disabled">
													<option>일시불</option>
											</select>
											</span></label> <span>법인카드는 일시불 결제만 가능합니다.</span>
										</div>
									</div> <!-- 휴대폰 결제 선택 시 옵션 -->
									<div id="phone-option" class="pay_select">
										<div><label> <span style="padding-right:35px;">통신사 종류 </span> <select id="mobile-corp">
												<option value="none">선택</option>
												<option value="SKT">SKT</option>
												<option value="KT">KT</option>
												<option value="헬로모바일">헬로모바일</option>
												<option value="KCT">KCT</option>
										</select>
										</label>
										</div>
										
										<div id="mobile-corp-no-choice"  class="choice-error" style="color: red; padding-left: 17px;">통신사
											정보를 추가해주세요.</div>
									</div> <!-- 무통장입금(가상계좌) 선택 시 옵션 -->
									<div id="deposit-without-bankbook-option" class="pay_select">
										
											<div>
												<label> <span style="padding-right:35px;">입금은행</span> <select id="bank-choice">
														<option value="none">선택</option>
														<option>농협은행</option>
														<option>국민은행</option>
														<option>신한은행</option>
												</select>
												</label>
											
											</div>
											<div id="bank-no-choice" class="choice-error" style="color: red; padding-left: 17px;">은행을
											선택해주세요</div>
											<div style="border-top: 1px solid #e4e4e4; padding-top: 10px;">
													<span style="padding-right:35px;">입금기한</span><span>2023년 07월 12일 10시 00분까지</span>
											</div>
												
											<div>* 현금으로 결제한 모든 금액은 우리은행과 채무지급보증계약을 체결하여 고객님의 안전거래를
													보장하고 있습니다.</div>
											
									</div>
									
										
										<div id="deposit-without-bankbook-option-caution"><span>무통장 입금 시 유의사항</span>
											<ul>
												<li>입금완료 후 상품품절로 인해 자동취소된 상품은 환불 처리해 드립니다.</li>
												<li>무통장입금 결제 시 부분취소가 불가하며 전체취소 후 다시 주문하시기 바랍니다.</li>
												<li>은행 이체 수수료가 발생될 수 있습니다. 입금시 수수료를 확인해주세요.</li>
											</ul>
										</div>
										
										
									<div id="discount-info">
											카드할인 및 무이자 할부 안내
									</div>
									<div id="selectPay" style="margin-top:10px;">
										<label style="cursor: pointer;"><input type="checkbox" checked="checked"> 선택한
											결제수단 및 휴대폰번호로 향후 결제 이용에 동의합니다.(선택)</label>
									</div>
									<div  id="basicPay"  style="margin-top:10px;">
										<label style="cursor: pointer;"><input type="checkbox" checked="checked"> 기본
											결제 수단으로 사용</label>
									</div></td>
							</tr>
						</table>
					</div>
	
	
					<!-- 현금영수증 -->
					<div id="cash-receipt" class="">
						<h2>현금영수증</h2>
						<div id="cash-border">
							<div>
								<label><input id="cash-receipt-application"
									type="checkbox" style="height: 17px; width: 17px;"> 현금 영수증 신청</label>
							</div>
							
							<div id="cash-receipt-type">
								<div style="border-top: 1px solid #ddd; padding-top: 10px;">
									<label style="padding-right: 20px;"><input id="income-deduction" type="radio"
										name="cash-receipt-type" value="income-deduction"
										checked="checked">소득 공제</label> 
										
										<label><input
										id="proof-of-expenditure" type="radio" name="cash-receipt-type"
										value="proof-of-expenditure">지출 증빙</label>
								</div>
								<span>
									<select id="income-deduction-option">
										<option value="pnum">휴대폰번호</option>
										<option value="cash-card">현금영수증카드</option>
									</select> 
									
									
									<select id="proof-of-expenditure-option">
										<option value="cash-card">현금영수증카드</option>
										<option value="biznum">사업자번호</option>
										
									</select>
									<input id="numErr1" type="text" placeholder="휴대폰 번호만 입력해 주세요." name="휴대폰번호"/>
									<input id="numErr2" type="text" placeholder="현금영수증카드만 입력해 주세요." name="현금영수증카드"/>
									<input id="numErr3" type="text" placeholder="사업자번호만 입력해 주세요." name="사업자번호"/>
									
								</span>	
									<div id="biznumErr" style="color: red; padding-left: 17px;"><img class="cash-receipt__validation-message-icon" src="//img1a.coupangcdn.com/image/coupang/subscription/cart/pc/ico/ico_notice_20161024.png" width="12" height="12" style="margin-bottom:5px;">
									올바른 사업자번호를 입력해 주세요.</div>
									<div id="telnumErr" style="color: red; padding-left: 17px;"><img class="cash-receipt__validation-message-icon" src="//img1a.coupangcdn.com/image/coupang/subscription/cart/pc/ico/ico_notice_20161024.png" width="12" height="12" style="margin-bottom:5px;">
									올바른 휴대폰번호를 입력해 주세요.</div>
									<div id="cashnumErr" style="color: red; padding-left: 17px;"><img class="cash-receipt__validation-message-icon" src="//img1a.coupangcdn.com/image/coupang/subscription/cart/pc/ico/ico_notice_20161024.png" width="12" height="12" style="margin-bottom:5px;">
									올바른 현금영수증 카드를 입력해 주세요.</div>
								
							</div>
							
							
							<div  style="font-size: 12px; font-family: sans-serif; color: #555; margin-top: 10px;">* 해외구매대행 / 로켓직구 구매금액은 현금영수증 발행이 제외됩니다.</div>
							<div  style="font-size: 12px; font-family: sans-serif; color: #555;">* 쿠팡캐시 결제시 현금성 적립액에 한하여 현금영수증이 발행됩니다.</div>
						</div>
					</div>
	
					<!-- 주문 내용 확인, 동의 메시지 -->
					<div class="text-center" id="agreeMessage">위 주문 내용을 확인 하였으며, 회원 본인은 개인정보 이용 및
						제공(해외직구의 경우 국외제공) 및 결제에 동의합니다.</div>
					<div class="text-center" id="payButton">
						<button class="payb" style="border: none; box-shadow: 0 0 0">
								<div>
								<img id = "maxCash"
								style="cursor: pointer; font-size: 11px; width: 96px;"
								class="paymentRocketpayBtn__tooltip-2percent-cashback"
								src="//image10.coupangcdn.com/image/rocketpay/checkout/ico_cashback_tip.png"
								width="96" height="36" alt="최대 캐시적립"> 
								</div>
								<div>
								<img
								src="//image7.coupangcdn.com/image/rocketpay/checkout/btn_coupay_payment.png"
								width="250" height="60" alt="쿠페이 머니 결제">
								</div>
						</button>
						<button class="payb" style=" border: none; box-shadow: 0 0 0">
						
							<img
								src="//image7.coupangcdn.com/image/rocketpay-order-image/pc/btn_payment.gif"
								width="260" height="60" alt="결제하기">
						</button>
					</div>
				</form>
			</section>
			
		</div>	
		
		
				<!-- 하단 footer -->
			<footer class="footer-frame">
	         <div class="footer-layer1">
	            <a href="https://news.coupang.com/" target="_blank">회사소개</a>
	            <a href="https://ir.aboutcoupang.com/English/home/" target="_blank">Investor Relations</a>
	            <a href="https://rocketyourcareer.kr.coupang.com" target="_blank">인재채용</a>
	            <a href="https://wing.coupang.com/vendor/joining/welcome?inflow=WEB_FOOTER_B">입점 / 제휴문의</a>
	            <a href="https://csmessenger.coupang.com/cs-center/notice/main">공지사항</a>
	            <a href="https://csmessenger.coupang.com/cs-center/voc/main">고객의 소리</a>
	            <a href="/np/policies/terms">이용약관</a>
	            <a href="https://privacy.coupang.com/ko/center/coupang" style="font-weight: bold;"><b>개인정보 처리방침</b></a>
	            <a href="https://rocketpay.coupang.com/rocketpay/operationTerms/coupangPcFooter">쿠팡페이 이용약관</a>
	            <a href="https://privacy.coupang.com/ko/land/coupay" style="font-weight: bold;"><b>쿠팡페이 개인정보처리방침</b></a>
	            <a href="/np/safety">신뢰관리센터</a>
	            <a href="https://partners.coupang.com/" target="_blank">제휴마케팅</a>
	            <a href="https://ads.coupang.com" target="_blank">광고안내</a>
	         </div>
	
	         <div class="footer-layer2">
	            <h1><a href="https://www.coupang.com/" title="COUPANG">COUPANG</a></h1>
	            <div>
	               <address>
	                  상호명 및 호스팅 서비스 제공 : 쿠팡(주)<br>
	                  대표이사 : 강한승,박대준<br>
	                  서울시 송파구 송파대로 570 <br>
	                  사업자 등록번호 : 120-88-00767 <br>
	                  통신판매업신고 : 2017-서울송파-0680<br>
	                  <a class="licensee"
	                     href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=1208800767"
	                     target="_blank" title="사업자정보 확인">사업자정보 확인 &gt;</a>
	               </address>
	               <div class="contact-info">
	                  <a class="call-center" href="https://csmessenger.coupang.com/cs-center/chat/main" title="365 고객센터">
	                     <strong>365고객센터</strong> | 전자금융거래분쟁처리담당<br>
	                     <em>1577-7011 (유료)</em>
	                     서울시 송파구 송파대로 570<br>
	                     <span class="contact-fax">email : help@coupang.com</span>
	                  </a>
	               </div>
	               <p class="safe-service">
	                  <strong>우리은행 채무지급보증 안내</strong><br>
	                  <span>
	                     당사는 고객님이 현금 결제한 금액에 대해<br>우리은행과 채무지급보증 계약을 체결하여<br>안전거래를 보장하고 있습니다.<br>
	                  </span>
	                  <a href="https://www.coupang.com/np/etc/popWooriService" target="_blank"
	                     style="text-decoration: underline;" title="서비스 가입사실 확인">서비스 가입사실 확인
	                     &gt;</a>
	               </p>
	            </div>
	         </div>
	
	         <div class="footer-layer3">
	            <div class="certification-list">
	            </div>
	         </div>
	
	         <div class="footer-layer4">
	            <div class="coupang-copyright">
	               <p class="info" style="padding-top: 9px;">사이버몰 내 판매되는 상품 중에는 쿠팡에 등록한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어
	                  있습니다.<br>
	                  마켓플레이스(오픈마켓) 상품의 경우 쿠팡은 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br>
	                  쿠팡은 마켓플레이스(오픈마켓) 상품, 거래정보 및 거래 등에 대하여 책임을 지지않습니다.<br>
	                  쿠팡은 소비자 보호와 안전거래를 위해 신뢰관리센터(CM112@coupang.com)를 운영하고 있으며, 관련 분쟁이 발생할 경우 별도의 분쟁 처리절차에 의거 분쟁이 처리됩니다.<br>
	                  Copyright © Coupang Corp. 2010-2022 All Rights Reserved.
	               </p>
	               <ul class="sns-link">
	                  <li><a href="https://www.facebook.com/Coupang.korea" target="_blank" class="facebook"
	                        title="쿠팡 페이스북">쿠팡 페이스북</a></li>
	                  <li><a href="https://news.coupang.com/" target="_blank" class="blog" title="쿠팡 뉴스룸">쿠팡 뉴스룸</a></li>
	                  <li><a href="https://www.instagram.com/coupang" target="_blank" class="instagram" title="쿠팡 인스타그램">쿠팡
	                        인스타그램</a></li>
	               </ul>
	            </div>
	         </div>
	      </footer>
		
	</body>
		 


		

</html>