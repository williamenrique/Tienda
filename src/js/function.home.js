document.addEventListener('DOMContentLoaded', function () {
	if (document.querySelector(".boxProduct")) {
		let boxProduct = document.querySelector(".boxProduct");
		//creamos el objeto para os navegadores
		var request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
		var ajaxUrl = base_url + "Home/getItems";
		//abrimos la conexion y enviamos los parametros para la peticion POST o GET
		request.open("POST", ajaxUrl, true);
		request.send();
		request.onreadystatechange = function () {
			//todo va bien
			//evaluamos la respuesta
			if (request.readyState == 4 && request.status == 200) {
				//convertir en objeto JSON la respuesta del servidor
				boxProduct.innerHTML = request.responseText;
			}
		}
	}
}, false)
window.addEventListener('load', function () {
	// cargamos las funciones al iniciar el DOM
}, false)



