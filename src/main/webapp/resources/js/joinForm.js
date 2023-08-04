$(init)
window.onload = eventInit; //window.onload로 eventInit을 제일 나중에 실행해준다(index가 생성되고 갯수를 셀수있게)

function init() {
   
   //전체선택
   $("#chk_checkall").click(checkAll);
}

function eventInit() {
}
   
   //전체선택 및 해제 
function checkAll() {
   if($(event.target).is(':checked')) { //boolean 타입을 반환
      $("input[name=cbox]").prop("checked", true); //true면 체크
      $("#chk_checkall").prop("checked", true);
   } else {
      $("input[name=cbox]").prop("checked", false); //false 면 체크 해제
      $("#chk_checkall").prop("checked", false);
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
         $("#chk_checkall").prop("checked", true);
      }else{
         $("#chk_checkall").prop("checked",false);
      }
   });
}





