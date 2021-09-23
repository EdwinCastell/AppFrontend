/**
 * 
 */
$(document).ready(function(){
	$('ul.tabs li a:first').addClass('active');
	$('.container article').hide();
	$('.container article:first').show();

	$('ul.tabs li a').click(function(){
		$('ul.tabs li a').removeClass('active');
		$(this).addClass('active');
		$('.container article').hide();

		var activeTab = $(this).attr('href');
		$(activeTab).show();
		return false;
	});
});

