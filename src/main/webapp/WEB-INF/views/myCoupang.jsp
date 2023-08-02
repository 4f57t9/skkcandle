<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width-device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="//image9.coupangcdn.com/image/coupang/favicon/v2/favicon.ico" type="image/x-icon" />
		<title>쿠팡! - 마이쿠팡</title>

		<!-- Bootstrap 을 사용하기 위한 외부 라이브러리 가져오기 -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script><!-- slim을 뺀다 ajax 관련 기능이 지금피료없기때문에) -->
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
		<link rel="stylesheet" href="myCoupang.css">
		<script src="myCoupang.js"></script>
	
	</head>
	<body onload="init()">
	 <%-- <%@ include file="header.jsp" %> --%>
	<div style="max-width:1320px; margin:0 auto; ">
		<div class="wrap" >
			<!-- body left part -->
			<div id ="nav-left">
				<div id = "myCoupangSign">MY쿠팡</div>
				<div id = "myMenu">
					<nav>
						<div>
							<div class="myMenuTitle">MY 쇼핑</div>
							<div>
								<ul>
									<li><a href="#" class="now">주문목록/배송조회</a></li>
									<li><a href="#">취소/반품/교환/환불 내역</a> </li>
									<li><a href="#">와우 멤버십</a></li>
									<li><a href="#">로켓프레시 프레시백</a></li>
									<li><a href="#">정기배송관리</a></li>
									<li><a href="#">영수증 조회/출력</a></li>
								</ul>
							</div>
						</div>
						<div>
							<div class="myMenuTitle">MY 혜택</div>
							<div>
								<ul>
									<li><a href="#">할인쿠폰</a></li>
									<li><a href="#">쿠팡캐시/기프트카드</a></li>
								</ul>
							</div>
						</div>
						<div>
							<div class="myMenuTitle">MY 활동</div>
							<div>
								<ul>
									<li><a href="#">문의하기</a></li>
									<li><a href="#">문의내역 확인</a></li>
									<li><a href="#">리뷰관리</a></li>
									<li><a href="#">찜 리스트</a></li>
								</ul>
							</div>
						</div>
						<div style="border-bottom: 0px solid rgb(225, 228, 230);">
							<div class="myMenuTitle">MY 정보</div>
							<div>
								<ul>
									<li><a href="#">개인정보확인/수정</li>
									<li><a href="#">결재수단·쿠페이 관리 </li>
									<li><a href="#">배송지 관리</li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
				<div id="myMenuQnANav">
					<ul>
						<li>
							<a href="https://mc.coupang.com/ssr/desktop/contact/inquiry"><span class="qnaMenulist" id="coupangMoonyi"></span></a>
						</li>
						<li>
							<a href="https://mc.coupang.com/ssr/desktop/contact/voc"><span class="qnaMenulist" id="gogaeksori"></span></a>
						</li>
						<li>
							<a href="https://www.coupang.com/np/etc/returnPolicy"><span class="qnaMenulist" id="chisobanpum"></span></a>
						</li>
					</ul>
				</div>
			</div>
			<!-- body right part -->
			<div id="body-right">
				<!-- 위의 대쉬 보드 -->
				<div id="dash-board">
					<ul>
						<li>
							<strong>미사용티켓</strong>
							<div>
								<a href="#" style="text-decoration: none;">
									<span class="dash-board-couple">
										<span class="dash-board-score">0</span>
										<span class="dash-board-unit">장</span>
									</span>
								</a>
							</div>
						</li>
						<li>
							<strong>배송중</strong>
							<div>
								<a href="#" style="text-decoration: none;">
									<span class="dash-board-couple">
										<span class="dash-board-score" >0</span>
										<span class="dash-board-unit" >개</span>
									</span>
								</a>
							</div>
						</li>
						<li>
							<strong>할인쿠폰</strong>
							<div>
								<a href="#" style="text-decoration: none;">
									<span class="dash-board-couple">
										<span class="dash-board-score">0</span>
										<span class="dash-board-unit">장</span>
									</span>
								</a>
							</div>
						</li>
						<li>
							<div>
								<span class="dash-board-coumoney">쿠페이머니</span>
								<a href="#" style="margin:0 0 0 auto; text-decoration: none;">
									<span>
										<span class="dash-board-coumoney-amount">0</span>
										<span class="dash-board-coumoney-unit">원</span>
									</span>
								</a>
							</div>
							<div>
								<span class="dash-board-coumoney">쿠팡캐시</span>
								<a href="#" style="margin:0 0 0 auto; text-decoration: none;">
									<span>
										<span class="dash-board-coumoney-amount">1,000</span>
										<span class="dash-board-coumoney-unit">원</span>
									</span>
								</a>
							</div>
						</li>
					</ul>
				</div>
				
				<!-- 주문목록  -->
				<div id="jumun-index">
					<div>
						<div id="jumun-title">
							<span >주문목록</span>
						</div>
						<div id="jumun-searchbar">
							<div>
								<div class="grayborder leftflex-juja">
									<div class="searchbar-div-div-div"><input placeholder="주문한 상품을 검색할 수 있어요!"></div>
									<div id="dotbogi">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" style="fill:#346AFF"><g fill="none" fill-rule="evenodd"><path fill="#000" fill-opacity="0" d="M0 24L24 24 24 0 0 0z"></path><path fill="#346AFF" fill-rule="nonzero" d="M11 19.5c4.694 0 8.5-3.806 8.5-8.5S15.694 2.5 11 2.5 2.5 6.306 2.5 11s3.806 8.5 8.5 8.5zm0 1c-5.247 0-9.5-4.253-9.5-9.5S5.753 1.5 11 1.5s9.5 4.253 9.5 9.5-4.253 9.5-9.5 9.5zm6.854-3.354l4.5 4.5c.471.472-.236 1.179-.708.708l-4.5-4.5c-.471-.472.236-1.179.708-.708z"></path></g></svg>
									</div>
								</div>
							</div>
							<div>
								<div id="jumun-years-box" class="leftflex-juja">
									<div id="jumun-years-list">
										<button class="jumun-years-button clicked">최근 6개월</button>
										<button class="jumun-years-button notclicked">2023</button>
										<button class="jumun-years-button notclicked">2022</button>
										<button class="jumun-years-button notclicked">2021</button>
										<button class="jumun-years-button notclicked">2020</button>
										<button class="jumun-years-button notclicked">2019</button>
										<button class="jumun-years-button notclicked">2018</button>
									</div>
								</div>
							</div>
							<!-- 탭 리스트 시작! -->
							<div id="tab-start">
								<div class="leftflex-juja">
									<button class="tab-button tabclicked" value="total">전체</button>
									<button class="tab-button tabnotclicked" value="delivery">배송상품</button>
									<button class="tab-button tabnotclicked" value="travel">여행상품</button>
									<button class="tab-button tabnotclicked" value="ticket">티켓상품</button>
								</div>
							</div>
							<!-- 배송상품 시작! -->
							<div id="deliver-item-list-container">
								<div></div>
								<!-- <div style="width: 800px; padding:0 auto;">
									6개월간 주문하신 내역이 없습니다.
									<div id="deliver-item-none">
										<svg width="24" height="24" focusable="false" viewBox="0 0 24 24" aria-hidden="true" role="presentation"><polygon fill-opacity="0" fill="#FFFFFF" points="0 24 24 24 24 0 0 0"></polygon><path d="M12,2 L24,22 L0,22 L12,2 Z M11.9962851,17.6000004 C11.6396269,17.6000004 11.3510849,17.7140976 11.1306504,17.9422955 C10.9102158,18.1704933 10.8000002,18.4577036 10.8000002,18.8039349 C10.8000002,19.1501661 10.9102158,19.4360649 11.1306504,19.6616398 C11.3510849,19.8872147 11.6396269,20.0000005 11.9962851,20.0000005 C12.3578968,20.0000005 12.6489156,19.8872147 12.8693501,19.6616398 C13.0897847,19.4360649 13.2000003,19.1501661 13.2000003,18.8039349 C13.2000003,18.4524577 13.0897847,18.163936 12.8693501,17.9383611 C12.6489156,17.7127861 12.3578968,17.6000004 11.9962851,17.6000004 Z M13.3999996,7.5 L10.6000004,7.5 L11,16 L13,16 L13.3999996,7.5 Z" fill="#FF9600" fill-rule="nonzero"></path></svg>
										<div style="margin-top:10px;">최근 6개월간 주문하신 내역이 없습니다.
											<a href="#"><span id="jumunbogi-2023">2023년 주문보기 ></span></a>
										 </div>
									</div>
								</div> -->
							</div>
							
							<!-- 이전 다음 버튼 -->
							
							<div id="after-previous-button-container" class="d-flex justify-content-center">
								
							
							</div>
							<!-- 배송상태 주문상태 안내 시작! -->
							<div id="delivery-orderstatus-info-container">
								<div id="delivery-orderstatus-info-grim">
									<div id="delivery-orderstatus-info-grim-titlebox">
										<div id="delivery-orderstatus-info-grim-title">
											<h4 class="delivery-orderstatus-info-grim-title2">배송상품 주문상태 안내</h4>
										</div>
										<div id="delivery-orderstatus-info-seemore-detail">
											<a href="#" class="delivery-orderstatus-info-seemore-detail-atag">
											 	자세한 내용 더보기 >
											</a>
										</div>
									</div>
									<div id="delivery-orderstatus-info-img">
										<img src="myCoupangbaesonginfo.png" height="140px">
									</div>
									<div id="check-before-container">
										<div id="check-before-title">
											<b>
												<i class="sc-178zqvr-13 bQUraS"></i>
												<span>
													<span style="color: #e52628;">취소/반품/교환 신청</span>전 확인해주세요!
												</span>
											</b>
										</div>
										<div>
											<strong class="check-before-minititle">취소</strong>
										</div>
										<div class="check-before-content">
											-<span> 여행/레저/숙박 상품은 취소 시 수수료가 발생할 수 있으며,<br>
											<span style="margin-left:7px;">취소 수수료를 확인하여 2일 이내(주말, 공휴일 제외) 처리 결과를 문자로 안내해드립니다.</span>
											</span>(당일 접수 기준, 마감시간 오후 4시)
										</div>
										<div class="check-before-content">
											- 문화 상품은 사용 전날 24시까지 취소 신청 시 취소수수료가 발생하지 않습니다.
										</div>
										<div>
											<strong class="check-before-minititle">반품</strong>
										</div>
										<div class="check-before-content">
											- 상품 수령 후 7일 이내 신청하여 주세요.
										</div>
										<div class="check-before-content">
											- 상품이 출고된 이후에는 배송 완료 후, 반품 상품을 회수합니다.
										</div>
										<div class="check-before-content">
											- 설치상품/주문제작/해외배송/신선냉동 상품 등은 고객센터에서만 반품 신청이 가능합니다.
											<a href="#" class="one-on-one-question">1:1 문의하기 ></a>
										</div>
										<div>
											<strong class="check-before-minititle">교환</strong>
										</div>
										<div class="check-before-content">
											- 상품의 교환 신청은 고객센터로 문의하여 주세요.
											<a href="#" class="one-on-one-question">1:1 문의하기 ></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</div>
	</div>
  <%-- <%@ include file="footer.jsp" %>  --%>
	</body>
</html>