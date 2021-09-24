/**
 * 
 */
$(document).ready(function(){
	$('ul.tabs li a:first').addClass('active');
	$('.secciones article').hide();
	$('.secciones article:first').show();

	$('ul.tabs li a').click(function(){
		$('ul.tabs li a').removeClass('active');
		$(this).addClass('active');
		$('.secciones article').hide();

		var activeTab = $(this).attr('href');
		$(activeTab).show();
		return false;
	});
});

$(document).ready( function(){
	$('#mostrar').click(function(){
	//Comprobamos que la cadena NO esté vacía.
	if($(this).hasClass('fa-eye') && ($("#pass").val() != "") && ($("#pass2").val() != ""))
	{
		$('#pass').removeAttr('type');
		$('#pass2').removeAttr('type');
		$('#mostrar').addClass('fa-eye-slash').removeClass('fa-eye');
		$('.pwdtxt').html("Ocultar contrase\u00F1a");
		

	}
	else
	{
		$('#pass').attr('type','password');
		$('#pass2').attr('type','password');
		$('#mostrar').addClass('fa-eye').removeClass('fa-eye-slash');
		$('.pwdtxt').html("Mostrar contrase\u00F1a");
	}
	});
});

