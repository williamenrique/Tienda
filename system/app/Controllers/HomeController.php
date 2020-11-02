<?php
class Home extends Controllers{
	public function __construct(){
		//invocar para que se ejecute el metodo de la herencia
		parent::__construct();
	}
	public function home(){
		$data['page_name'] = "Home - Tienda";
		$data['page_functions'] = "function.home.js";
		$this->views->getViews($this, "home",$data);
	}

	public function getItems(){
		$arrData = $this->model->getItems();
		$html = "";
		foreach ($arrData as $item) {
			$html .=
							'
								<div class="product">
									<a href="'.base_url().'producto">
										<img src="'.IMG.'items/'.$item["product_img"].'" class="img-responsive" alt="">
									</a>
									<div class="info-bg">
										<h5><a href="'.base_url().'producto">'.$item["product_nombre"].'</a></h5>
										<p>'.$item["product_descripcion"].'</p>
										<ul class="d-flex">
											<li><span class="fas fa-usd"></span>'.$item["product_precio"].'</li>
											<li class="margin-effe"><a href="#" title="Add this to Favorite"><span class="far fa-heart-o"></span></a></li>
											<li><a href="#" title="Share"><span class="fas fa-share"></span></a></li>
										</ul>
									</div>
								</div>
							';
		}
		echo $html;
		die();
	}
}