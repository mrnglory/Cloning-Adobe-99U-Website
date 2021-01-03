// JavaScript Document
	$(function(){
		$('.quantity').css('width', '70px')
					  .css('height', '40px')
					  .css('font-size', '1.2em')
					  .css('text-align', 'center');
					  
		$('.total').css('width', '60px')
				   .css('height', '40px')
				   .css('text-align', 'center')
				   .css('border', 'none')
				   .css('font-size', '1.2em');
					  
		var $numControl=$('td div');
		$('td div').each(function(index){
			var newIndex=index;
			$(this).hover(
			function(){
				if(index>=0){
					$numControl.eq(newIndex).fadeTo(150, 0.6)
									  		.css('cursor', 'pointer');
				}
			},
			function(){
				if(index>=0){
					$numControl.eq(newIndex).fadeTo(150, 1);
				}
			});
		});

		  var price=10;
		  var total =10;
		  var n=0;
		  
		  showTotal(); //시작 시 Price 출력
		  
		  $('.plus').click(function(){
				n++;	
				showTotal()	;	
			});
			
			$('.minus').click(function(){
				n--;	
				if(n < 0 ) n = 0; //0이하 내려가지 않도록
				showTotal()	;	
			});
	
		  function showTotal(){
			  total = price * n;
			  $('.quantity').val(n); //Quantity에 출력
			  $('.total').text("$ "+$.number(total)); //Price에 출력
		 }
	  
		
	});