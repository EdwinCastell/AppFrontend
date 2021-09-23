/**
 * 
 */
$(document).ready(function(){
	$('ul.tabs li a:first').addClass('active');
	$('.secciones section').hide();
	$('.secciones section:first').show();

	$('ul.tabs li a').click(function(){
		$('ul.tabs li a').removeClass('active');
		$(this).addClass('active');
		$('.secciones section').hide();

		var activeTab = $(this).attr('href');
		$(activeTab).show();
		return false;
	});
});

