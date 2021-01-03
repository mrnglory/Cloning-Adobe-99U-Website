// JavaScript Document// JavaScript Document
	$(document).on('keydown', function(e){
		if(e.keyCode==13) return false;
	});
	
	$(function(){
		$('#lastName').on('keydown', function(e){
			if($('#lastName').val()!=""&&e.keyCode==13)
			$('#email').focus();
		});
		$('#email').on('keyup', function(){
			if($(this).val().indexOf("@"&&(".com"||".net"))!=-1)
			$('#title').focus();
		});
		$('#title').on('keydown', function(e){
			if($('#title').val()!=""&&e.keyCode==13)
			$('#message').focus();
		});
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
			var title=document.getElementById('title');
			var message=document.getElementById('message');
			
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
			if(title.value==""){
				alert("Title is not correct.");
				title.focus();
				return false;
			}
			if(message.value==""){
				alert("Message is not correct.");
				message.focus();
				return false;
			}
		};
	};