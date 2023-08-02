$(init)

function init() {
	//테이블 초기화
   cartItem();
	
   //전체선택
   $(".cboxAll").click(checkAll);
   $(".selected-delete").click(deleteItem);
   
}
	
	//전체선택 및 해제 
function checkAll() {
   if($(event.target).is(':checked')) {
      $("input[name=cbox]").prop("checked", true);
      $(".cboxAll").prop("checked", true);
   } else {
      $("input[name=cbox]").prop("checked", false);
      $(".cboxAll").prop("checked", false);
   }
   
   $(document).on("click", "input:checkbox[name=cbox]", function(e) {
      
      var chks = document.getElementsByName("cbox");
      var chksChecked = 0;
      
      for(var i=0; i<chks.length; i++) {
         var cbox = chks[i];
         
         if(cbox.checked) {
            chksChecked++;
         }
      }
      
      if(chks.length == chksChecked){
         $(".cboxAll").prop("checked", true);
      }else{
         $(".cboxAll").prop("checked",false);
      }
      
   });

}

//총 금액 계산  
function deleteItem(){
	   if($("input:checkbox[name=cbox]:checked").length === 0){
		alert("삭제할 항목을 선택해 주세요.");
	}
};



//주문하기
function cartItem(){
	$.ajax({
		url: "itemdata.jsp",
		method:"get",
		success: function(data) {
			  let html ="";
			  let totalPrice="";
			  
			  html+= 	'<colgroup>';
		      html+=    '<col width = "50" />';
		      html+=    '<col width = "80" />';
		      html+=    '<col width = "*" />';
		      html+=	'<col width = "90" />';
		      html+=	'<col width = "90" />';
		      html+= 	'</colgroup>';
		      html+=	'<thead>'     ;
		      html+=  '<tr class="head">';
		      html+= '<th scope="col" class="all-select-event">';
		      html+= '<label>';
		      html+= '<input type= "checkbox" class="cboxAll">';
		      html+= '<span>&nbsp;&nbsp;전체선택</span>';
		      html+= '</label>';
		      html+= '</th>';
		      html+= '<th scope="colgroup" id="th-product-box" colspan="2">상품정보</th>';
		      html+= '<th scope="col" id="th-unit-total-price">상품금액</th>';
		      html+= '<th scope="col" id="th-delivery-fee">배송비</th>';
		      html+='</tr>';
		      html+='</thead>';
			}
			  });
			
		data.forEach((item, index) => {
			  
			 
		});
		
		 $(".cartTable").html(html);
	
	}







	 