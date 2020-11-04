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
									<div style="overflow: hidden; height: 200px;background: url('.IMG.'items/'.$item["product_img"].') no-repeat center; background-size: cover"></div>
									<div class="card-body">
										<h5 class="card-title"><a href="'.base_url().'producto">'.$item["product_nombre"].'</a></h5>
										<p class="card-text">'.$item["product_descripcion"].'</p>
										<div class="d-flex justify-content-between align-items-center">
											<div class="">
												<ul class="nav flex-column mb-2">
													<li class="nav-item">
													Precio : <span class="text-danger" data-toggle="tooltip" data-placement="bottom" title="Precio por el propietario">$'.$item["product_precio"].'</span>
													</li>
													<li class="nav-item">Condicion : '.$condition.'</li>
												</ul>
											</div>

										</div>
									</div>
									<div class="py-2 pl-2">
									<small class="text-muted">'.formatear_fecha($item["product_fechaPublicacion"]).'</small>
									</div>
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