// JavaScript Document

$(function(){
	$('.totop').on('click', function(){
		$('html, body').animate({scrollTop:0}, 500);
	});
	
	/*.author 위치*/
	
	/*var $authorPad=$('.authorPad');
	$authorPad.each(function (index) {
		var authorPadHeight=$authorPad.eq(index).height();
		//$(this).css('padding-bottom', 1);
		$('.author').css('top', authorPadHeight*0.15);
	});
	
		*/
	var $authorPad=$('.authorPad');
	var $author=$('.author');
	$authorPad.each(function (index) {
		var authorPadHeight=$authorPad.eq(index).height();			
		$author.eq(index).css('top', authorPadHeight-50);		
	});

		
	/*로고를 제외한 모든 img에 hover했을 때*/
	var $img=$('img');
	
	$('img').each(function(index){
		var newIndex=index;
		$(this).hover(
		function(){
			if(index>0){
				$img.eq(newIndex).fadeTo(300, 0.6);
			}
		},
		function(){
			if(index>0){
				$img.eq(newIndex).fadeTo(300, 1);
			}
		});
	});
		var $li=$('#ordered li');
		
		$('#ordered li').each(function(index){
			var newIndex=index;
			$(this).hover(
			function(){
				if(index>0){
					$li.eq(newIndex).css('background', 'black');
				}
			},
			function(){
				if(index>0){
					$li.eq(newIndex).css('background', 'white');
				}
			});
		});
		
		
		
		var $li=$('.clip-3 li');
		
		$('.clip-3 li').each(function(index){
			var newIndex=index;
			$(this).hover(
			function(){
				if(index>=0){
					$li.eq(newIndex).fadeTo(400, 0.6).css('background', 'black');
				}
			},
			function(){
				if(index>=0){
					$li.eq(newIndex).fadeTo(400, 1).css('background', '#7b68ee');
				}
			});
		});
		
		$('.join').hover(
			function(){
				$(this).fadeTo(400, 0.6).css('background', '#7b68ee');
			},
			function(){
				$(this).fadeTo(400, 1).css('background', 'white');
			});
			
});