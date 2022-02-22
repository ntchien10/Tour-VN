$(document).ready(function() {
	   
	var hash = window.location.hash.substr(1);
	
	$('#nav-pakh div a').each(function(){
		var href = $(this).attr('href');
		if(hash==href.substr(0,href.length-5)){
			var toLoad = hash+'.html #result';
			$('#result').load(toLoad);
		}

	});

	$('#nav-pakh div a').click(function(){

		var toLoad = $(this).attr('href')+' #result';
		$('#load').remove();
		$('.body-content').append('<span id="load">LOADING...</span>');
		$('#load').fadeIn('normal', loadContent);
		
		window.location.hash = $(this).attr('href').substr(0,$(this).attr('href').length-5);
		
		function loadContent() {
			$('#result').load(toLoad,'',showNewContent());
		}
		
		function showNewContent() {
			$('#result').show('normal',hideLoader());
		}
		
		function hideLoader() {
			$('#load').fadeOut('normal');
		}
		
		return false;
		
	});

});