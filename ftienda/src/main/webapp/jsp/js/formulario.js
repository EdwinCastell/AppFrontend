function validador(email){
	var tester = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-]+)\.)+([a-zA-Z0-9]{2,4})+$/;
	return tester.test(email);
}

function validarUsuario(){	
	
	var email = document.getElementById("emailUsuario").value;
	var pass = document.getElementById("pass").value;
	var pass2 = document.getElementById("pass2").value;
	
	
	
	if(validador(email)==false){
		$('#alert').html('Correo no v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		$('#emailUsuario').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}	

	if(pass!= pass2){
		$('#alert').html('Las contrase\u00F1as no coinciden').slideDown(500);
		$('#pass2').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}
	
}

function validarCliente(){	
	
	var email = document.getElementById("emailCliente").value;
	
	
	
	if(validador(email)==false){
		$('#alert2').html('Correo no v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		$('#emailCliente').focus();
		return false;
	}else{
		$("#alert2").html("").slideUp(300);
	}	
	
}

function validarProveedor(){	
	
	var email = document.getElementById("emailProveedor").value;
	
	
	
	if(validador(email)==false){
		$('#alert3').html('Correo no v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		$('#emailProveedor').focus();
		return false;
	}else{
		$("#alert3").html("").slideUp(300);
	}	
	
}