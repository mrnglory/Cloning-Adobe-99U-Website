// JavaScript Document
	$(function(){
		var $a=$('#ordered a');
		
		$('#ordered a').each(function(index){
			var newIndex=index;
			$(this).hover(
			function(){
				if(index>0){
					$a.eq(newIndex).css('color', 'white')
					.css('background', 'black')
					.css('display', 'block')
					.fadeTo(300, 0.6);
				}
			},
			function(){
				if(index>0){
					$a.eq(newIndex).css('color', 'black')
					.css('background', 'white')
					.css('display', 'block')
					.fadeTo(600, 1);
				}
			});
		});
		
		var $zoom=$('.zoom');
		
		$zoom.each(function(index){
			$(this).hover(
			function(){
				$(this).animate({width:'+=30px'}, 200, 'swing');
			},
			function(){
				$(this).animate({width:'-=30px'}, 200, 'swing');
			});
		});
		
	});