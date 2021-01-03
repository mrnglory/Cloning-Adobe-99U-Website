// JavaScript Document
$(window).scroll(function(){
	var height=$(document).scrollTop();
	if(height>600){
		$('nav').addClass('fixinner');
	}else if(height<600){
		$('nav').removeClass('fixinner');
	}
});