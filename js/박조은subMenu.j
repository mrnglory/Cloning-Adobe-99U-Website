// JavaScript Document

$(function(){
	//$('#subMenuItem').slideUp(1);
	//$('#subMenuBox').hide();
	var  $subMenuItem= $('#subMenuItem');
	
	$('#subMenuLi').hover(
	function(){
			$('#subMenuBox').css('visibility', 'visible');
			$('#subMenuBox').show();
			$subMenuItem.slideDown(100);
	},
	function(){
			$subMenuItem.slideUp(100);
			$('#subMenuBox').hide();
	});
	
	$('#subMenuItem').hover(
	function(){
		$subMenuItem.stop();
		$('#subMenuBox').show();	  
	},
	function(){
		$subMenuItem.slideUp(1);
		$('#subMenuBox').hide();
	});
});