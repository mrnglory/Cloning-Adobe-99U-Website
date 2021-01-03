// JavaScript Document

$(function(){
	/*clip-1*/
	var movedIndex;
	
	$('.slideImage2').css('width', '510px');
	
	function moveSlide(index){
		movedIndex=index;
		
		var moveLeft=-(index*1600);
		$('.slidePanel1').animate({'left':moveLeft}, 'slow');
	}
	
	var randomNumber=Math.floor(Math.random()*1);
	moveSlide(randomNumber);
	
	setInterval(function(){
		if(movedIndex!=4)
		movedIndex=movedIndex+1;
		else
		movedIndex=0;
		
		moveSlide(movedIndex);
	}, 5000);
	
	
	/*clip-5*/	
	function moveSlide2(index){
		movedIndex2=index;
		
		var moveLeft2=-(index*510);
		$('.slidePanel2').animate({'left':moveLeft2}, 'slow');
	}
	
	var randomNumber2=Math.floor(Math.random()*1);
	moveSlide2(randomNumber2);
	
	setInterval(function(){
		if(movedIndex2!=2)
		movedIndex2=movedIndex2+1;
		else
		movedIndex2=0;
		
		moveSlide2(movedIndex2);
	}, 4000);
});
