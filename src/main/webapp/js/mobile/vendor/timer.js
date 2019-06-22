(function($){

	var days	= 24*60*60,
		hours	= 60*60,
		minutes	= 60;
	/**
    * To get different language for timer
    * @author Anand SA
    */
	if( typeof is_rtl !=  'undefined' ){ 	// Arabic
        var hrs			= ' ساعة ';
        var min			= ' دقيقة ';
        var sec			= ' ث ';
        var day_var		= ' يوم ';
        var days_var	= ' ايام ';
    }
    else{ 								 	// English
        var hrs			= ' hrs. ';
        var min			= ' min. ';
        var sec			= ' sec.';
        var day_var		= ' day. ';
        var days_var	= ' days. ';
    }

	$.fn.countdown = function(prop){		
		var options = $.extend({
			timestamp	: 0,
			callback	: function(days, hours, minutes, seconds){
				var message = "";

				if( options.desc != true ){
					if( options.days == true ){
						message += days + ( days==1 ? day_var : days_var ) ;
					}
					if( typeof options.hours == 'undefined' || options.hours != false )
						message += addPad( hours,2 ) + hrs;
					else
						message += "00 " + hrs;
					message += addPad( minutes,2 ) + min;
					message += addPad( seconds,2 ) + sec;
				}
				else{
					if( options.days == true )
						message += "<span>"+addPad( days,2 )+"</span>";
					if( typeof options.hours == 'undefined' || options.hours != false )
						message += "<span>"+addPad( hours,2 )+"</span>";
					else
						message += "<span>00</span>";
					message += "<span>"+addPad( minutes,2 )+"</span>";
					message += "<span>"+addPad( seconds,2 )+"</span>";
				}				

				/**
			    * To get arabic number
			    * Helper function is in global script
			    */
				if( typeof is_rtl !=  'undefined' )
					message = message.toArabicDigits();
				
				container.html( message );
			},
			desc		: true,
			days		: false
		},prop);
		
		var left, d, h, m, s, positions;
		var container = this;
		
		(function tick(){
			left = Math.floor((options.timestamp - (new Date())) / 1000);
			if(left < 0){
				left = 0;
				/*if( typeof options.timerout() != 'undefined' )
					options.timerout();*/
			}
			d = Math.floor(left / days);
			left -= d*days;
			h = Math.floor(left / hours);
			left -= h*hours;
			m = Math.floor(left / minutes);
			left -= m*minutes;
			s = left;

			options.callback(d, h, m, s);
			setTimeout(tick, 1000);
		})();
		
		function addPad(number, digits){
			return Array(Math.max(digits - String(number).length + 1, 0)).join(0) + number;	
		}
		
		return this;
	};
})(jQuery);