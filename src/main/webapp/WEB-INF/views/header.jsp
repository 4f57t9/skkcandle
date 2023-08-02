<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="//image9.coupangcdn.com/image/coupang/favicon/v2/favicon.ico" type="image/x-icon" />
		<title>쿠팡!</title>

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
		<script src="${pageContext.request.contextPath}/js/header.js"></script>
	</head>
	<body>
		<div id="container">
			<div class="header_area">
				<header id="header">
					<section>
						<div class="clearFix">
							<%-- 메인 로고 --%>
							<h1>
								<a href="#">
									<img src="//image7.coupangcdn.com/image/coupang/common/logo_coupang_w350.png" width="174" height="41">
								</a>
							</h1>
							<%-- 검색창 --%>
							<div class="search">
								<form id="search_form" method="get" action="#">
									<fieldset>
										<legend>상품검색</legend>
										<div class="search_form_div">
											<!-- 접어둠 -->
											<select id="select_category" style="display: none;">
												<option value="-1">전체</option>
								                <option value="186764">여성패션</option>
								                <option value="187069">남성패션</option>
								                <option value="502993">남녀 공용 의류</option>
								                <option value="213201">유아동패션</option>
								                <option value="176522">뷰티</option>
								                <option value="221934">출산/유아동</option>
								                <option value="194276">식품</option>
								                <option value="185669">주방용품</option>
								                <option value="115673">생활용품</option>
								                <option value="184555">홈인테리어</option>
								                <option value="178255">가전디지털</option>
								                <option value="317778">스포츠/레저</option>
								                <option value="184060">자동차용품</option>
								                <option value="317777">도서/음반/DVD</option>
								                <option value="317779">완구/취미</option>
								                <option value="177295">문구/오피스</option>
								                <option value="115674">반려동물용품</option>
								                <option value="305798">헬스/건강식품</option> 
								                <option value="396463">국내여행</option>
								                <option value="396464">해외여행</option>  
								                <option value="/np/campaigns/18530">로켓럭셔리</option>
								                <option value="/np/campaigns/11280">장마 준비</option>
								                <option value="/np/campaigns/18638">여름시즌</option>
								                <option value="/np/campaigns/6733">로켓설치</option>
								                <option value="/np/campaigns/2318">공간별 집꾸미기</option>
								                <option value="/np/campaigns/13570">헬스케어 전문관</option>
								                <option value="/np/campaigns/1440">쿠팡 Only</option>
								                <option value="433784">싱글라이프</option>
								                <option value="/np/campaigns/11354">악기전문관</option>
								                <option value="416130">결혼준비</option>
								                <option value="410273">아트/공예</option>
								                <option value="/np/campaigns/17593">미세먼지용품</option>
								                <option value="316168">홈카페</option>
								                <option value="383370">실버스토어</option>
								                <option value="/np/campaigns/17993">로켓펫닥터</option>
											</select>
											<div class="search_category">
												<a href="#" class="search_category_btn"></a>
												<a href="#" class="search_category_current">전체</a>
												<!-- 접어둠 -->
												<ul class="select_category_option" style="display: none; top: 38px; max-height: 837px;">
													<li>
								                        <a href="#-1">전체</a>
								                    </li>
								                    <li>
								                        <a href="#186764">여성패션</a>
								                    </li>
								                    <li>
								                        <a href="#187069">남성패션</a>
								                    </li>
								                    <li>
								                        <a href="#502993">남녀 공용 의류</a>
								                    </li>
								                    <li>
								                        <a href="#213201">유아동패션</a>
								                    </li>
								                    <li>
								                        <a href="#176522">뷰티</a>
								                    </li>
								                    <li>
								                        <a href="#221934">출산/유아동</a>
								                    </li>
								                    <li>
								                        <a href="#194276">식품</a>
								                    </li>
								                    <li>
								                        <a href="#185669">주방용품</a>
								                    </li>
								                    <li>
								                        <a href="#115673">생활용품</a>
								                    </li>
								                    <li>
								                        <a href="#184555">홈인테리어</a>
								                    </li>
								                    <li>
								                        <a href="#178255">가전디지털</a>
								                    </li>
								                    <li>
								                        <a href="#317778">스포츠/레저</a>
								                    </li>
								                    <li>
								                        <a href="#184060">자동차용품</a>
								                    </li>
								                    <li>
								                        <a href="#317777">도서/음반/DVD</a>
								                    </li>
								                    <li>
								                        <a href="#317779">완구/취미</a>
								                    </li>
								                    <li>
								                        <a href="#177295">문구/오피스</a>
								                    </li>
								                    <li>
								                        <a href="#115674">반려동물용품</a>
								                    </li>
								                    <li>
								                        <a href="#305798">헬스/건강식품</a>
								                    </li>
								                    <li>
								                        <a href="#396463">국내여행</a>
								                    </li>
								                    <li>
								                        <a href="#396464">해외여행</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/18530">로켓럭셔리</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/11280">장마 준비</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/18638">여름시즌</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/6733">로켓설치</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/2318">공간별 집꾸미기</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/13570">헬스케어 전문관</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/1440">쿠팡 Only</a>
								                    </li>
								                    <li>
								                        <a href="#433784">싱글라이프</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/11354">악기전문관</a>
								                    </li>
								                    <li>
								                        <a href="#416130">결혼준비</a>
								                    </li>
								                    <li>
								                        <a href="#410273">아트/공예</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/17593">미세먼지용품</a>
								                    </li>
								                    <li>
								                        <a href="#316168">홈카페</a>
								                    </li>
								                    <li>
								                        <a href="#383370">실버스토어</a>
								                    </li>
								                    <li>
								                        <a href="#/np/campaigns/17993">로켓펫닥터</a>
								                    </li>
												</ul>
											</div>
											<label for="input_keyword">
											    <input type="text" id="input_keyword" class="input_keyword" name="q" value="" 
											        placeholder="찾고 싶은 상품을 검색해보세요!" autocomplete="off"
											        onfocus="openAutocompleteBox()" onblur="closeAutocompleteBox()">
											</label>
											<a href="#" class="mic_icon">마이크</a>
										</div>
										<input type="hidden" name="channel" value="user">
										<a href="javascript:;" id="search_icon" class="search_icon">검색</a>
									</fieldset>
								</form>
								
								<%-- 최근 검색 창 --%>
								<div id="autocomplete_box" class="words" style="display: none;">
								    <div class="autocomplete_wrap">
								        <h3>
								        	<span>최근</span> 
								        	검색어
								        </h3>
								        <ol>
								            <li> 
								                <a href="javascript:;" class="kwd sect"> 향초 </a>
								                <span class="delete_kwdhistory del-button">삭제</span> 
								            </li>
								        </ol>
								    </div>
								</div>
							</div>
						</div>
						
						<ul class="icon_menu">
							<%-- 마이쿠팡 --%>
							<li class="mycoupang" onmouseover="openMycoupnagBox()" onmouseout="closeMycoupnagBox()">
								<a href="https://mc.coupang.com/ssr/desktop/order/list" >
									<span class="mycoupang_icon mycoupnag_icon_position">&nbsp;</span>
									<span class="mycoupang_title" style="color: #333;">마이쿠팡</span>							
								</a>
								<p class="my-coupang-menu" style="display: none;">
								    <span class="wrapper">
								        <i class="speech-icon"></i> 
								        <a href="https://mc.coupang.com/ssr/desktop/order/list">주문목록</a>
								        <a href="https://mc.coupang.com/ssr/desktop/cancel-return-exchange/list">취소/반품</a>
								        <a href="//wish-web.coupang.com/wishInitView.pang">찜 리스트</a>
								        <a href="https://subscribe-order.coupang.com/manage/subs.pang" class="subscription-menu-a">
								            <span class="subscription-menu-label">정기배송</span>
								            <span class="subscription-menu-warning-icon"></span>
								        </a>
								    </span>
								</p>
							</li>
							
							<%-- 장바구니 --%>
							<li class="cart" onmouseover="openCartBox()" onmouseout="closeCartBox()">
								<a href="//cart.coupang.com/cartView.pang" class="mycart">
									<span class="cart_icon cart_icon_position">&nbsp;</span>
									<span class="cart_title">장바구니</span>		
									<em id="headerCartCount">0</em>
								</a>
								<div id="mycart-preview" style="display: none;">
						            <span class="wrapper">
						                <i class="speech-icon"></i>
						                <ul class="mycart-preview-products">
						                    <li class="empty-cart">장바구니에 담긴 상품이 없습니다.</li>
						                </ul>
						            </span>
						        </div>
							</li>
						</ul>
						
						<%-- 네비게이션 바 --%>
						<div id="gnb_menu_container">
							<div class="gnb_menu_btn gnb_menu_btn_left"></div>
							<ul class="gnb_menu_scroll gnb-menu-animation">
								<li class="gnb_menu_item">
							        <a href="https://www.coupang.com/np/campaigns/82" > 
							            <img class="gnb_menu_item_icon" src="//image10.coupangcdn.com/image/coupang/rds/logo/xxhdpi/logo_rocket_symbol_large.png">  
							            <span>로켓배송</span> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://www.coupang.com/np/categories/393760" > 
							            <img class="gnb_menu_item_icon" src="//image9.coupangcdn.com/image/coupang/common/pc_header_rocket_fresh_1x.png">  
							            <span>로켓프레시</span>  
							            <i class="ic_new"></i> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://login.coupang.com/corporation/member/landing-page" > 
							            <img class="gnb_menu_item_icon" src="//image6.coupangcdn.com/image/coupang/common/logoBizonlyBrown.png">  
							            <span>쿠팡비즈</span>  
							            <i class="ic_new"></i> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://www.coupang.com/np/coupangglobal" > 
							            <img class="gnb_menu_item_icon" src="//image6.coupangcdn.com/image/coupang/home/icons/Overseas.png">  
							            <span>로켓직구</span> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://www.coupang.com/np/goldbox" > 
							            <span>골드박스</span> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://www.coupang.com/np/campaigns/83" > 
							            <span>와우회원할인</span> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://www.coupang.com/np/coupangbenefit" > 
							            <span>이벤트/쿠폰</span> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://pages.coupang.com/p/54908" > 
							            <img class="gnb_menu_item_icon" src="//image10.coupangcdn.com/image/coupang/home/icons/RETURNED_MARKET_B@2x.png">  
							            <span>반품마켓</span> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://pages.coupang.com/p/63240" > 
							            <img class="gnb_menu_item_icon" src="//image9.coupangcdn.com/image/coupang/common/icon_government_promotion.png">  
							            <span>착한상점</span>  
							            <i class="ic_new"></i> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://pages.coupang.com/p/bep" > 
							            <span>기획전</span> 
							        </a>
							    </li>
							    <li class="gnb_menu_item">
							        <a href="https://trip.coupang.com?channel=gnb" > 
							            <img class="gnb_menu_item_icon" src="//image9.coupangcdn.com/image/coupang/common/icon_travel.png">  
							            <span>여행/티켓</span>  
							            <i class="ic_new"></i> 
							        </a>
							    </li>
							</ul>
							<div class="gnb_menu_btn gnb_menu_btn_right"></div>
						</div>
					</section>
					
					<%-- 카테고리 버튼 --%>
					<div class="category_btn" onmouseover="openCategoryBox()" onmouseout="closeCategoryBox()">
						<a href="javascript:;">카테고리</a>
						<div class="category_list_box">
							<h3 class="list_title">쇼핑</h3>
							<ul class="menu list_content">
								<li class="fashion_accessory">
									<a href="javascript:;">
									    패션의류/잡화
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="beauty">
									<a href="/np/categories/176522">
									    뷰티
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="child-birth">
									<a href="/np/categories/221934">
									    출산/유아동
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="food">
									<a href="/np/categories/194276">
									    식품
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="kitchen">
									<a href="/np/categories/185669">
									    주방용품
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="life">
									<a href="/np/categories/115673">
									    생활용품
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="home_decoration">
									<a href="/np/categories/184555">
									    홈인테리어
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="appliances-digital">
									<a href="/np/categories/178255">
									    가전디지털
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="sports">
									<a href="/np/categories/317778">
									    스포츠/레저
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="car">
									<a href="/np/categories/184060">
									    자동차용품
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="book">
									<a href="/np/categories/317777">
									    도서/음반/DVD
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="hobby">
									<a href="/np/categories/317779">
									    완구/취미
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="office">
									<a href="/np/categories/177295">
									    문구/오피스
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="pet">
									<a href="/np/categories/115674">
									    반려동물용품
									    <i class="select_icon"></i>
									</a>
								</li>
								<li class="health">
									<a href="/np/categories/305798">
									    헬스/건강식품
									    <i class="select_icon"></i>
									</a>
								</li>
							</ul>
							<h3 class="list_title">티켓</h3>
							<ul class="menu ticket_list_content">
								<li class="travel_leisure">
									<a href="https://trip.coupang.com?channel=category">여행/티켓</a>
									<i class="select_icon"></i>
								</li>
							</ul>
							<h3 class="list_title">테마관</h3>
							<ul class="menu theme_list_content">
								<li class="theme_store">
									<a href="javascript:;">테마관</a>
									<i class="select_icon"></i>
								</li>
							</ul>
						</div>
					</div>
				</header>
				<%-- 회색 한줄바 --%>
				<article class="top_bar">
					<section>
						<menu id="header_menu_right">
							<li id="login">
								<a href="loginForm.jsp">로그인</a>
							</li>
							<li id="join">
								<a href="joinForm.jsp">회원가입</a>
							</li>
							<li id="cs_center" onmouseover="openCsCenterBox()" onmouseout="closeCsCenterBox()">
								<a href="https://mc.coupang.com/ssr/desktop/contact/faq">고객센터</a>
								<p>
									<a href="https://mc.coupang.com/ssr/desktop/contact/faq">자주묻는 질문</a>
									<a href="https://mc.coupang.com/ssr/desktop/contact/inquiry">1:1 채팅문의</a>
									<a href="https://mc.coupang.com/ssr/desktop/contact/voc">고객의 소리</a>
									<a href="https://www.coupang.com/returnPolicy.pang">취소 / 반품 안내</a>
								</p>
							</li>
						</menu>
						<menu id="header_menu_left">
							<li>
								<a class="bookmark" onclick="alert('Ctrl+D 키를 누르면 즐겨찾기에 추가하실 수 있습니다.')">즐겨찾기</a>
							</li>
							<li class="more_content" onmouseover="openBox()" onmouseout="closeBox()">
								<a>입점신청<i class="arrow_icon"></i></a>
								<p>
									<a href="https://wing.coupang.com/vendor/joining/welcome?inflow=WEB_HEADER_B">오픈마켓</a>
									<a href="https://with.coupang.com/contract/initialize?inflow=WEB_HEADER_B">여행·티켓</a>
									<a href="https://supplier.coupang.com/welcome/join">로켓배송</a>
									<a href="https://partners.coupang.com">제휴마케팅</a>
								</p>
							</li>
						</menu>
					</section>
				</article>
			</div>
		</div>
	</body>
</html>