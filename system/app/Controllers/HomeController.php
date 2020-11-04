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
		$condition = "";
		foreach ($arrData as $item) {
			if($item["product_condicion"] == 1){
				$condition = '<span class="badge badge-primary">Nuevo</span>';
			}else{
				$condition = '<span class="badge badge-danger">Usado</span>';
			}
			$html .=
							'
							<div class="col mb-4">
								<div class="card h-100">
									<div style="overflow: hidden; height: 200px;background: url('.IMG.'items/'.$item["product_img"].') no-repeat center; background-size: cover" data-toggle="tooltip" data-placement="bottom" title="'.$item["product_nombre"].'"></div>
									<div class="card-body">
										<h5 class="card-title"><a href="'.base_url().'producto">'.$item["product_nombre"].'</a></h5>
										<p class="card-text">'.$item["product_descripcion"].'</p>
										<div class="d-flex justify-content-between align-items-center">
													<span class="text-danger" data-toggle="tooltip" data-placement="bottom" title="Precio por el propietario">$'.$item["product_precio"].'</span>
												'.$condition.'
										</div>
									</div>
									<small class="py-2 pl-4 text-muted">'.formatear_fecha($item["product_fechaPublicacion"]).'</small>
								</div>
							</div>
							';
		// 	$html .=
		// 					'
		// 						<div class="product">
		// 							<a href="'.base_url().'producto">
		// 								<div style="overflow: hidden; height: 200px;background: url('.IMG.'items/'.$item["product_img"].') no-repeat center; background-size: cover" ></div>
		// 							</a>
		// 							<div class="info-bg">
		// 								<h5><a href="'.base_url().'producto">'.$item["product_nombre"].'</a></h5>
		// 								<p>'.$item["product_descripcion"].'</p>
		// 								<ul class="d-flex">
		// 									<li><span class="fas fa-usd"></span>'.$item["product_precio"].'</li>
		// 									<li class="margin-effe"><a href="#" title="Add this to Favorite"><span class="far fa-heart-o"></span></a></li>
		// 									<li><a href="#" title="Share"><span class="fas fa-share"></span></a></li>
		// 								</ul>
		// 							</div>
		// 						</div>
		// 					';
		}
		echo $html;
		die();
	}
}