// JavaScript Document
$(function(){
	
	$('#firstName').on('keydown', function(e){
		if($('#firstName').val()!=""&&e.keyCode==13)
		$('#lastName').focus();
	});
	$('#lastName').on('keydown', function(e){
		if($('#lastName').val()!=""&&e.keyCode==13)
		$('#phone1').focus();
	});
	$('#password').on('keydown', function(e){
		if($('#password').val()!=""&&e.keyCode==13)
		$('#passwordConfirm').focus();
	});
	
	
	$('#phone1').on('keyup', function(){
		if($(this).val().length==3)
		$('#phone2').focus();
	});
	$('#phone2').on('keyup', function(){
		if($(this).val().length==4)
		$('#phone3').focus();
	});
	$('#phone3').on('keyup', function(){
		if($(this).val().length==4)
		$('#email').focus();
	});
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
			var firstName=document.getElementById('firstName');
			var lastName=document.getElementById('lastName');
			var email=document.getElementById('email');
			var password=document.getElementById('password');
			var passwordConfirm=document.getElementById('passwordConfirm');
			
			if(firstName.value==""){
				alert("First name is not correct.");
				firstName.focus();
				return false;
			}
			
			if(lastName.value==""){
				alert("Last name is not correct.");
				lastName.focus();
				return false;
			}
			
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
			if(password.value!=passwordConfirm.value){
				alert("Check your password again.");
				passwordConfirm.value="";
				passwordConfirm.focus();
				return false;
			}
			if(!$('input[type="checkbox"]').is(':checked')){
				alert("Checkbox should be checked if you want to join us.");
				return false;
			}
			
		};
	};S