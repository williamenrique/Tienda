//creamos el objeto para os navegadores
	var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
	var ajaxUrl = base_url + "PATH";
	//abrimos la conexion y enviamos los parametros para la peticion POST o GET
	request.open("METHOD", ajaxUrl, true);
	request.send();
	request.onreadystatechange = function () {
		//todo va bien
		//evaluamos la respuesta
		if (request.readyState == 4 && request.status == 200) {
			//convertir en objeto JSON la respuesta del servidor si es necesario
			// y usar la respuesta en array
			let objData = JSON.parse(request.responseText);
			// sino se usa el request.responseText
		}
	}