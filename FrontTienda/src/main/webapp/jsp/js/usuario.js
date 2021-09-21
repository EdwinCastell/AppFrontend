function validador(email){
	var tester = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-]+)\.)+([a-zA-Z0-9]{2,4})+$/;
	return tester.test(email);
}

function validar(){
	var cedula = document.getElementById("cedula").value;
	var nombre = document.getElementById("nombre").value;
	var usuario = document.getElementById("usuario").value;
	var email = document.getElementById("email").value;
	var pass = document.getElementById("pass").value;
	var pass2 = document.getElementById("pass2").value;
	
	if(cedula==""){
		$('#alert').html('Digite la c\u00e9dula').slideDown(500);
		$('#cedula').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}	
	if(usuario==""){
		$('#alert').html('Digite usuario').slideDown(500);
		$('#usuario').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}
	
	if(nombre==""){
		$('#alert').html('Digite nombre completo').slideDown(500);
		$('#nombre').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}
	
	if(email==""){
		$('#alert').html('Digite un correo').slideDown(500);
		$('#email').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}
	if(validador(email)==false){
		$('#alert').html('Correo no v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		$('#email').focus();
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}
	
	if(pass==""){
		$('#alert').html('Cree una contrase\u00F1a').slideDown(500);
		$('#pass').focus();
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