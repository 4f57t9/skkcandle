$(init)
window.onload = eventInit; //window.onload로 eventInit을 제일 나중에 실행해준다(index가 생성되고 갯수를 셀수있게)

function init() {
   //테이블 초기화
   cartItem();
   
   //전체선택
   $(".cboxAll").click(checkAll);
   //전체선택 버튼 클릭시 항목별 체크박스
   $(".cboxAll").click(initItemSelectCount);
   //삭제버튼 클릭시
   $(".selected-delete").click(deleteItem);

}

function eventInit() {
	//장바구니 담긴 전체 상품 갯수
	initItemCount();
	//개별 상품 갯수
	initItemSelectCount();
	//삭제버튼 눌렀을시 개별 상품 갯수
	$(".dealSelectChk").click(initItemSelectCount);
}
   
   //전체선택 및 해제 
function checkAll() {
   if($(event.target).is(':checked')) { //boolean 타입을 반환
      $("input[name=cbox]").prop("checked", true); //true면 체크
      $(".cboxAll").prop("checked", true);
   } else {
      $("input[name=cbox]").prop("checked", false); //false 면 체크 해제
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
      
      console.log ("chks: " + chks)
      console.log ("chksChecked: " + chksChecked)
      
      if(chks.length == chksChecked){
         $(".cboxAll").prop("checked", true);
      }else{
         $(".cboxAll").prop("checked",false);
      }
   });
}


//총 상품 개수 가져오기
function initItemCount() {
	var itemCount = $(".cart-deal-item").length;
	$(".all-num").text(itemCount);
	
   return itemCount;
}

//선택된 상품 개수 가져오기
function initItemSelectCount() {
	var itemSelectCount = $('input:checkbox[name="cbox"]:checked').length;
	$(".selected-num").text(itemSelectCount);
	
	return itemSelectCount;
}


