
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/header/navHeader.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		<title>Insert title here</title>
	</head>
	<title>제품 상세페이지</title>
	</head>
		<!-- External CSS -->
		<link rel = "stylesheet" href ="resources/css/detailView.css"/>
		<link rel = "stylesheet" href ="resources/css/header/navHeader.css"/>

	<body>
	
	<div class="container">	
      <header>
      </header>
		
		<!-- 상품의 썸네일 & 상세사진 -->
		
	  <div class="product">
	    
	    <div class="prod_image">
			<div class="prod-image_detail">
		        <img src="https://thumbnail8.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/3001384970715826-9c075cc4-28d8-4487-af3f-ba792e8cb3dd.jpg" width = "400px" >
		    </div>
		</div>   
		 
		 <!-- 상품 기본정보 등록란 -->
		 
	    <div class="prod-buy">
	     	<div class="product_name">
	     		<h2>${detailproduct.productName}</h2>
	     	</div>
	     	
	     	<!-- 별점 -->
	     	
	     	<div class="prod-buy-header_productview">
		 		<div class="rate"> 
		 			<span style="width: 93%"></span> 
		 		</div>  
		 		<div class="review_count">
		 			${detailproduct.productStock}개의 상품평
		 		</div> 
	     	</div>
	     	
		 	<hr>
			<div class="price">
				${detailproduct.productPrice}원
			</div>
			<div class="product-cash">
                  	<div class="max-cash">
                  		<img src="//image6.coupangcdn.com/image/badges/cashback/web/list-cash-icon@2x.png" width="14px">
                  		<span class="reward-cash-txt">최대 345원 적립</span>
                  	</div>
            </div>				
			<hr>
			<div class="shipping price">
				무료배송
			</div>
			<div class="arrived date">
				내일(목)6/22 도착 보장
			</div>
			<div class="product-reward-cash-container">
            	<div class="reward-cash-summary">
                  	<div class="reward-cash-summary_title">
	                 	<img src="//image6.coupangcdn.com/image/badges/sdp/cashback/web/cash-icon@2x.png" width="20px">
	                  	<span>캐시적립 혜택</span>
                  	</div>
                  	<div class="reward-cash-summary_info">
                  		<span>|</span>
                  		<span>최대 <strong>345</strong>원 적립</span>
                  	</div>
            	</div>
                  		
             <!-- 쿠페이 머니 결제 -->
             
             <div class="reward-cash-promotion">
             	<p>쿠페이 머니 결제 시 1% 적립</p>
				<p>[로켓와우 + 쿠페이 계좌이체] 결제 시 2% 적립</p>
				<p>[로켓와우 + 쿠페이 머니] 결제 시 4% 추가적립 <strong>2808일 남음</strong> </p>
				<button type="button" class="reward-cash-promotion-btn"> 로켓와우 무료체험 신청하기 </button>
              </div>
           </div>
        		   
        	<!-- 장바구니 구매하기 -->
        	
        	<div class="product-buy-footer">
	        	<button class="product-cart-btn"> 장바구니 담기 </button>
	            <button class="product-buy-btn"><span>바로구매 ></span></button>
	        </div>
        		
       		<div class="product-description">
            	<ul>
                	<li>색상계열: 화이트계열</li>
                  	<li>구성: 워머+캔들 세트</li>
                  	<li>쿠팡상품번호: 7058245313 - 17492361940</li>
                </ul>
            </div>
		</div>
    </div>    
    
        
        
        <!--  함께 비교하면 좋을 상품 목록 -->
        
        <div class="recommendation">
        	<div class="recommendation-inner">
        		<h2 class="recommendation_title">함께 비교하면 좋을 상품</h2>
        			<ul>
        				<li class="rl-itemhps-scroll-item">
							<div class="rl-item_image">
								<img src="https://thumbnail10.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/9dd3/c9092e14ef6037960d0f0919a79b60eea7c2dee7b7ad77fc8ccb2dabbd9d.jpg" width=150px;>
							</div>
							<span class="rl-item_title">유칼립투스 천연 캔들</span>
							<span class="rl-item_price"><em>46,790원</em></span>
	        				<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        				<div class="rate"> <span style="width: 60%"></span></div> 
	        				<div class="review_count">(19)</div>
        				</li>
        				<li class="rl-itemhps-scroll-item">
							<div class="rl-item_image">
							<img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/25a7/214e8486c2e6e53b48486b86384762375822c68cee96ffec18780ec9c372.jpg" width=150px;>
							</div>
							<span class="rl-item_title">블링블링비주 로즈골드</span>
							<span class="rl-item_price"><em>46,790원</em></span>
	        				<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" width=50px;>
	        				<div class="rate"> <span style="width: 60%"></span></div> 
	        				<div class="review_count">(1)</div>
        				</li>
        				<li class="rl-itemhps-scroll-item">
							<div class="rl-item_image">
							<img src="https://thumbnail9.coupangcdn.com/thumbnails/remote/300x300ex/image/retail/images/2339947720086163-139678e9-4234-4e1c-96cc-03c5631c5b4a.jpg" width=150px;>
							</div>
							<span class="rl-item_title">크리스탈캔들 워머로즈</span>
							<span class="rl-item_price"><em>46,790원</em></span>
	        				<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        				<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(593)</div>
        				</li>
        				<li class="rl-itemhps-scroll-item">
							<div class="rl-item_image">
							<img src="https://thumbnail9.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/5f5f/9f633ca20188e441d8077fe2c0d749dc9309cde759848c27650b89989b1c.jpg" width=150px;>
							</div>
							<span class="rl-item_title">에인디비주 캔들워커</span>
							<span class="rl-item_price"><em>46,790원</em></span>
	        				<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        				<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(1)</div>
        				</li>
        				<li class="rl-itemhps-scroll-item">
							<div class="rl-item_image">
							<img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/retail/images/14865344147270-575fa531-3230-44c4-9e0f-a9f91e768f4d.jpg" width=150px;>
							</div>
							<span class="rl-item_title">에인디아로마 워머</span>
							<span class="rl-item_price"><em>46,790원</em></span>
	        				<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        				<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(5)</div>
        				</li>
        			</ul>
        	</div>
       </div> 
        
        <!-- 상품 필수 정보 -->
        
        <div class="essential"> 
        
        <!-- 메뉴바 -->  
        
	        <div class="menu_tab">
		       <a href="#prod-delivery-return-policy-table">상품상세</a>	       
		       <a href="#sdp-review_title">상품평(4)</a>
		       <a href="#prod-inquiry-list__title">상품문의</a>
			   <a href="#product-delivery-return-policy-title">배송/교환/반품 안내</a>
	        </div>
	        
	        <!-- 필수표기 정보 테이블 -->
	        
           <p class="table-title">필수 표기정보</p>
           <table class="prod-delivery-return-policy-table" id="prod-delivery-return-policy-table">
	           	<tbody>
		           	<tr>
		           		<th>품목 및 제품명</th>
		           		<td>방향제 / 퓨어&아로마 워머전용 캔들 미드썸머나잇	</td>
		           		<th>용도(표백제의 경우 계열을 함께표시) 및 제형</th>
		           		<td>일반용(실내공간용) / 훈증형</td>
		           	</tr>
		           	<tr>
		           		<th>제조연월 및 유통기한 (유통기한의 경우 해당 없는 제품은 생략 가능)</th>
		           		<td>본 상품은 해당 물류센터 직발송 상품인 관계로 해당 정보가 매번 변경되어 정확한 정보제공이 어렵습니다. 관련 사항은 쿠팡고객센터(1577-7011)로 문의 바랍니다.</td>
		           		<th>중량∙용량∙매수∙크기	</th>
		           		<td>280g, 1개</td>
		           	</tr>
		           	<tr>
		           		<th>효과,효능 (승인대상 제품에 한함)</th>
		           		<td>해당없음</td>
		           		<th>수입자(수입제품에 한함), 제조국 및 제조사	</th>
		           		<td>컨텐츠 참조</td>
		           	</tr>
		           	<tr>
		           		<th>효과,효능 (승인대상 제품에 한함)</th>
		           		<td>해당없음</td>
		           		<th>수입자(수입제품에 한함), 제조국 및 제조사	</th>
		           		<td>컨텐츠 참조</td>
		           	</tr>
		           	<tr>
		           		<th>어린이보호포장 대상제품 유무	</th>
		           		<td>어린이보호포장 비대상	</td>
		           		<th>제품에 사용된 화학물질 명칭(안전확인대상생활화학제품 지정 및 안전∙표시기준 [별표 6]에 따른 표시대상 화학물질로서 주요물질, 보존제, 알레르기반응가능물질 등의 명칭)</th>
		           		<td>컨텐츠 참조</td>
		           	</tr>
		           	<tr>
		           		<th>사용상 주의사항</th>
		           		<td>컨텐츠 참조	</td>
		           		<th>안전기준적합확인신고번호 또는 안전확인대상생활화학제품승인번호 (화학제품안전법 시행일(경과조치 기간 포함) 이전에 생산∙수입된 위해우려제품의 경우 종전 법에 따른 자가검사번호를 표시)</th>
		           		<td>CB20-12-1084</td>
		           	</tr>
		           	
		           	<tr>
		           		<th>효과,효능 (승인대상 제품에 한함)</th>
		           		<td>해당없음</td>
		           		<th>수입자(수입제품에 한함), 제조국 및 제조사	</th>
		           		<td>컨텐츠 참조</td>
		           	</tr>
		           	<tr>
		           		<th>소비자상담 관련 전화번호</th>
		           		<td colspan="3">쿠팡고객센터 1577-7011</td>
		           	</tr>
	           	</tbody>
           </table>
        </div>
        
        
        <!-- 상품 소개 이미지 -->
        
        <div class="subType_image">
        	<img src="https://thumbnail6.coupangcdn.com/thumbnails/remote/q89/image/retail/images/5454775798980794-5131f68a-ddd8-4c31-8aef-09ced8d78d93.jpg">
        </div>
        
         <!-- 이런 상품은 어때요? : 함께 비교하면 좋을 상품과 동일 -->
         
         <div class="recommendation">
        	<div class="recommendation-inner">
        	        	<h2 class="recommendation_title">이런 상품은 어때요?</h2>
        	<ul>
        		<li class="rl-itemhps-scroll-item">
					<div class="rl-item_image">
						<img src="https://thumbnail10.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/9dd3/c9092e14ef6037960d0f0919a79b60eea7c2dee7b7ad77fc8ccb2dabbd9d.jpg" width=150px;>
					</div>
					<span class="rl-item_title">유칼립투스 천연 캔들</span>
					<span class="rl-item_price"><em>46,790원</em></span>
	        		<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        		<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(19)</div>
        		</li>
        		<li class="rl-itemhps-scroll-item">
					<div class="rl-item_image">
						<img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/25a7/214e8486c2e6e53b48486b86384762375822c68cee96ffec18780ec9c372.jpg" width=150px;>
					</div>
					<span class="rl-item_title">블링블링비주 로즈골드</span>
					<span class="rl-item_price"><em>46,790원</em></span>
	        		<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" width=50px;>
	        		<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(1)</div>
        		</li>
        		<li class="rl-itemhps-scroll-item">
					<div class="rl-item_image">
						<img src="https://thumbnail9.coupangcdn.com/thumbnails/remote/300x300ex/image/retail/images/2339947720086163-139678e9-4234-4e1c-96cc-03c5631c5b4a.jpg" width=150px;>
					</div>
					<span class="rl-item_title">크리스탈캔들 워머로즈</span>
					<span class="rl-item_price"><em>46,790원</em></span>
	        		<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        		<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(593)</div>
        		</li>
        		<li class="rl-itemhps-scroll-item">
					<div class="rl-item_image">
						<img src="https://thumbnail9.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/5f5f/9f633ca20188e441d8077fe2c0d749dc9309cde759848c27650b89989b1c.jpg" width=150px;>
					</div>
					<span class="rl-item_title">에인디비주 캔들워커</span>
					<span class="rl-item_price"><em>46,790원</em></span>
	        		<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        		<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(1)</div>
        		</li>
        		<li class="rl-itemhps-scroll-item">
					<div class="rl-item_image">
						<img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/retail/images/14865344147270-575fa531-3230-44c4-9e0f-a9f91e768f4d.jpg" width=150px;>
					</div>
					<span class="rl-item_title">에인디아로마 워머</span>
					<span class="rl-item_price"><em>46,790원</em></span>
	        		<img src="https://image10.coupangcdn.com/image/badges/rocket/rocket_logo.png" class="rocket shipping" alt="로켓배송 아이콘" width=50px;>
	        		<div class="rate"> <span style="width: 60%"></span></div> <div class="review_count">(5)</div>
        		</li>
        	</ul>
        </div>
       </div> 
       
       <!-- 상품평 -->
       
    	<div class="sdp-review">
		   <div class="sdp-review_title" id="sdp-review_title"> 
		    	<h4 class="sdp-review_prd-name">상품평</h4> 
		    	<div class="sdp-review_guide-btn">상품평 운영원칙</div>
		    </div>	
		  	<div class="sdp-review_caution">동일한 상품에 대해 작성된 상품으로 판매자는 다를 수 있습니다.</div>
			    <div class="sdp-review_rating">
			    	<div class="rate"><span style="width: 70%"></span></div>    	  
			     	<div class="sdp-review_count"><h1>4</h1></div>	    	
			    	<div class="sdp-review_info-detail">자세히 보기 ></div>
			    </div>
	   	</div>
	    	
	    	<!-- 상품평 검색 메뉴바 -->
	    	
	    	<section class= "sdp-review_article-menubar">
	    		<div class= "sdp-review__article__order">
	    			<button class="sdp-review_best">베스트순</button>
	    			<div class="sdp-review-sortbar">|</div>
	    			<button class= "sdp-review_new">최신순</button>
	    			<input class="sdp-review_search" placeholder="상품평을 검색해 보세요." maxlength="30">
	    		</div>
	    	
	    	
	    	<!-- 후기 및 판매자 정보 -->
	    	
	    	<article class="sdp-review_article-list">
		    	<div class="sdp-review_article_list_info">
		    	<br>
		    	<div class="sdp-review_article_list_info_profile"><img src="https://img1a.coupangcdn.com/image/productreview/web/pdp/profile/img-profile-empty.png"></div>  	
		    	<div class="sdp-review_article_list_info_user">박*훈&nbsp;</div>
		    	<div class="sdp-review_article_list_info_product-info">2023.05.12</div>
		    	<div class="sdp-review_article_list_info_product-info_seller_name">판매자: 쿠팡(주)</div>
	    		<div class="sdp-review_article_list_info_product-info_product-info_name">캔들백화점 스퀘어 크리스탈 루시드 캔들워머 로즈골드화이트+소이 캔들 280g세트</div>
	    	</article>
	    </section>	
	    	<!-- 상품문의 주의란 -->
	    	
	    <div class="prod-inquiry-list">
	        	<div class="clearFix">
	            	<h4 class="prod-inquiry-list__title" id="prod-inquiry-list__title">상품문의</h4>
	            	<a class="prod-inquiry-list__write-btn" href="https://login.coupang.com/login/login.pang?rtnUrl=https%3A%2F%2Fwww.coupang.com%2Fnp%2Fpost%2Flogin%3Fr%3Dhttps%253A%252F%252Fwww.coupang.com%252Fvp%252Fproducts%252F7058245313%253FitemId%253D17492363374%2526vendorItemId%253D84334978398%2526sourceType%253Dsrp_product_ads%2526clickEventId%253Dbe06e564-043d-437e-bb6a-de109533728e%2526korePlacement%253D15%2526koreSubPlacement%253D1%2526q%253D%2525EC%2525BA%252594%2525EB%252593%2525A4%2525EB%2525B0%2525B1%2525ED%252599%252594%2525EC%2525A0%252590%252B%2525EC%25258A%2525A4%2525ED%252580%252598%2525EC%252596%2525B4%252B%2525ED%252581%2525AC%2525EB%2525A6%2525AC%2525EC%25258A%2525A4%2525ED%252583%252588%252B%2525EB%2525A3%2525A8%2525EC%25258B%25259C%2525EB%252593%25259C%252B%2525EC%2525BA%252594%2525EB%252593%2525A4%2525EC%25259B%25258C%2525EB%2525A8%2525B8%252B%2525EB%2525A1%25259C%2525EC%2525A6%252588%2525EA%2525B3%2525A8%2525EB%252593%25259C%2525ED%252599%252594%2525EC%25259D%2525B4%2525ED%25258A%2525B8%252B%2525EC%252586%25258C%2525EC%25259D%2525B4%252B%2525EC%2525BA%252594%2525EB%252593%2525A4%252B280g%2525EC%252584%2525B8%2525ED%25258A%2525B8%2526itemsCount%253D36%2526searchId%253Dcc37c5f5f01e4dbd8920e58de2c8c56e%2526rank%253D0%2526isAddedCart%253D">문의하기</a>
	        	</div>
	
	        <div class="prod-inquiry-list__emphasis">
	            <ul>
	                <li>구매한 상품의 <em>취소/반품은 마이쿠팡 구매내역에서 신청</em> 가능합니다.</li>
	                <li>상품문의 및 후기게시판을 통해 취소나 환불, 반품 등은 처리되지 않습니다.</li>
	                <li><em>가격, 판매자, 교환/환불 및 배송 등 해당 상품 자체와 관련 없는 문의는 고객센터 내 1:1 문의하기</em>를 이용해주세요.</li>
	                <li><em>"해당 상품 자체"와 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 이동, 노출제한, 삭제 등의 조치가 취해질 수 있습니다.</em></li>
	                <li>공개 게시판이므로 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지 말아주세요.</li>
	            </ul>
	            <br><hr><br>
	        </div>
	
		<!-- 상품문의 -->
		
        <div class="prod-inquiry-list__container">
			<div class="prod-inquiry-items">
				<div class="prod-inquiry-item">
					<em class="prod-inquiry-item__label">질문</em>
					<div class="prod-inquiry-item__wrap">
						<div class="prod-inquiry-item__time">2022/11/24 07:33:50</div>
						<div class="prod-inquiry-item__selected-option">베이&nbsp;&nbsp;쿠팡 </div>
						<div class="prod-inquiry-item__content">할로겐 전구 몇와트 인가요? 전구 나가서 사야되는데요 어떤 걸로 사야할지..</div>
						<hr><br>
					</div>							    
					<div class="prod-inquiry-item__reply">
						<em class="prod-inquiry-item__reply__label">답변</em>
						<div class="prod-inquiry-item__reply__wrap">
							<strong class="prod-inquiry-item__reply__author">[COUPANG]</strong>
							<div class="prod-inquiry-item__reply__content">캔들백화점 불빛높이조절 루시드 캔들워머 로즈골드화이트+소이캔들 280g세트, 베이 상품은 할로겐 전구 35W~50W 전구 이용해주시면 되는 점 상품 페이지를 통해 설명 드리고 있는 점 참고하여  이용 부탁드립니다.</div>
							<div class="prod-inquiry-item__reply__time">2023/02/02 13:05:34</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 신고하기 -->
					
		<div class="prod-report">
	    	<p class="prod-report__text">판매 부적격 상품 또는 허위과장광고 및 지식재산권을 침해하는 상품의 경우 신고하여 주시기 바랍니다.</p>
	        <button class="prod-report__button" id="productReport">신고하기</button>
	    </div>
    		</div>
    		
    	   <br>
    	   
    	   <!--배송 교환 반품 안내-->
    	   
            <div class="product-etc">
               <h5 class="product-delivery-return-policy-title" id="product-delivery-return-policy-title">배송정보</h5>
               <table class="product-delivery-policy-table">
                  <tbody> 
                     <tr>
                        <th>배송방법</th>
                        <td>순차배송</td>
                        <th rowspan="2">배송비</th>
                        <td rowspan="2">"무료배송"<br>- 로켓배송 상품 중 19,800원 이상 구매 시 무료배송<br>- 도서산간 지역 추가비용 없음</td>
                     </tr>
                     <tr>
                        <th>묶음배송 여부</th>
                        <td>가능</td>
                     </tr>
                     <tr>
                        <th>배송기간</th>
                        <td colspan="3">
                           <ul>
                              <li>
                                 쿠팡친구 배송 지역 : 주문 및 결제 완료 후, 1-2일 이내 도착
                              </li>
                              <li>
                                 쿠팡친구 미배송 지역 : 주문 및 결제 완료 후, 2-3일 이내 도착
                              </li>
                              <p>
                                 - 도서 산간 지역 등은 하루가 더 소요될 수 있습니다. 곧 고객님께도 쿠팡친구가 찾아갈 수 있도록 노력하겠습니다
                              </p>
                              <li>
                                 천재지변, 물량 수급 변동 등 예외적인 사유 발생 시, 다소 지연될 수 있는 점 양해 부탁드립니다.
                              </li>
                           </ul>   
                        </td>
                     </tr>
                  </tbody>
               </table>
             </div>
             
              <!--교환/반품 안내-->
              
            <h5 class="product-delivery-return-policy-title">교환/반품 안내</h5>
               <ul>
                  <li>
                     교환/반품에 관한 일반적인 사항은 판매자가 제시사항보다 관계법령이 우선합니다.<br>
                     다만, 판매자의 제시사항이 관계법령보다 소비자에게 유리한 경우에는 판매자 제시사항이 적용됩니다.
                  </li>
               </ul>   
               <table class="product-delivery-policy-table">
                  <tbody>
                     <tr>   
                        <th>교환/반품 비용</th>
                        <td>"ㆍ와우멤버십 회원: 무료로 반품/교환 가능"<br>
                           "ㆍ와우멤버십 회원 아닌 경우:"<br>
                           "1) [총 주문금액] - [반품 상품금액] = 19,800원 미만인 경우 반품비 5,000원"<br>
                           "2) [총 주문금액] - [반품 상품금액] = 19,800원 이상인 경우 반품비 2,500원"<br>
                        </td>
                     </tr>
                     <tr>
                        <th>교환/반품 신청 기준일</th>
                        <p>ㆍ단순변심에 의한 로켓배송 상품의 교환/반품은 제품 수령 후 30일 이내까지, 교환/반품 제한사항에 해당하지 않는 경우에만 가능 (교환/반품 비용 고객부담)</p>
                        <p>ㆍ상품의 내용이 표시·광고의 내용과 다른 경우에는 상품을 수령한 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 가능</p>
                     </tr>
                  </tbody>
               </table>
               
              <!--교환/반품 제한 사항-->
              
            <h5 class="product-delivery-return-policy-title">교환/반품 제한사항</h5>
            <ul class="product-delivery-return-policy_limit-list">
               <li>주문/제작 상품의 경우, 상품의 제작이 이미 진행된 경우</li>
               <li>상품 포장을 개봉하여 사용 또는 설치 완료되어 상품의 가치가 훼손된 경우 (단, 내용 확인을 위한 포장 개봉의 경우는 예외)</li>
               <li>고객의 사용, 시간경과, 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우</li>
               <li>세트상품 일부 사용, 구성품을 분실하였거나 취급 부주의로 인한 파손/고장/오염으로 재판매 불가한 경우</li>
               <li>모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 달라, 고객이 단순 변심으로 교환/반품을 무료로 요청하는 경우</li>
               <li>제조사의 사정 (신모델 출시 등) 및 부품 가격 변동 등에 의해 무료 교환/반품으로 요청하는 경우</li>
            </ul>
            <p>※ 각 상품별로 아래와 같은 사유로 취소/반품이 제한될 수 있습니다.</p>
            <table class="product-delivery-policy-table">
               <tbody>
                  <tr>
                     <th>의류/잡화/수입명품</th>
                     <td><p>ㆍ상품의 택(TAG) 제거, 라벨 및 상품 훼손, 구성품 누락으로 상품의 가치가 현저히 감소된 경우</p></td>
                  </tr>
                  <tr>
                     <th>계절상품/식품/화장품</th>
                     <td><p>ㆍ상품의 택(TAG) 제거, 라벨 및 상품 훼손, 구성품 누락으로 상품의 가치가 현저히 감소된 경우</p></td>
                  </tr>
                  <tr>
                     <th>전기/가전/설치상품</th>
                     <td><p>ㆍ설치 또는 사용하여 재판매가 어려운 경우</p><br>
                        <p>ㆍ상품의 시리얼 넘버 유출로 내장된 소프트웨어의 가치가 감소한 경우 (내비게이션, OS시리얼이 적힌 PMP</p>
                        <p>ㆍ홀로그램 등을 분리, 분실, 훼손하여 상품의 가치가 현저히 감소하여 재판매가 불가할 경우 (노트북, 데스크탑 PC 등)</p>
                        <br>   
                     </td>
                  </tr>
                  <tr>
                     <th>자동차용품</th>
                     <td><p>ㆍ상품을 개봉하여 장착한 이후 단순변심인 경우</p></td>
                  </tr>
                  <tr>
                     <th>CD/DVD/GAME/BOOK</th>
                     <td><p>ㆍ복제가 가능한 상품의 포장 등을 훼손한 경우</p></td>
                  </tr>
               </tbody>
            </table>
            
            <!--판매자 정보-->
            
            <div class="prod-delivey-item_table product-seller">
               <p>판매자정보</p>
               <table class="product-delivery-policy-table">
                  <tbody>
                     <tr>
                        <th>판매자</th>
                        <td>쿠팡 1577-7011</td>
                     </tr>
                  </tbody>
               </table>
               <p>미성년자가 체결한 계약은 법정대리인이 동의하지 않는 경우 본인 또는 법정대리인이 취소할 수 있습니다.</p>
            </div>
            
        <!-- 고르고 골랐어요 -->
        
        <div class="bottom-banner">
           <div class="sdp-bottom-banner-header">
           <br><br><br>
           	<h4 class="banner-title">고르고 골랐어요</h4>
            <br>
           	</div>
            	<a class="banner-link" href="https://www.coupang.com/vp/products/6555208159?itemId=14649998015&vendorItemId=81891505305&sourceType=SDP_BOTTOM_BANNER&clickEventId=c71f8574-ac8d-4c00-b678-257a3242d777&isAddedCart=">
                 <div class="sdp-bottom-banner-content">
	             	<div class="sdp-bottom-banner-info">
	                	<div class="sdp-bottom-banner-thumb">
	                    	<img src="https://thumbnail7.coupangcdn.com/thumbnails/remote/292x292ex/image/vendor_inventory/0603/a677eabca00d335ad77331b2b7813f32a82a2810424a8e339e2c70f79990.jpg">
	                     </div>
		               <div class ="item-rating">
		                     <span class="rating-stars"></span>
		                </div>
		                <br>
		                <div class="item-link-button">
		                     <button type="button" class ="button"><img src="https://static.coupangcdn.com/image/cmg/common/cta/circle-56.png"></button>
	                    </div>
                  	</div>
                  </div>	
                </a>
           </div>      
		</div>    
	</body>
</html>