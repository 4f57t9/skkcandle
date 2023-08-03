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
		<%-- 부트스트랩 아이콘 --%>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
		<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
	</head>
	<body>
		<div id="container">
			<div class="header_area">
				<header id="header">
					<section>
						<div class="clearFix">
							<div class="col-auto">
								임시 여백 공간
							</div>
							<%-- 메인 로고 --%>
							<h1 class="col-auto">
								<a href="#">
									 <img src="${pageContext.request.contextPath}/resources/images/skkcandle_nuki2.png" width="200" height="100" alt="이미지를 로드할 수 없습니다">
								</a>
							</h1>
							<%-- 검색바 --%>
			                <div id="search_bar" class="col-auto">
							    <form method="get" action="#" class="d-flex align-items-center" style="justify-content: flex-end; outline: none;">
							        <div class="form-group mb-0 mr-2">
							            <input type="search" class="form-control search" name="search" placeholder="Search...">
							        </div>
							        <button type="submit" class="btn btn-primary zindex">
							            <i class="bi bi-search"></i>
							        </button>
							    </form>
							</div>
						</div>
						
						
						<ul class="icon_menu">
							<%-- 장바구니 --%>
							<li class="cart" onmouseover="openCartBox()" onmouseout="closeCartBox()">
								<a href="//cart.coupang.com/cartView.pang" class="mycart">
									<span class="cart_icon cart_icon_position">&nbsp;</span>
									<span class="cart_title">장바구니</span>		
									<em id="headerCartCount">0</em>
								</a>
							</li>
							<%-- 마이페이지 --%>
							<li class="mycoupang" onmouseover="openMycoupnagBox()" onmouseout="closeMycoupnagBox()">
								<a href="https://mc.coupang.com/ssr/desktop/order/list" >
									<span class="mycoupang_icon mycoupnag_icon_position">&nbsp;</span>
									<span class="mycoupang_title" style="color: #333;">마이페이지</span>							
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
				</header>
			</div>
		</div>
	</body>
</html>