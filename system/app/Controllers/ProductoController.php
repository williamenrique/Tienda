<?php
class Producto extends Controllers{
	public function __construct(){
		//invocar para que se ejecute el metodo de la herencia
		parent::__construct();
	}
	public function producto(){
			$data['page_name'] = "Producto - Tienda";
		$this->views->getViews($this, "producto",$data);
	}


		public function busqueda(){
			$data['page_name'] = "Busqueda - Tienda";
		$this->views->getViews($this, "busqueda",$data);
	}
}