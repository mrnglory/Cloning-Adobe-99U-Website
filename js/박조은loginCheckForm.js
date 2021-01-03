// JavaScript Document
$(function(){
	$('#email').on('keyup', function(){
		if($(this).val().indexOf("@"&&(".com"||".net"))!=-1)
		$('#password').focus();
	});
});
	$(document).on('keydown', function(e){
		if(e.keyCode==13) return false;
	});
	window.onload=function(){
		$('input').on('focus', function(){
			$(this).css('background-color', 'rgb(249,253,214)');
		});
		$('input').on('blur', function(){
			$(this).css('background-color', 'white');
			$(':submit, :reset').css('background-color', 'rgb(232,232,232)');
		});
		document.getElementById('newMemberForm').onsubmit=function(){
			var email=document.getElementById('email');
			var password=document.getElementById('password');
			
			if(email.value.indexOf("@")==-1){
				alert("Email address is not correct.");
				email.value=="";
				email.focus();
				return false;
			}
			
			if(password.value==""){
				alert("Password is not correct.");
				password.focus();
				return false;
			}
			
		};
	};