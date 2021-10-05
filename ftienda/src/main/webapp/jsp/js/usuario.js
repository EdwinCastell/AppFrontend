/**
 * 
 */
function validarPass(){		

	var pass = document.getElementById("pass").value;
	var pass2 = document.getElementById("pass2").value;	


	if(pass!= pass2){
		$('#alertpass').html('Las contrase\u00F1as no coinciden').slideDown(500);		
		return false;
	}else{
		$("#alertpass").html("").slideUp(300);
	}
	
	if(pass2==""){
		$("#alertpass").html("").slideUp(300);		
		return false;
	}
	
}

$(document).ready(function() {
	$('#animacion').click(function() {		
			$('#labelanimacion').addClass('animate__animated animate__heartBeat').removeClass('animate__animated animate__swing');		
	});
});