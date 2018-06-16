// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require turbolinks
//= require_tree .

$( document ).ready(function() {

//  This hides the options for inputting paternal names
	$('#paternal_name').hide();
	$('#paternal_uncheck').hide();

// For inputting test question
	$('#question_uncheck').hide();
	$('#test_q').hide();


	$('.send_option').hide();

	$('.country_input').hide();


	
	$('#reciever_name_alt').hide();
	$('#reciever_name_uncheck').hide();

	$('#paternal_check').click(function(){
		$('#paternal_check').hide();
		$('#last_name').hide();
		$('#paternal_name').show();
		$('#paternal_uncheck').show();
	});

	$('#paternal_uncheck').click(function(){
		$('#paternal_uncheck').hide();
		$('#last_name').show();
		$('#paternal_name').hide();
		$('#paternal_check').show();
	});

	$('#question_check').click(function(){
		$('#test_q').show();
		$('#question_uncheck').show();
		$('#question_check').hide();

	});

	$('#question_uncheck').click(function(){
		$('#test_q').hide();
		$('#question_check').show();
		$('#question_uncheck').hide();
	});

	$('#reciever_name_check').click(function(){
		$('#reciever_name_check').hide();
		$('#reciever_name_alt').show();
		$('#reciever_name_reg').hide();
		$('#reciever_name_uncheck').show();
	});

	$('#reciever_name_uncheck').click(function(){
		$('#reciever_name_uncheck').hide();
		$('#reciever_name_reg').show();
		$('#reciever_name_alt').hide();
		$('#reciever_name_check').show();
	});

	$(".send_amount").val("0.00");
	$(".conversion_amount").val(" 0.00");
	$(".final_amount").val("0.00")


// This code below adds the aount you're sending and calculates the conversion amount as well as the final amount
	$('.conversion_amount').mousedown(function(e) {
		var country = $('#send_country option:selected').text();
		var send = $('.send_amount[name="' + country + '"]').val();
		var send = parseFloat(send);

		var exchange = $('.exchange_rate[name="' + country + '"]').text();
		var exchange = parseFloat(exchange);

		var con = send * exchange;
		var con = parseFloat(con);
		var con = con.toFixed(2);

		$('.conversion_amount[name="' + country + '"]').val(con);

		var con_amount = con;
		var con_amount = parseFloat(con_amount);
		var send_option = $('.mim_amnt[name="' + country + '"]').text();

		var send_option = parseFloat(send_option);

//		alert("send fee is: " + send_option );

		var fin = con_amount + send_option;
		var fin = parseFloat(fin);
		var fin = fin.toFixed(2);
		$('.final_amount[name="' + country + '"]').val(fin);
		$('.send_option').show();
	});


// the code below works, just not as intended, just testing things.
	$('.next_day').click(function() {
		var fin = $('.final_amount').val();
		var fin = parseFloat(fin);

		var send_option = $('input[name=mim]:checked', '.send_option[name="' + country + '"]').val();
		var send_option = parseFloat(send_option);

		var change = fin + send_option;
		var change = parseFloat(change);
		
		 $('.final_amount').val(change);
	});


	$('.mim').click(function() {
		var fin = $('.final_amount').val();
		var fin = parseFloat(fin);

		var send_option = $('input[name=option]:checked', '.send_option').val();
		var send_option = parseFloat(send_option);

		var prior_option = $('.next_day').text();
		var prior_option = parseFloat(prior_option);

		var change1 = fin - prior_option;
		$('.final_amount').val(change1);

		var change2 = fin + send_option;
		var change2 = parseFloat(change2);
		
		$('.final_amount').val(change2);
	});

	$('.send_amount').click(function() {
		var country = $('#send_country').val("Canada");
//		alert("The country you're sending to is: " + country );
	});

	$('.send_amount').focus(function() {
		var country = $('#send_country option:selected').text();

//		alert("The country you're sending to is: " + country );

		$('#country_input_default').hide();
		$('.country_input').hide();
		$('.country_input[value="' + country + '"]').show();

//		if ( $('.country_input').show() !== $('.country_input[value="' + country + '"]').show() ) {
//			$('.country_input[value="' + country + '"]').show();
//		};

	});


	$(".send_amount").keydown(function(event) {
    var keycode = event.keyCode || event.which;
	    if(keycode == '9') {
	    	
	        alert('You pressed the "tab" key in somewhere');    
	    }
	});
	
	
});