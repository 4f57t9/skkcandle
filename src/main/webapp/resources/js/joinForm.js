$(function() {
	// 체크박스 한번에 체크
    $('#chk_checkall').on('change', function() {
    	$('.join_terms_other input[type="checkbox"]').prop('checked', $(this).prop('checked'));
    });
    
    // 하나라도 풀리면 해제
    $('.join_terms_other input[type="checkbox"]').on('change', function() {
        let checkboxes = $('.join_terms_other input[type="checkbox"]');
        
        if (checkboxes.length === checkboxes.filter(':checked').length) {
            $('#chk_checkall').prop('checked', true);
        } else {
            $('#chk_checkall').prop('checked', false);
        }
    });

});




