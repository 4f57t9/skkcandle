var jumunbutton = document.getElementsByClassName("jumun-years-button");
var tabbutton = document.getElementsByClassName("tab-button");

function jumunClick(event) {
    if (event.target.classList[1] === "clicked") {
      
    } else {
      for (var i = 0; i < jumunbutton.length; i++) {
    	  jumunbutton[i].classList.remove("clicked");
    	  jumunbutton[i].classList.add("notclicked");
      }

      event.target.classList.add("clicked");
      event.target.classList.remove("notclicked");
    }
}
function tabClick(event) {
    if (event.target.classList[1] === "tabclicked") {
      
    } else {
      for (var i = 0; i < tabbutton.length; i++) {
    	  tabbutton[i].classList.remove("tabclicked");
    	  tabbutton[i].classList.add("tabnotclicked");
      }

      event.target.classList.add("tabclicked");
      event.target.classList.remove("tabnotclicked");
      
	  if(event.target.value =="travel"){
		  jumuntravel();
	  }else if(event.target.value =="total" ){
		  jumuntotal();
	  }else if(event.target.value =="delivery"){
		  jumundelivery();
	  }else if(event.target.value =="ticket"){
		  jumunno();
	  }
    }
}
function jumunno(){
	 let html ="";
	 let button="";
	 

	 html += '<div style="width: 800px; padding:0 auto;">';
	 html += '	<div id="deliver-item-none">';
	 html += '		<svg width="24" height="24" focusable="false" viewBox="0 0 24 24" aria-hidden="true" role="presentation"><polygon fill-opacity="0" fill="#FFFFFF" points="0 24 24 24 24 0 0 0"></polygon><path d="M12,2 L24,22 L0,22 L12,2 Z M11.9962851,17.6000004 C11.6396269,17.6000004 11.3510849,17.7140976 11.1306504,17.9422955 C10.9102158,18.1704933 10.8000002,18.4577036 10.8000002,18.8039349 C10.8000002,19.1501661 10.9102158,19.4360649 11.1306504,19.6616398 C11.3510849,19.8872147 11.6396269,20.0000005 11.9962851,20.0000005 C12.3578968,20.0000005 12.6489156,19.8872147 12.8693501,19.6616398 C13.0897847,19.4360649 13.2000003,19.1501661 13.2000003,18.8039349 C13.2000003,18.4524577 13.0897847,18.163936 12.8693501,17.9383611 C12.6489156,17.7127861 12.3578968,17.6000004 11.9962851,17.6000004 Z M13.3999996,7.5 L10.6000004,7.5 L11,16 L13,16 L13.3999996,7.5 Z" fill="#FF9600" fill-rule="nonzero"></path></svg>';
	 html += '		<div style="margin-top:10px;">최근 6개월간 주문하신 내역이 없습니다.';
	 html += '			<a href="#"><span id="jumunbogi-2023">2023년 주문보기 ></span></a>';
	 html += '		</div>';
	 html += '	</div>';
	 html += '</div>';
	 
	 var container = document.getElementById("deliver-item-list-container");
	 container.innerHTML = html;
	 
	 var buttoncontainer = document.getElementById("after-previous-button-container");
	 buttoncontainer.innerHTML = button;
}

function jumuntotal(){
	// Create an XMLHttpRequest object
	const xhttp = new XMLHttpRequest();

	// Define a callback function
	xhttp.onload = function() {
	  let data = JSON.parse(xhttp.responseText);
	  let html ="";
	  let date ="";
	  let button="";
	  
	  button += ' <div style="padding:0 auto;">';
	  button += '<button id="ezun-daum-button" disabled> ';
	  button += '	<svg width="14" height="14" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill:#aab5c0;transform:rotate(180deg)"><path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		<path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '	</svg>';
	  button += '	이전';
	  button += '	</button>';
	  button += '<button id="ezun-daum-button">'; 
	  button += '	다음';
	  button += '	<svg width="14" height="14" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill:#aab5c0"><path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		<path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		</svg>';
	  button += '</button>';
	  button += '</div>';
	  data.forEach(function(item,index){
		  	
	  	if(date ==""|| date !=item.orderdate){
	  		date = item.orderdate;
	  		
	  		  if(index!=0){
	  			 html += '<div style="margin-top: 10px;"></div>';
				 html += '</div>';
	  		  }
	  		
	  		  html += '<div class="onetime-deliver">';
	  		  
	  		  html += '<div class="deliver-date-detail">';
			  html += '	<div class="deliver-date-status">'+	item.orderdate +'주문 </div>';
			  html += '	<div class="deliver-detail">';
			  html += '			<a href="#" style="text-decoration:none;"><span>주문 상세보기</span>';
			  html += '		<svg width="16" height="16" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill: rgb(52, 106, 255); vertical-align: middle; height: 100%;"><path fill="#346aff" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path></svg></a>';
			  html += '	</div>';
			  html += '	</div>';
			  	
			  html += '<div class="deliver-content">';
			  html += '	<table class="deliver-table">';
			  html += '	<colgroup>';
			  html += '		<col width="600">';
			  html += '			<col width>';
			  html += '		</colgroup>';
			  html += '		<tbody>';
			  html += '			<tr>';
			  html += '			 <td class="tabletd">';
			  html += '			 	<div class="tabletddiv">';
			  html += '			 		<div class="tabletddiv2">';
			  html += '			 			<span class="tablespan1">'+ item.orderstatus +'</span>';
			  html += '			 			<span class="tablespan2">';
			  html += '			 				<span class="tablespan3"></span>';
			  html += '			 			</span>';
			  html += '			 			<span class="deliver-date">'+ item.arrivedate +'</span>';
			  html += '			 		</div>';
			  html += '			 		<div class="jjumjjumjjum">';
			  html += '			 			<button class="jjumjjum">';
			  html += '			 				<div class="jjum"></div>';
			  html += '			 				<div class="jjum"></div>';
			  html += '			 				<div class="jjum"></div>';
			  html += '			 			</button>';
			  html += '			 		</div>';
			  html += '			 	</div>';
			  html += '			 	<div class="under-jjumjjum"></div>';
			  html += '			 	<div>';
			  html += '			 		<div style="margin-top: 20px;">';
			  html += '			 			<div style="position: relative;top: -16px;-webkit-box-pack: center;display: none;"></div>';
			  html += '			 			<div class="deliver-item-box">';
			  html += '			 				<div class="deliver-item-box-flex">';
			  html += '			 					<div class="item-img-box">';
			  html += '			 						<a href="#">';
			  html += '			 							<img loading="lazy" width="64" height="64" src="'+ item.thumbnail +'" alt="윈에어 자이로볼 헬스용품, 블랙">';
			  html += '			 						</a>';
			  html += '			 					</div>';
			  html += '			 					<div class="item-name-box">';
			  html += '			 						<div class="item-name-flex">';
			  html += '			 							<a style="display:none; margin-bottom:4px;"></a>';
			  html += '			 							<a class="item-name-atag" href="#" style="text-decoration: none;">';
			  html += '			 								<span class="item-name" >'+ item.itemname+ '</span>';
			  html += '			 							</a>';
			  html += '			 							<a style="display: none;margin-bottom: 4px;cursor: pointer;text-decoration: none;outline: none;-webkit-user-select: none;"></a>';
			  html += '			 							<a class="item-price-basket" style="text-decoration: none;">';
			  html += '			 								<div>';
			  html += '			 									<div class="item-price-cnt">';
			  html += '			 										<span class="finally-price">'+ item.itemprice +'</span>';
			  html += '			 										<span class="between-price-cnt">';
			  html += '			 											<span class="between-price-cnt-jjum"></span>';
			  html += '			 										</span>';
			  html += '			 										<span class="finally-cnt">' + item.itemcnt +'</span>';
			  html += '			 									</div>';
			  html += '			 								</div>';
			  html += '			 								<div>';
			  html += '			 									<button class="jangbaguni-damgi">장바구니 담기</button>';
			  html += '			 									<div></div>';
			  html += '			 								</div>';
			  html += '			 							</a>';
			  html += '			 							<div style="display:flex;flex-direction: row;"></div>';
			  html += '			 						</div>';
			  html += '			 					</div> ';
			  html += '			 				</div>';
			  html += '			 			</div>';
			  html += '			 		</div>';
			  html += '			 	</div>';
			  html += '			 </td>';
			  html += '			 <td class="deliver-right-buttons-box">';
			  html += '			 	<div class="deliver-right-buttons">';
			  html += '					<button class="deliver-right-button blue">배송조회</button>';												 	
			  html += '					<button class="deliver-right-button gray">교환, 반품 신청</button>';												 	
			  html += '					<button class="deliver-right-button gray">리뷰 작성하기</button>';												 	
			  html += '					<button class="deliver-right-button gray">판매자 문의</button>	';											 	
			  html += '			 	</div>';
			  html += '			 </td>';
			  html += '			</tr>';
			  html += '		</tbody>';
			  html += '	</table>';
			  html += '</div>';
	  	}else if(item.orderdate == date){
	  		  					  		 
			  html += '<div class="deliver-content">';
			  html += '	<table class="deliver-table">';
			  html += '	<colgroup>';
			  html += '		<col width="600">';
			  html += '			<col width>';
			  html += '		</colgroup>';
			  html += '		<tbody>';
			  html += '			<tr>';
			  html += '			 <td class="tabletd">';
			  html += '			 	<div class="tabletddiv">';
			  html += '			 		<div class="tabletddiv2">';
			  html += '			 			<span class="tablespan1">'+ item.orderstatus +'</span>';
			  html += '			 			<span class="tablespan2">';
			  html += '			 				<span class="tablespan3"></span>';
			  html += '			 			</span>';
			  html += '			 			<span class="deliver-date">'+ item.arrivedate +'</span>';
			  html += '			 		</div>';
			  html += '			 		<div class="jjumjjumjjum">';
			  html += '			 			<button class="jjumjjum">';
			  html += '			 				<div class="jjum"></div>';
			  html += '			 				<div class="jjum"></div>';
			  html += '			 				<div class="jjum"></div>';
			  html += '			 			</button>';
			  html += '			 		</div>';
			  html += '			 	</div>';
			  html += '			 	<div class="under-jjumjjum"></div>';
			  html += '			 	<div>';
			  html += '			 		<div style="margin-top: 20px;">';
			  html += '			 			<div style="position: relative;top: -16px;-webkit-box-pack: center;display: none;"></div>';
			  html += '			 			<div class="deliver-item-box">';
			  html += '			 				<div class="deliver-item-box-flex">';
			  html += '			 					<div class="item-img-box">';
			  html += '			 						<a href="#">';
			  html += '			 							<img loading="lazy" width="64" height="64" src="'+ item.thumbnail +'" alt="윈에어 자이로볼 헬스용품, 블랙">';
			  html += '			 						</a>';
			  html += '			 					</div>';
			  html += '			 					<div class="item-name-box">';
			  html += '			 						<div class="item-name-flex">';
			  html += '			 							<a style="display:none; margin-bottom:4px;"></a>';
			  html += '			 							<a class="item-name-atag" href="#" style="text-decoration: none;">';
			  html += '			 								<span class="item-name" >'+ item.itemname+ '</span>';
			  html += '			 							</a>';
			  html += '			 							<a style="display: none;margin-bottom: 4px;cursor: pointer;text-decoration: none;outline: none;-webkit-user-select: none;"></a>';
			  html += '			 							<a class="item-price-basket" style="text-decoration: none;">';
			  html += '			 								<div>';
			  html += '			 									<div class="item-price-cnt">';
			  html += '			 										<span class="finally-price">'+ item.itemprice +'</span>';
			  html += '			 										<span class="between-price-cnt">';
			  html += '			 											<span class="between-price-cnt-jjum"></span>';
			  html += '			 										</span>';
			  html += '			 										<span class="finally-cnt">' + item.itemcnt +'</span>';
			  html += '			 									</div>';
			  html += '			 								</div>';
			  html += '			 								<div>';
			  html += '			 									<button class="jangbaguni-damgi">장바구니 담기</button>';
			  html += '			 									<div></div>';
			  html += '			 								</div>';
			  html += '			 							</a>';
			  html += '			 							<div style="display:flex;flex-direction: row;"></div>';
			  html += '			 						</div>';
			  html += '			 					</div> ';
			  html += '			 				</div>';
			  html += '			 			</div>';
			  html += '			 		</div>';
			  html += '			 	</div>';
			  html += '			 </td>';
			  html += '			 <td class="deliver-right-buttons-box">';
			  html += '			 	<div class="deliver-right-buttons">';
			  html += '					<button class="deliver-right-button blue">배송조회</button>';												 	
			  html += '					<button class="deliver-right-button gray">교환, 반품 신청</button>';												 	
			  html += '					<button class="deliver-right-button gray">리뷰 작성하기</button>';												 	
			  html += '					<button class="deliver-right-button gray">판매자 문의</button>	';											 	
			  html += '			 	</div>';
			  html += '			 </td>';
			  html += '			</tr>';
			  html += '		</tbody>';
			  html += '	</table>';
			  html += '</div>';
	  		
			  if (index === (data.length-1)){
				  html += '<div style="margin-top: 10px;"></div>';
				  html += '</div>';
			  }
	  	}

	  });
	  var buttoncontainer = document.getElementById("after-previous-button-container");
	  buttoncontainer.innerHTML = button;
	  
	  var container = document.getElementById("deliver-item-list-container");
	  container.innerHTML = html;
	}

	// Send a request
	xhttp.open("GET", "ordereditemdata.jsp");
	xhttp.send();
}

function jumundelivery(){
	// Create an XMLHttpRequest object
	const xhttp = new XMLHttpRequest();

	// Define a callback function
	xhttp.onload = function() {
	  let data = JSON.parse(xhttp.responseText);
	  let html ="";
	  let date ="";
	  let button="";
	  
	  button += ' <div style="padding:0 auto;">';
	  button += '<button id="ezun-daum-button" disabled> ';
	  button += '	<svg width="14" height="14" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill:#aab5c0;transform:rotate(180deg)"><path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		<path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '	</svg>';
	  button += '	이전';
	  button += '	</button>';
	  button += '<button id="ezun-daum-button">'; 
	  button += '	다음';
	  button += '	<svg width="14" height="14" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill:#aab5c0"><path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		<path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		</svg>';
	  button += '</button>';
	  button += '</div>';
	  data.forEach(function(item,index){
		if(item.itemtype =="deliveryitem"){
			if(date ==""|| date !=item.orderdate){
		  		date = item.orderdate;
		  		
		  		  if(index!=0){
		  			 html += '<div style="margin-top: 10px;"></div>';
					 html += '</div>';
		  		  }
		  		
		  		  html += '<div class="onetime-deliver">';
		  		  
		  		  html += '<div class="deliver-date-detail">';
				  html += '	<div class="deliver-date-status">'+	item.orderdate +'주문 </div>';
				  html += '	<div class="deliver-detail">';
				  html += '			<a href="#" style="text-decoration:none;"><span>주문 상세보기</span>';
				  html += '		<svg width="16" height="16" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill: rgb(52, 106, 255); vertical-align: middle; height: 100%;"><path fill="#346aff" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path></svg></a>';
				  html += '	</div>';
				  html += '	</div>';
				  	
				  html += '<div class="deliver-content">';
				  html += '	<table class="deliver-table">';
				  html += '	<colgroup>';
				  html += '		<col width="600">';
				  html += '			<col width>';
				  html += '		</colgroup>';
				  html += '		<tbody>';
				  html += '			<tr>';
				  html += '			 <td class="tabletd">';
				  html += '			 	<div class="tabletddiv">';
				  html += '			 		<div class="tabletddiv2">';
				  html += '			 			<span class="tablespan1">'+ item.orderstatus +'</span>';
				  html += '			 			<span class="tablespan2">';
				  html += '			 				<span class="tablespan3"></span>';
				  html += '			 			</span>';
				  html += '			 			<span class="deliver-date">'+ item.arrivedate +'</span>';
				  html += '			 		</div>';
				  html += '			 		<div class="jjumjjumjjum">';
				  html += '			 			<button class="jjumjjum">';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 			</button>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 	<div class="under-jjumjjum"></div>';
				  html += '			 	<div>';
				  html += '			 		<div style="margin-top: 20px;">';
				  html += '			 			<div style="position: relative;top: -16px;-webkit-box-pack: center;display: none;"></div>';
				  html += '			 			<div class="deliver-item-box">';
				  html += '			 				<div class="deliver-item-box-flex">';
				  html += '			 					<div class="item-img-box">';
				  html += '			 						<a href="#">';
				  html += '			 							<img loading="lazy" width="64" height="64" src="'+ item.thumbnail +'" alt="윈에어 자이로볼 헬스용품, 블랙">';
				  html += '			 						</a>';
				  html += '			 					</div>';
				  html += '			 					<div class="item-name-box">';
				  html += '			 						<div class="item-name-flex">';
				  html += '			 							<a style="display:none; margin-bottom:4px;"></a>';
				  html += '			 							<a class="item-name-atag" href="#" style="text-decoration: none;">';
				  html += '			 								<span class="item-name" >'+ item.itemname+ '</span>';
				  html += '			 							</a>';
				  html += '			 							<a style="display: none;margin-bottom: 4px;cursor: pointer;text-decoration: none;outline: none;-webkit-user-select: none;"></a>';
				  html += '			 							<a class="item-price-basket" style="text-decoration: none;">';
				  html += '			 								<div>';
				  html += '			 									<div class="item-price-cnt">';
				  html += '			 										<span class="finally-price">'+ item.itemprice +'</span>';
				  html += '			 										<span class="between-price-cnt">';
				  html += '			 											<span class="between-price-cnt-jjum"></span>';
				  html += '			 										</span>';
				  html += '			 										<span class="finally-cnt">' + item.itemcnt +'</span>';
				  html += '			 									</div>';
				  html += '			 								</div>';
				  html += '			 								<div>';
				  html += '			 									<button class="jangbaguni-damgi">장바구니 담기</button>';
				  html += '			 									<div></div>';
				  html += '			 								</div>';
				  html += '			 							</a>';
				  html += '			 							<div style="display:flex;flex-direction: row;"></div>';
				  html += '			 						</div>';
				  html += '			 					</div> ';
				  html += '			 				</div>';
				  html += '			 			</div>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			 <td class="deliver-right-buttons-box">';
				  html += '			 	<div class="deliver-right-buttons">';
				  html += '					<button class="deliver-right-button blue">배송조회</button>';												 	
				  html += '					<button class="deliver-right-button gray">교환, 반품 신청</button>';												 	
				  html += '					<button class="deliver-right-button gray">리뷰 작성하기</button>';												 	
				  html += '					<button class="deliver-right-button gray">판매자 문의</button>	';											 	
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			</tr>';
				  html += '		</tbody>';
				  html += '	</table>';
				  html += '</div>';
		  	}else if(item.orderdate == date){
		  		  					  		 
				  html += '<div class="deliver-content">';
				  html += '	<table class="deliver-table">';
				  html += '	<colgroup>';
				  html += '		<col width="600">';
				  html += '			<col width>';
				  html += '		</colgroup>';
				  html += '		<tbody>';
				  html += '			<tr>';
				  html += '			 <td class="tabletd">';
				  html += '			 	<div class="tabletddiv">';
				  html += '			 		<div class="tabletddiv2">';
				  html += '			 			<span class="tablespan1">'+ item.orderstatus +'</span>';
				  html += '			 			<span class="tablespan2">';
				  html += '			 				<span class="tablespan3"></span>';
				  html += '			 			</span>';
				  html += '			 			<span class="deliver-date">'+ item.arrivedate +'</span>';
				  html += '			 		</div>';
				  html += '			 		<div class="jjumjjumjjum">';
				  html += '			 			<button class="jjumjjum">';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 			</button>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 	<div class="under-jjumjjum"></div>';
				  html += '			 	<div>';
				  html += '			 		<div style="margin-top: 20px;">';
				  html += '			 			<div style="position: relative;top: -16px;-webkit-box-pack: center;display: none;"></div>';
				  html += '			 			<div class="deliver-item-box">';
				  html += '			 				<div class="deliver-item-box-flex">';
				  html += '			 					<div class="item-img-box">';
				  html += '			 						<a href="#">';
				  html += '			 							<img loading="lazy" width="64" height="64" src="'+ item.thumbnail +'" alt="윈에어 자이로볼 헬스용품, 블랙">';
				  html += '			 						</a>';
				  html += '			 					</div>';
				  html += '			 					<div class="item-name-box">';
				  html += '			 						<div class="item-name-flex">';
				  html += '			 							<a style="display:none; margin-bottom:4px;"></a>';
				  html += '			 							<a class="item-name-atag" href="#" style="text-decoration: none;">';
				  html += '			 								<span class="item-name" >'+ item.itemname+ '</span>';
				  html += '			 							</a>';
				  html += '			 							<a style="display: none;margin-bottom: 4px;cursor: pointer;text-decoration: none;outline: none;-webkit-user-select: none;"></a>';
				  html += '			 							<a class="item-price-basket" style="text-decoration: none;">';
				  html += '			 								<div>';
				  html += '			 									<div class="item-price-cnt">';
				  html += '			 										<span class="finally-price">'+ item.itemprice +'</span>';
				  html += '			 										<span class="between-price-cnt">';
				  html += '			 											<span class="between-price-cnt-jjum"></span>';
				  html += '			 										</span>';
				  html += '			 										<span class="finally-cnt">' + item.itemcnt +'</span>';
				  html += '			 									</div>';
				  html += '			 								</div>';
				  html += '			 								<div>';
				  html += '			 									<button class="jangbaguni-damgi">장바구니 담기</button>';
				  html += '			 									<div></div>';
				  html += '			 								</div>';
				  html += '			 							</a>';
				  html += '			 							<div style="display:flex;flex-direction: row;"></div>';
				  html += '			 						</div>';
				  html += '			 					</div> ';
				  html += '			 				</div>';
				  html += '			 			</div>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			 <td class="deliver-right-buttons-box">';
				  html += '			 	<div class="deliver-right-buttons">';
				  html += '					<button class="deliver-right-button blue">배송조회</button>';												 	
				  html += '					<button class="deliver-right-button gray">교환, 반품 신청</button>';												 	
				  html += '					<button class="deliver-right-button gray">리뷰 작성하기</button>';												 	
				  html += '					<button class="deliver-right-button gray">판매자 문의</button>	';											 	
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			</tr>';
				  html += '		</tbody>';
				  html += '	</table>';
				  html += '</div>';
		  		
				  if (index === (data.length-1)){
					  html += '<div style="margin-top: 10px;"></div>';
					  html += '</div>';
				  }
		  	}
		}
		  	
	  	

	  });
	  var buttoncontainer = document.getElementById("after-previous-button-container");
	  buttoncontainer.innerHTML = button;
	  
	  var container = document.getElementById("deliver-item-list-container");
	  container.innerHTML = html;
	}

	// Send a request
	xhttp.open("GET", "ordereditemdata.jsp");
	xhttp.send();
}
function jumuntravel(){
	// Create an XMLHttpRequest object
	const xhttp = new XMLHttpRequest();

	// Define a callback function
	xhttp.onload = function() {
	  let data = JSON.parse(xhttp.responseText);
	  let html ="";
	  let date ="";
	  let button="";
	  
	  button += ' <div style="padding:0 auto;">';
	  button += '<button id="ezun-daum-button" disabled> ';
	  button += '	<svg width="14" height="14" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill:#aab5c0;transform:rotate(180deg)"><path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		<path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '	</svg>';
	  button += '	이전';
	  button += '	</button>';
	  button += '<button id="ezun-daum-button">'; 
	  button += '	다음';
	  button += '	<svg width="14" height="14" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill:#aab5c0"><path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		<path fill="#aab5c0" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path>';
	  button += '		</svg>';
	  button += '</button>';
	  button += '</div>';
	  data.forEach(function(item,index){
		if(item.itemtype =="travelitem"){
			if(date ==""|| date !=item.orderdate){
		  		date = item.orderdate;
		  		
		  		  if(index!=0){
		  			 html += '<div style="margin-top: 10px;"></div>';
					 html += '</div>';
		  		  }
		  		
		  		  html += '<div class="onetime-deliver">';
		  		  
		  		  html += '<div class="deliver-date-detail">';
				  html += '	<div class="deliver-date-status">'+	item.orderdate +'주문 </div>';
				  html += '	<div class="deliver-detail">';
				  html += '			<a href="#" style="text-decoration:none;"><span>주문 상세보기</span>';
				  html += '		<svg width="16" height="16" focusable="false" viewBox="0 0 16 16" aria-hidden="true" role="presentation" style="fill: rgb(52, 106, 255); vertical-align: middle; height: 100%;"><path fill="#346aff" fill-rule="nonzero" d="M11.057 8L5.53 13.529c-.26.26-.26.682 0 .942.26.26.682.26.942 0l6-6c.26-.26.26-.682 0-.942l-6-6c-.26-.26-.682-.26-.942 0-.26.26-.26.682 0 .942L11.057 8z"></path></svg></a>';
				  html += '	</div>';
				  html += '	</div>';
				  	
				  html += '<div class="deliver-content">';
				  html += '	<table class="deliver-table">';
				  html += '	<colgroup>';
				  html += '		<col width="600">';
				  html += '			<col width>';
				  html += '		</colgroup>';
				  html += '		<tbody>';
				  html += '			<tr>';
				  html += '			 <td class="tabletd">';
				  html += '			 	<div class="tabletddiv">';
				  html += '			 		<div class="tabletddiv2">';
				  html += '			 			<span class="tablespan1">'+ item.orderstatus +'</span>';
				  html += '			 			<span class="tablespan2">';
				  html += '			 				<span class="tablespan3"></span>';
				  html += '			 			</span>';
				  html += '			 			<span class="deliver-date">'+ item.arrivedate +'</span>';
				  html += '			 		</div>';
				  html += '			 		<div class="jjumjjumjjum">';
				  html += '			 			<button class="jjumjjum">';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 			</button>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 	<div class="under-jjumjjum"></div>';
				  html += '			 	<div>';
				  html += '			 		<div style="margin-top: 20px;">';
				  html += '			 			<div style="position: relative;top: -16px;-webkit-box-pack: center;display: none;"></div>';
				  html += '			 			<div class="deliver-item-box">';
				  html += '			 				<div class="deliver-item-box-flex">';
				  html += '			 					<div class="item-img-box">';
				  html += '			 						<a href="#">';
				  html += '			 							<img loading="lazy" width="64" height="64" src="'+ item.thumbnail +'" alt="윈에어 자이로볼 헬스용품, 블랙">';
				  html += '			 						</a>';
				  html += '			 					</div>';
				  html += '			 					<div class="item-name-box">';
				  html += '			 						<div class="item-name-flex">';
				  html += '			 							<a style="display:none; margin-bottom:4px;"></a>';
				  html += '			 							<a class="item-name-atag" href="#" style="text-decoration: none;">';
				  html += '			 								<span class="item-name" >'+ item.itemname+ '</span>';
				  html += '			 							</a>';
				  html += '			 							<a style="display: none;margin-bottom: 4px;cursor: pointer;text-decoration: none;outline: none;-webkit-user-select: none;"></a>';
				  html += '			 							<a class="item-price-basket" style="text-decoration: none;">';
				  html += '			 								<div>';
				  html += '			 									<div class="item-price-cnt">';
				  html += '			 										<span class="finally-price">'+ item.itemprice +'</span>';
				  html += '			 										<span class="between-price-cnt">';
				  html += '			 											<span class="between-price-cnt-jjum"></span>';
				  html += '			 										</span>';
				  html += '			 										<span class="finally-cnt">' + item.itemcnt +'</span>';
				  html += '			 									</div>';
				  html += '			 								</div>';
				  html += '			 								<div>';
				  html += '			 									<button class="jangbaguni-damgi">장바구니 담기</button>';
				  html += '			 									<div></div>';
				  html += '			 								</div>';
				  html += '			 							</a>';
				  html += '			 							<div style="display:flex;flex-direction: row;"></div>';
				  html += '			 						</div>';
				  html += '			 					</div> ';
				  html += '			 				</div>';
				  html += '			 			</div>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			 <td class="deliver-right-buttons-box">';
				  html += '			 	<div class="deliver-right-buttons">';
				  html += '					<button class="deliver-right-button blue">배송조회</button>';												 	
				  html += '					<button class="deliver-right-button gray">교환, 반품 신청</button>';												 	
				  html += '					<button class="deliver-right-button gray">리뷰 작성하기</button>';												 	
				  html += '					<button class="deliver-right-button gray">판매자 문의</button>	';											 	
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			</tr>';
				  html += '		</tbody>';
				  html += '	</table>';
				  html += '</div>';
		  	}else if(item.orderdate == date){
		  		  					  		 
				  html += '<div class="deliver-content">';
				  html += '	<table class="deliver-table">';
				  html += '	<colgroup>';
				  html += '		<col width="600">';
				  html += '			<col width>';
				  html += '		</colgroup>';
				  html += '		<tbody>';
				  html += '			<tr>';
				  html += '			 <td class="tabletd">';
				  html += '			 	<div class="tabletddiv">';
				  html += '			 		<div class="tabletddiv2">';
				  html += '			 			<span class="tablespan1">'+ item.orderstatus +'</span>';
				  html += '			 			<span class="tablespan2">';
				  html += '			 				<span class="tablespan3"></span>';
				  html += '			 			</span>';
				  html += '			 			<span class="deliver-date">'+ item.arrivedate +'</span>';
				  html += '			 		</div>';
				  html += '			 		<div class="jjumjjumjjum">';
				  html += '			 			<button class="jjumjjum">';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 				<div class="jjum"></div>';
				  html += '			 			</button>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 	<div class="under-jjumjjum"></div>';
				  html += '			 	<div>';
				  html += '			 		<div style="margin-top: 20px;">';
				  html += '			 			<div style="position: relative;top: -16px;-webkit-box-pack: center;display: none;"></div>';
				  html += '			 			<div class="deliver-item-box">';
				  html += '			 				<div class="deliver-item-box-flex">';
				  html += '			 					<div class="item-img-box">';
				  html += '			 						<a href="#">';
				  html += '			 							<img loading="lazy" width="64" height="64" src="'+ item.thumbnail +'" alt="윈에어 자이로볼 헬스용품, 블랙">';
				  html += '			 						</a>';
				  html += '			 					</div>';
				  html += '			 					<div class="item-name-box">';
				  html += '			 						<div class="item-name-flex">';
				  html += '			 							<a style="display:none; margin-bottom:4px;"></a>';
				  html += '			 							<a class="item-name-atag" href="#" style="text-decoration: none;">';
				  html += '			 								<span class="item-name" >'+ item.itemname+ '</span>';
				  html += '			 							</a>';
				  html += '			 							<a style="display: none;margin-bottom: 4px;cursor: pointer;text-decoration: none;outline: none;-webkit-user-select: none;"></a>';
				  html += '			 							<a class="item-price-basket" style="text-decoration: none;">';
				  html += '			 								<div>';
				  html += '			 									<div class="item-price-cnt">';
				  html += '			 										<span class="finally-price">'+ item.itemprice +'</span>';
				  html += '			 										<span class="between-price-cnt">';
				  html += '			 											<span class="between-price-cnt-jjum"></span>';
				  html += '			 										</span>';
				  html += '			 										<span class="finally-cnt">' + item.itemcnt +'</span>';
				  html += '			 									</div>';
				  html += '			 								</div>';
				  html += '			 								<div>';
				  html += '			 									<button class="jangbaguni-damgi">장바구니 담기</button>';
				  html += '			 									<div></div>';
				  html += '			 								</div>';
				  html += '			 							</a>';
				  html += '			 							<div style="display:flex;flex-direction: row;"></div>';
				  html += '			 						</div>';
				  html += '			 					</div> ';
				  html += '			 				</div>';
				  html += '			 			</div>';
				  html += '			 		</div>';
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			 <td class="deliver-right-buttons-box">';
				  html += '			 	<div class="deliver-right-buttons">';
				  html += '					<button class="deliver-right-button blue">배송조회</button>';												 	
				  html += '					<button class="deliver-right-button gray">교환, 반품 신청</button>';												 	
				  html += '					<button class="deliver-right-button gray">리뷰 작성하기</button>';												 	
				  html += '					<button class="deliver-right-button gray">판매자 문의</button>	';											 	
				  html += '			 	</div>';
				  html += '			 </td>';
				  html += '			</tr>';
				  html += '		</tbody>';
				  html += '	</table>';
				  html += '</div>';
		  		
				  if (index === (data.length-1)){
					  html += '<div style="margin-top: 10px;"></div>';
					  html += '</div>';
				  }
		  	}
		}
		  	
	  	

	  });
	  var buttoncontainer = document.getElementById("after-previous-button-container");
	  buttoncontainer.innerHTML = button;
	  
	  var container = document.getElementById("deliver-item-list-container");
	  container.innerHTML = html;
	}

	// Send a request
	xhttp.open("GET", "ordereditemdata.jsp");
	xhttp.send();
}

function init() {
    for (var i = 0; i < jumunbutton.length; i++) {
    	jumunbutton[i].addEventListener("click", jumunClick);
    }
    for (var i = 0; i < tabbutton.length; i++) {
    	tabbutton[i].addEventListener("click", tabClick);
    }
    
    jumuntotal();
 }