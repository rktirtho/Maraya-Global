jQuery(document).ready(function($){
	var SearchPage 	 	 = '/search/';
	$('#search_box_hide').on('click',function(){
		$('#awok_instant_search').val('');
		$(".new_cat_results li,.instant_search_results").hide();
		$('#search_suggestions,.model_suggestions,.model_head').empty();
	});

	/* Algolia search Starts*/
	$("#awok_instant_search").on('input',function(e){
		// forward to search function
		var value = $(this).val();
		if (!value.replace(/\s/g, '').length) {
			// string only contained whitespace (ie. spaces, tabs or line breaks)
			return;
		}
		if( value ){
			value = escape_hash( value );
			helper.on( "result", categorySuggestHtml );
			helper.setQuery( value ).search();
			expertApi( 10 , value , wordSuggestHtml , 10 , 2 );
		}
		else{
			$('#instant_search_results').hide();
		}
	});
	/* Algolia search Ends*/

  // escape function
  function escape_hash(s) {
      var div = document.createElement('div');
      div.innerHTML = s;
      var scripts = div.getElementsByTagName('script');
      var i = scripts.length;
      while (i--) {
          scripts[i].parentNode.removeChild(scripts[i]);
      }
      return div.innerHTML;
  }

	var wordSuggestHtml=function( data ){
		var suggestObject = data.suggestion;
		var modelSuggestObject = data.in_suggestion[1].brand;
		var input_query   = $('#awok_instant_search').val();

		if( jQuery.isEmptyObject( suggestObject ) ){
			$('.search_suggestions,.model_suggestions,.model_head').hide();
			return;
		}
		else{
			$('#instant_search_results,.search_suggestions,.model_suggestions,.model_head').show();
		}

		$('#search_suggestions,.model_suggestions').empty();

		for (var k in suggestObject ) {
			var suggestion 	= suggestObject[k].suggestion;
			input_query = input_query.trim();
			suggestion_html = suggestion.replace(input_query.toLowerCase(), '<span class="search_term">'+input_query+'</span>');
			var link 	= '/search/?q=' + suggestion;
			var li_item = "<li><a href='" + link + "'>" + suggestion_html + "</a></li>";
			$('#search_suggestions').append( li_item );
		}

		for (var k in modelSuggestObject ) {
			var suggestion 	= modelSuggestObject[k];
			suggestion 		= Object.keys(suggestion)[0];
			var link 		= SearchPage + '?q=' + input_query + '#brand=' + suggestion;
			var li_suggest 	= "<li><a href='" + link + "'>" + suggestion + "</a></li>";
			$('#model_suggestions').append( li_suggest );
		}

		if ( !$( "#instant_search_results" ).is(":visible") )
			$('#instant_search_results').show();
	}

	var categorySuggestHtml = function( content ){
		var html    	= '';
		var term    	= $('#awok_instant_search').val();
		var li_item 	= '';
		var total_count = 0;

		if('facets' in content){
			if( term.length > 25 )
				var query   = term.substr(0, 25) + '...';
			else
				var query   = term;

			$('#instant_search_results').show();
			if(typeof content.facets["0"] != "undefined"){
				var catOptions = content.facets["0"].data;
				for ( var k in catOptions ) {
					if( SearchPage == '/search/' )
						var link = SearchPage + '?q='+content.query+'#category='+ encodeURIComponent( k );
					else
						var link = SearchPage + '?q=' + content.query;

					var name = '<b>'+query + '</b> '+in_text+' <span>'+k+'</span>';

					li_item += "<li><a href='"+link +"'><div class='isearch_item_info'>"
							+"<div class='is_cat_img'><div class='is_cat_img_inner'><img src='' alt=''></div></div>"
							+"<div class='is_cat_title'>"+name+"</div>"
							+"<div class='is_cat_count'>"+catOptions[k]+" "+results+"</div>"
							+"</div></a></li>";
					total_count += parseInt(catOptions[k]);
				}
			}

			if(total_count > 0){
				html = "<li class='search_head'><a href='/search/?q="+term+"'><div class='isearch_item_info'><div class='is_cat_img'><div class='is_cat_img_inner'></div></div><div class='is_cat_title'><b>"+query+"</b> "+in_text+" <span>"+all_cat+"</span></div><div class='is_cat_count'>" + content.nbHits +" " +results+ "</div></div></a></li>";
				html += li_item;
			}
			$('#new_cat_results').empty().append(html);
		}
		else{
			$('#instant_search_results').hide();
			$('#new_cat_results').add('#instant_search_cat').empty();
		}
	}

	$('#instant_search_results').css('width', $('#header_isearch_wrapper').width()+'px;');

});
