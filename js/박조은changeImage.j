// JavaScript Document
	$(function(){
		var $front=$('.front');
		$front.each(function(index){
			$(this).hover(
			function(){
				$(this).attr('src', '../img/issue'+(15-index)+'-back_1000x1352.jpg');
			},
			function(){
				$(this).attr('src', '../img/issue'+(15-index)+'-front_1000x1352.jpg');
			});
		});
	});