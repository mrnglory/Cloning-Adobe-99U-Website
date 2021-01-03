// JavaScript Document
	$(function(){
		$('.totop').hover(
		function(){
			$(this).delay(10000)
				   .queue(function(){
					   $(this).css({transform:'rotate(45deg)'});
				   });
		},
		function(){
			$(this).css({transform:'rotate(0deg)'});
		});
	});