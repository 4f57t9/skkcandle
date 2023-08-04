$(init)

function init() {
	var color = {
	        brown: "color:#560000;font-size:11px;",
	        red: "color:#d83128;font-size:11px;",
	        yellow: "color:#ea991b;font-size:11px;",
	        green: "color:#93ba2f;font-size:11px;",
	        blue: "color:#4da4e0;font-size:11px;"
	    };
	
	console.log(
            "%c   ____                                    \
            \n%c  / ___|___  _   _ %c_ __   %c__ _ %c_ __   %c__ _ \
            \n%c | |   / _ \\| | | %c| '_ \\ %c/ _` %c| '_ \\ %c/ _` | \
            \n%c | |__| (_) | |_| %c| |_) %c| (_| %c| | | | %c(_| | \
            \n%c  \\____\\___/ \\__,_%c| .__/ %c\\__,_%c|_| |_|%c\\__, | \
            \n%c                  %c|_|                %c|___/ \
            \n      %cLife is too short, you need cou%cp%ca%cn%cg.\n", 
            color.brown, 
            color.brown, color.red, color.yellow, color.green, color.blue, 
            color.brown, color.red, color.yellow, color.green, color.blue, 
            color.brown, color.red, color.yellow, color.green, color.blue, 
            color.brown, color.red, color.yellow, color.green, color.blue, 
            color.brown, color.red, color.blue, 
            color.brown, color.red, color.yellow, color.green, color.blue
        );
	
	

}

function openCategoryBox() {
	// category 목록 펼침
	$(".category_list_box").css("display", "block");
}

function closeCategoryBox() {
	// category 목록 접음
	$(".category_list_box").css("display", "none");
}

function openBox() {
	// article 목록 펼침
	$(".more_content>p").css("display", "block");
}

function closeBox() {
	// article 목록 접음
	$(".more_content>p").css("display", "none");
}

function openMycoupnagBox() {
	// mycoupnag 목록 펼침
	$(".my-coupang-menu").css("display", "block");
}

function closeMycoupnagBox() {
	// mycoupnag 목록 접음
	$(".my-coupang-menu").css("display", "none");
}

function openCartBox() {
	// mycoupnag 목록 펼침
	$("#mycart-preview").css("display", "block");
}

function closeCartBox() {
	// mycoupnag 목록 접음
	$("#mycart-preview").css("display", "none");
}

function openAutocompleteBox() {
	// 최근 검색 목록 펼침
	$("#autocomplete_box").css("display", "block");
	$(".history-btns").css("display", "block");
}

function closeAutocompleteBox() {
	// 최근 검색 목록 접음
	$("#autocomplete_box").css("display", "none");
	$(".history-btns").css("display", "none");
}

function openCsCenterBox() {
	// "cs_center" 목록 펼침
	$("#cs_center>p").css("display", "block");
}

function closeCsCenterBox() {
	// "cs_center" 목록 접음
	$("#cs_center>p").css("display", "none");
}

//카테고리 현재 상태 (접혀있는지 펼쳐져있는지)
var categoryVisible = false; 

/*$(document).ready(function() {
    // 토글 버튼 클릭 이벤트 처리
    $('.search_category_btn').click(function() {
      $('.select_category_option').slideToggle("fast", "swing");
      
      // 상태 업데이트
      categoryVisible = !categoryVisible;
    });
    
    $('.search_category_current').click(function() {
        $('.select_category_option').slideToggle("fast", "swing");
        categoryVisible = !categoryVisible;
    });
    
    // 다른 곳을 클릭했을 때 카테고리 목록 접힘 처리
    $(document).click(function(event) {
      var target = $(event.target);
      
      // 클릭된 요소가 토글 버튼이거나 카테고리 목록 내부 요소인 경우는 처리하지 않음
      if (target.is('.search_category_btn') || target.closest('.select_category_option').length) {
    	  return;
      }

      if (target.is('.search_category_current') || target.closest('.select_category_option').length) {
    	  return;
      }
      
      // 펼쳐져 있는 상태일 때만 접힘
      if (categoryVisible) {
        $('.select_category_option').slideToggle("fast", "swing");
        categoryVisible = false;
      }
    });
  });*/

// 검색창 카테고리 목록 열고 닫기 
$(function() {
    // 토글 버튼 클릭 이벤트 처리
    $('.search_category_btn').click(function() {
      $('.select_category_option').slideToggle("fast", "swing");
      
      // 상태 업데이트
      categoryVisible = !categoryVisible;
    });
    
    $('.search_category_current').click(function() {
        $('.select_category_option').slideToggle("fast", "swing");
        categoryVisible = !categoryVisible;
    });
    
    // 다른 곳을 클릭했을 때 카테고리 목록 접힘 처리
    $(document).click(function(event) {
      var target = $(event.target);
      
      // 클릭된 요소가 토글 버튼이거나 카테고리 목록 내부 요소인 경우는 처리하지 않음
      if (target.is('.search_category_btn') || target.closest('.select_category_option').length) {
    	  return;
      }

      if (target.is('.search_category_current') || target.closest('.select_category_option').length) {
    	  return;
      }
      
      // 펼쳐져 있는 상태일 때만 접힘
      if (categoryVisible) {
        $('.select_category_option').slideToggle("fast", "swing");
        categoryVisible = false;
      }
    });
  });

/*$(document).ready(function() {
	  $('.select_category_option a').click(function(e) {
		// 기본 클릭 이벤트 제거
		e.preventDefault(); 
	    
		// 선택한 텍스트로 변경
	    var clickedText = $(this).text();
	    $('.search_category .search_category_current').text(clickedText);
	   
	    // 펼쳐져 있는 상태일 때만 접힘
	    if (categoryVisible) {
	        $('.select_category_option').slideToggle("fast", "swing");
	        categoryVisible = false;
	      }
	  });
	});*/

// 카테고리 클릭시 text 변경
$(function() {
	  $('.select_category_option a').click(function(e) {
		// 기본 클릭 이벤트 제거
		e.preventDefault(); 
	    
		// 선택한 텍스트로 변경
	    var clickedText = $(this).text();
	    $('.search_category .search_category_current').text(clickedText);
	   
	    // 펼쳐져 있는 상태일 때만 접힘
	    if (categoryVisible) {
	        $('.select_category_option').slideToggle("fast", "swing");
	        categoryVisible = false;
	      }
	  });
	});

// 네비게이션 바 슬라이드
$(function() {
	// > 클릭시 이미지 변경
	$(".gnb_menu_btn_right").click(function() {
		$(".gnb_menu_btn_right").css("background-image", 'url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right-gray@2x.png")');
		$(".gnb_menu_btn_left").css("background-image", 'url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left@2x.png")');
		$("#gnb_menu_container>ul").css("left", "-92px");
	});
	
	// < 클릭시 이미지 변경
	$(".gnb_menu_btn_left").click(function() {
		$(".gnb_menu_btn_left").css("background-image", 'url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-left-gray@2x.png")');
		$(".gnb_menu_btn_right").css("background-image", 'url("//img1a.coupangcdn.com/image/coupang/common/pc_gnb_arrow-right@2x.png")');
		$("#gnb_menu_container>ul").css("left", "22px");
	});
});
