function validador(email){
	var tester = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-]+)\.)+([a-zA-Z0-9]{2,4})+$/;
	return tester.test(email);
}
//verificar correo se ingresa correctamente
function validarUsuario(){	
	
	var email = document.getElementById("emailUsuario").value;
	
	
	if(validador(email)==false){
		$('#alert').html('Correo no v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		$('#emailUsuario').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}	
}
//verificar correo se ingresa correctamente
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

function verificarPasswords() {
 
    // Ontenemos los valores de los campos de contraseñas 
    var pass1 = document.getElementById("pass").value;
    var pass2 = document.getElementById("pass2").value;
 
    // Verificamos si las constraseñas no coinciden 
    if (pass1 != pass2) {
 
        // Si las constraseñas no coinciden mostramos un mensaje 
        $('#alert').html('Contrase\u00F1a no coincide').slideDown(500);
 
        return false;
    } else { 
        // Mostramos un mensaje mencionando que las Contraseñas coinciden 
        $('#alert').html("").slideUp(0);

 	}
}


