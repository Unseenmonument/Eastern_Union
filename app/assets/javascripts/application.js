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

	$('#hide_send_amount').hide();
	$('#hide_conv_amount').hide();
	$('#hide_final_amount').hide();

//  This hides the options for inputting paternal names
	$('#paternal_name').hide();
	$('#paternal_uncheck').hide();

// For inputting test question
	$('#question_uncheck').hide();
	$('#test_q').hide();


	$('.send_option').hide();

	$('.country_input').hide();

// hides the various payment tiers for sending money
	$('.mim_tier1').hide();
	$('.mim_tier2').hide();	
	$('.mim_tier3').hide();
	$('.mim_tier4').hide();

	$('.nextday_tier1').hide();
	$('.nextday_tier2').hide();
	$('.nextday_tier3').hide();
	$('.nextday_tier4').hide();
// Ends this section	
	
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
	$(".conversion_amount").val("0.00");
	$(".final_amount").val("0.00")

// the code below assigns the selected cost of sending money to the final amount.
	$("input[name='fee_select']").click(function() {
		var country = $('#send_country option:selected').text();

		var send_amount = $('.send_amount[name="' + country + '"]').val();
//		Make sure this is necessary
		$('#send_amount_final').val(send_amount).toString;
		var send_amount = parseFloat(send_amount);

		var cost = $('input[name="fee_select"]:checked').val();
		var cost = parseFloat(cost);

		var fin = send_amount + cost;
		var fin = parseFloat(fin);
		var fin = fin.toFixed(2);

		 $('.final_amount[name="' + country + '"]').val(fin);
		 $('#final_amount_final').val(fin);
	});

// This code works, it changes the form to the current country
	$('.send_amount').focus(function() {

		var country = $('#send_country option:selected').text();
		$('#country_input_default').hide();
		$('.country_input').hide();
		$('.country_input[value="' + country + '"]').show();

//		if ( $('#send_country option:selected').text("") ) {
//			$('#country_input_default').show();
//		} else {

//		};
	});
	

// This code changes which "send options" are displayed onces you've entered in the amount
	$(".send_amount").change(function() {
		
		var country = $('#send_country option:selected').text();
		var fin = $('.final_amount[name="' + country + '"]').val();
		var send = $('.send_amount[name="' + country + '"]').val();
		var send = parseFloat(send);
		$('#send_amount_final').val(send).toString;

		var exchange = $('.exchange_rate[name="' + country + '"]').text();
		var exchange = parseFloat(exchange);

		var con = send * exchange;
		var con = parseFloat(con);
		var con = con.toFixed(2);
		var con1 = con.toString;

		//Put the conversion amount in the correct field
		$('.conversion_amount[name="' + country + '"]').val(con);
		$('#conversion_amount_final').val(con).toString;

		var con_amount = con;
		var con_amount = parseFloat(con_amount);

		var m_tier1 = $('.mim_tier1[name="' + country + '"]').attr("value");
		var m_tier1 = parseFloat(m_tier1);

		var m_tier2 = $('.mim_tier2[name="' + country + '"]').attr("value");
		var m_tier2 = parseFloat(m_tier2);

		var m_tier3 = $('.mim_tier3[name="' + country + '"]').attr("value");
		var m_tier3 = parseFloat(m_tier3);

		var m_tier4 = $('.mim_tier4[name="' + country + '"]').attr("value");
		var m_tier4 = parseFloat(m_tier4);

		var base = 0;

		$('.send_option').show(function() {
			$('input[name=fee_select]:first', '.send_option[name="' + country + '"]').attr('checked', true);
		});

		if (send == base) {

			$('.final_amount[name="' + country + '"]').val("0.00");

		} else if (send > base && send < m_tier1) {

			var send_option = $('.mim_tier1_amnt[name="' + country + '"]').text();
			var send_option = parseFloat(send_option);

			var fin = con_amount + send_option;
			var fin = parseFloat(fin);
			var fin = fin.toFixed(2);
//			var fin1 = fin.toString;
			$('.final_amount[name="' + country + '"]').val(fin).toString;
			$('#final_amount_final').val(fin).toString;

			$('.mim_tier1[name="' + country + '"]').show();
			$('.nextday_tier1[name="' + country + '"]').show();
		} else if (send > m_tier1 && send < m_tier2) {
						
			var send_option = $('.mim_tier2_amnt[name="' + country + '"]').text();
			var send_option = parseFloat(send_option);

			var fin = con_amount + send_option;
			var fin = parseFloat(fin);
			var fin = fin.toFixed(2);
//			var fin1 = fin.toString;
			$('.final_amount[name="' + country + '"]').val(fin).toString;
			$('#final_amount_final').val(fin).toString;

			$('.mim_tier2[name="' + country + '"]').show();
			$('.nextday_tier2[name="' + country + '"]').show();
		} else if (send > m_tier2 && send < m_tier3) {
						
			var send_option = $('.mim_tier3_amnt[name="' + country + '"]').text();
			var send_option = parseFloat(send_option);

			var fin = con_amount + send_option;
			var fin = parseFloat(fin);
			var fin = fin.toFixed(2);
//			var fin1 = fin.toString;
			$('.final_amount[name="' + country + '"]').val(fin).toString;
			$('#final_amount_final').val(fin).toString;

			$('.mim_tier3[name="' + country + '"]').show();
			$('.nextday_tier3[name="' + country + '"]').show();
		} else if (send > m_tier3 && send < m_tier4) {
						
			var send_option = $('.mim_tier4_amnt[name="' + country + '"]').text();
			var send_option = parseFloat(send_option);

			var fin = con_amount + send_option;
			var fin = parseFloat(fin);
			var fin = fin.toFixed(2);
//			var fin1 = fin.toString;
			$('.final_amount[name="' + country + '"]').val(fin).toString;
			$('#final_amount_final').val(fin.toString);

			$('.mim_tier4[name="' + country + '"]').show();
			$('.nextday_tier4[name="' + country + '"]').show();
		} else if (send > m_tier4) {
			alert('The amount you entered is too high, please enter a lesser value.');
			$('.final_amount[name="' + country + '"]').val("0.00");
			$('.conversion_amount[name="' + country + '"]').val("0.00");

		} 
	});

// The code below only desplays the form of the id select
	$('.id_type[value="2"]').hide();
	$('.id_type[value="3"]').hide();
	$(".id_select").change(function() {

		var type =  $('.id_select option:selected').val();

		$('.id_type[value="1"]').hide();
		$('.id_type[value="2"]').hide();
		$('.id_type[value="3"]').hide();

		$('.id_type[value="' + type + '"] ').show();
	});

});