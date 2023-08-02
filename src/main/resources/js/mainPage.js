// 2초마다 광고 이미지 변경
$(function() {
	// 이미지 인덱스, 타이머, hover상태 표시
    let currentIndex = 0;
    let timer = 0;
    let isHovered = false;
    
    function showSlide(index) {	
    	let images = $('.main_bg_img');
    	let selectors = $('.selector_thumb_nail');
      
	    // 이미지 전부 숨김(초기화)
	    images.removeClass('d-block').addClass('d-none');
	    selectors.removeClass('selected');
	      
	    // 현재 이미지 출력 및 선택
	    images.eq(index).removeClass('d-none').addClass('d-block');
	    selectors.eq(index).addClass('selected');
    }
    
    function startSlider() {
    	// 타이머 설정
    	timer = setInterval(function() {
    	// hover상태 확인
        if (!isHovered) {
        	// 이미지 총 개수를 초과하는 것을 방지
	        currentIndex = (currentIndex + 1) % $('.main_bg_img').length;
	        // 선택한 인덱스 이미지 출력
	        showSlide(currentIndex);
        }
      // 2초
      }, 2000);
    }

    function stopSlider() {
    	// 타이머 초기화
    	clearInterval(timer);
    }

    function restartSlider() {
    	// 초기화 후 재시작
    	stopSlider();
    	startSlider();
    }
    
    startSlider();

    // hovered클래스를 추가하여 hover기능 구현
    // $(selector).hover(inFunction,outFunction)
    $('.frame').hover(
      function() {
        $(this).addClass('hovered');
        isHovered = true;
        stopSlider();
      },
      function() {
        $(this).removeClass('hovered');
        isHovered = false;
        restartSlider();
      }
    );
    
    $('.selector_thumb_nail').hover(
      function() {
        stopSlider();
        // 당시 슬라이드 인덱스 저장
        currentIndex = $(this).index();
        showSlide(currentIndex);
      },
      function() {
    	  // hovered가 없으면 슬라이드 재시작
	      if (!$('.frame').hasClass('hovered')) {
	    	  restartSlider();
	      }
      }
    );
  });