function validador(email){
	var tester = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-]+)\.)+([a-zA-Z0-9]{2,4})+$/;
	return tester.test(email);
}

function validarUsuario(){	
	
	var email = document.getElementById("emailUsuario").value;	
	
	
	if(validador(email)==false){
		$('#alert').html('Por favor digite un correo v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		return false;
	}else{
		$("#alert").html("").slideUp(300);
	}	
	
}

function validarCliente(){	
	
	var email = document.getElementById("emailCliente").value;	
	
	
	if(validador(email)==false){
		$('#alert2').html('Correo no v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		return false;
	}else{
		$("#alert2").html("").slideUp(300);
	}	
	
}

function validarProveedor(){	
	
	var email = document.getElementById("emailProveedor").value;
	
	
	
	if(validador(email)==false){
		$('#alert3').html('Correo no v\u00E1lido (ejemplo@ejemplo.com)').slideDown(500);
		return false;
	}else{
		$("#alert3").html("").slideUp(300);
	}	
	
}

document.getElementById('file').onchange=function(e){
    let reader=new FileReader();
    reader.readAsDataURL(e.target.files[0]);
    reader.onload=function(){
		let preview=document.getElementById('preview');
            image=document.createElement('img');
            image.src=reader.result;
            image.style.width="200px";
            preview.innerHTML='';
            preview.append(image);
    }
}

