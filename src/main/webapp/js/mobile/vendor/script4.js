$(document).ready(function(){
    /*
	$('.login_submit').on('click', function(){
		$('#sop_form_login').submit();
	});
    */
	$('.register_form_submit').on('click', function(){
        $(this).addClass('req_processing').attr({'disabled':'disabled'});
        $.ajax({
            type    : 'POST',
            dataType: 'json',
            url     : authorize_register_link,
            data    : {
                        'name'      : $('#register_input_name').val(),
                        'email'   	: $('#register_input_email').val(),
                        'country'   : $('#register_input_country').val(),
                        'gender'    : $('input:radio[name=gender]:checked').val(),
                        'phone'	    : $('#register_input_phone').val(),
                        'AJAX'		: 'Y',
                        'AUTHORIZE' : 'Y'
                      },
            beforeSend: function() {
                $('.input_error').removeClass('input_error');
                $('.error-message').remove();
            }
            }).done(function(data){
                $('.register_form_submit').removeClass('req_processing').removeAttr('disabled'); 
                if( data.status == "error" ){
                    $.each(data.list, function( key, value){
                        $('#register_input_'+key ).before('<span class="error-message">'+value+'</span>');
                        $('#register_input_'+key ).addClass('input_error');
                    });
                }
                else{
                    location.reload(true);
                }               
        });
		return false;
	});	
});