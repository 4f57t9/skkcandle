$(function() {
	const chkCheckAll = document.getElementById("chk_checkall");
	const chkOtherTerms = document.querySelectorAll(".join_terms_frame input[name='cbox']");

	chkCheckAll.addEventListener("change", function () {
	    const isChecked = this.checked;
	    for (const checkbox of chkOtherTerms) {
	        checkbox.checked = isChecked;
	    }
	});

});



