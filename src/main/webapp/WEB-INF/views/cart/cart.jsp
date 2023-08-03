<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="/html_css_javascript/favicon.ico" type="image/x-icon">
		<title>Insert title here</title>
		
		<!--부트스트랩을 사용하기 위한 외부 라이브러리 가져오기-->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> 
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
		<script src="resources/js/cart.js"></script>
	</head>
		<!-- External CSS -->
		<link rel = "stylesheet" href ="resources/css/cart.css"/>
		
	<body>
		<div class="wrap">
		<header>
			<div class ="logo">
				<a href="//www.coupang.com/"></a>
			</div>	
		</header>
		<section class="contents-cart">
			<section class="cart-title">
				<h1 class="sr-only">장바구니</h1>
			</section>
			<div class="cartContent">
        <table class="cartTable">
            <tbody id="cartTable-sku">
            	<tr>
            		<td colspan="5" class="cart-bundle-title">
            			<span class="title rocket">로켓배송 상품 </span>
            			<span class="rocket-delivery-info">
               				<span class="rocket-free">무료배송</span>
               				(19,800원 이상 구매가능)
            			</span>
						<div id="lateRocketWowOverNightMessage" class="late-dawn-delivery-message" style="display: none"></div>
        			</td>
            	</tr>
            	<tr class="cart-deal-item">
            	<td class="product-select-event">
            		<input type="checkbox" class="dealSelectChk" name="cbox">
            	</td>
            	<td class="cart-deal-item_image">
            		<a href="https://www.coupang.com/vp/products/7055315061?vendorItemId=73515634019&isAddedCart=">
            			<img class="product-img" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/120x120ex/image/retail/images/3548707957290031-f9be5661-7bfd-4654-9955-67f49c2e7831.jpg">
            		</a>
            	</td>
            	<td class="product-box">
            		<div class="product-name-part">
            			<c:forEach var="cart" items="${carts}">
            				<tr>
            					<td>${cart.cartId}</td>
            					<td>${cart.productId}</td>
								<td>${cart.userId}</td>
								<td>${cart.count}</td>            				
            				</tr>
            			</c:forEach>	
            		</div>
            		<div class="option-item-info">
                    	<span class="arrive-date" style="display: inline-block;">
	                    	<span class="arrive-date-txt">내일</span>
	                    	<span class="arrive-date-day">(목) </span>
	                    	<span class="arrive-date-date">7/6</span>
	                    	<span class="arrive-date-time"></span>
	                    	<span class="promise-txt"> 도착 보장 </span>
                    	</span>
                    	<span class="delivery-condition">(밤 12시 전 주문 시)</span>
                     </div>	
				<div class="option-price-part">
						<span class="unit-cost">
						<span class="unit-price-area">
							<span class="unit-price">
								<span class="sr-only">구매가격</span>
								19,600원
								</span>
						 </span>
						<input type="number" class="edt-qty" value="0" min="0">
					</span>	
				</td>
				
					
            	<td class="unit-total-price">
            		<div class="union-total-sale-price"></div>
            		<img src="//img1a.coupangcdn.com/image/cmg/icon/ios/logo_rocket_large@3x.png" width="56" height="14" class="vendor-badge rocket" alt="로켓배송">
            	</td>
            	<td class="delivery-fee">
            		<span class="delivery-fee_free" rowspan="1">무료</span>
            	</td>
            	</tr>
            		<tr class="cart-deal-item">
            	<td class="product-select-event">
            		<input type="checkbox" class="dealSelectChk" name="cbox">
            	</td>
            	<td class="cart-deal-item_image">
            		<a href="https://www.coupang.com/vp/products/7055315061?vendorItemId=73515634019&isAddedCart=">
            			<img class="product-img" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/120x120ex/image/retail/images/3548707957290031-f9be5661-7bfd-4654-9955-67f49c2e7831.jpg">
            		</a>
            	</td>
            	<td class="product-box">
            		<div class="product-name-part">
            			<a href="//www.coupang.com/vp/products/7055315061?vendorItemId=73515634019" class="product-name moveProduct modify-color">
            			코코도르 아로마 필라 캔들 대 480g, 잉글리쉬페어프리, 3개
            			</a>
            		</div>
            		<div class="option-item-info">
                    	<span class="arrive-date" style="display: inline-block;">
	                    	<span class="arrive-date-txt">내일</span>
	                    	<span class="arrive-date-day">(목) </span>
	                    	<span class="arrive-date-date">7/6</span>
	                    	<span class="arrive-date-time"></span>
	                    	<span class="promise-txt"> 도착 보장 </span>
                    	</span>
                    	<span class="delivery-condition">(밤 12시 전 주문 시)</span>
                     </div>	
				<div class="option-price-part">
						<span class="unit-cost">
						<span class="unit-price-area">
							<span class="unit-price">
								<span class="sr-only">구매가격</span>
								19,600원
								</span>
						 </span>
						<input type="number" class="edt-qty" value="0" min="0">
					</span>	
				</div> 		
						<div class="badge-item option-benefit">
		             		<span class="promo-cash-benefit">
		                		<i class="promo-cash-benefit__icon"></i>
		                		<em class="promo-cash-benefit__text">최대 661원 적립</em>
	           		  		</span>
	   					</div>	
	   					
				</td>
				
					
            	<td class="unit-total-price">
            		<div class="union-total-sale-price"></div>
            		<img src="//img1a.coupangcdn.com/image/cmg/icon/ios/logo_rocket_large@3x.png" width="56" height="14" class="vendor-badge rocket" alt="로켓배송">
            	</td>
            	<td class="delivery-fee">
            		<span class="delivery-fee_free" rowspan="4">무료</span>
            	</td>
            	</tr>
            		<tr class="cart-deal-item">
            	<td class="product-select-event">
            		<input type="checkbox" class="dealSelectChk" name="cbox">
            	</td>
            	<td class="cart-deal-item_image">
            		<a href="https://www.coupang.com/vp/products/7055315061?vendorItemId=73515634019&isAddedCart=">
            			<img class="product-img" src="https://thumbnail9.coupangcdn.com/thumbnails/remote/120x120ex/image/retail/images/3548707957290031-f9be5661-7bfd-4654-9955-67f49c2e7831.jpg">
            		</a>
            	</td>
            	<td class="product-box">
            		<div class="product-name-part">
            			<a href="//www.coupang.com/vp/products/7055315061?vendorItemId=73515634019" class="product-name moveProduct modify-color">
            			코코도르 아로마 필라 캔들 대 480g, 잉글리쉬페어프리, 3개
            			</a>
            		</div>
            		<div class="option-item-info">
                    	<span class="arrive-date" style="display: inline-block;">
	                    	<span class="arrive-date-txt">내일</span>
	                    	<span class="arrive-date-day">(목) </span>
	                    	<span class="arrive-date-date">7/6</span>
	                    	<span class="arrive-date-time"></span>
	                    	<span class="promise-txt"> 도착 보장 </span>
                    	</span>
                    	<span class="delivery-condition">(밤 12시 전 주문 시)</span>
                     </div>	
				<div class="option-price-part">
						<span class="unit-cost">
						<span class="unit-price-area">
							<span class="unit-price">
								<span class="sr-only">구매가격</span>
								19,600원
								</span>
						 </span>
						<input type="number" class="edt-qty" value="0" min="0">
					</span>	
				</div> 		
						<div class="badge-item option-benefit">
		             		<span class="promo-cash-benefit ">
		                		<i class="promo-cash-benefit__icon"></i>
		                		<em class="promo-cash-benefit__text">최대 661원 적립</em>
	           		  		</span>
	   					</div>	
	   					
				</td>
				
					
            	<td class="unit-total-price">
            		<div class="union-total-sale-price"></div>
            		<img src="//img1a.coupangcdn.com/image/cmg/icon/ios/logo_rocket_large@3x.png" width="56" height="14" class="vendor-badge rocket" alt="로켓배송">
            	</td>
            	<td class="delivery-fee">
            		<span class="delivery-fee_free" rowspan="1">무료</span>
            	</td>
            	</tr>
            <tr class="bundle-price-total">
            	<td colspan="5">
                	<div class="rocket-tooltip" id="rocket-tooltip" style="display: block; right: 443px;">
                    	<div class="rocket-info" id="rocket-info">
                    		다른
                    	 <a class="link addRocketItem logging" href="//www.coupang.com/np/campaigns/82">
                    	 	로켓배송 상품
                    	 </a>
                    	 	을 추가해도 함께 
                    	 <em>무료배송</em> 
                    	 	가능!
                    	 </div>
                	</div>
                <span class="rocket-total-price-area">
					상품가격 
				<span class="total-product-price number">148,770</span>원 
				<span class="coupon-area">
	                	<span class="symbol-plus">
	                		<span class="sr-only">더하기</span>
	                	</span>
						배송비 
						<span id="rocket-delivery-charge" class="delivery-charge">
							<strong>무료</strong>
						</span>
						<span class="symbol-equal">
							<span class="sr-only">결과는</span>
						</span>
							주문금액
	               		<span class="total-order-price number">148,770</span>원  
				</span>
            	</span>
            	</td>
        	</tr>
            </tbody>
   		</table>
   		<div class="order-table-foot">
                    <span class="all-select-product">
						<label>
							<input type="checkbox" class="cboxAll"> <span>전체선택</span><span class="cart-count-bottom">( <em>1</em> / 1 )</span>
						</label>
						<a href="javascript:void(0);" class="selected-delete" >삭제</a>
						<a href="javascript:void(0);" class="selected-soldout-delete logging" data-login="true" data-view-type="shoppingCart" data-event-name="deleteAllEosAndOosClick" data-log-label="cart-p-outDeleteAll" data-coulog-type="clickEvent">품절/판매종료상품 전체삭제</a>
					</span>
        </div>
            <div class="payment-reward-cash-area">
                    <img class="payment-reward-cash-area__icon" src="//img1a.coupangcdn.com/image/cart/generalCart/ico_cash_m_2x.png">
                    <h3 class="payment-reward-cash-area__title">캐시적립 혜택</h3>
                  
                    <span class="payment-reward-cash-area__desc">쿠페이 머니 결제 시 1% 적립</span> 
            </div>
            <div class="cart-total-price">
                <div class="cart-total-price__inner">
                    <div class="price-area">
                        <h2 class="sr-only" id="cart-total-price">
                           	 장바구니 총 주문금액 정보
                        </h2>
                        	총 상품가격
                        <em class="final-product-price">148,770</em>
                        	원
                        <span class="symbol-plus1"><span class="sr-only">더하기</span></span>
                        	총 배송비
                        <em class="final-delivery-charge">0</em>원
                        <span class="symbol-equal1"><span class="sr-only">결과는</span></span>
                       		 총 주문금액
                        <em class="final-order-price">
                          148,770원
                        </em>
                    </div>

                    <div id="ccidArea" class="ccid-area" style="display: none;">
                        <span class="ccid-amount">
                          	카드 즉시할인 예상금액 (<em id="ccidAmount">0</em>원 할인)
                        </span>
                        <span class="adjustment-price" id="adjustmentPrice">
                          <em>0</em>원
                        </span>
                    </div>
                </div>
            </div>
            <div class="order-buttons">
                <a id="continueShoopingBtn" class="goShopping logging" href="//www.coupang.com" data-view-type="shoppingCart" data-event-name="continuouslyShoppingClick" data-log-label="cart-p-continuouslyShoppingClick" data-coulog-type="clickEvent" data-listener-event-type="click">계속 쇼핑하기</a>
                <a href="javascript:void(0);" class="goPayment narrow" id="btnPay" data-pay-url="/cart/orderV3?isAllChecked=true">구매하기</a>
                <div class="item-disabled" style="display: none;"></div>
            </div>
   		</div>
		</section>			
		</div>
	</body>
</html>