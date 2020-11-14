<?= header_main($data) ?>

<!-- nav -->
<nav class="navbar navbar-expand navbar-dark bg-light">
	<div class="container">
		<a class="navbar-brand" href="#">
			<img src="<?= IMG?>favicon.png" width="35" heitgh="35" alt="">
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02"
			aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample02">
			<ul class="navbar-nav mr-auto">

			</ul>
			<form class="form-inline my-2 my-md-0" id="formBusqueda">
				<input class="form-control" type="search" name="txtBusqueda" id="txtBusqueda"
					placeholder="Busqueda de articulo">
			</form>
		</div>
	</div>
</nav>
<!-- //nav -->

<!-- banner -->

<section class="banner-main">
	<div class="banner">
		<div class="wrapper">
			<div class="cover-top-center-9">
				<div class="w3ls_cover_txt-9">
					<h3 class="title-cover-9">Busqueda, cambio, comprar &amp; Tan solo en un Click</h3>
					<p class="para-cover-9">Presentamos piezas, casa, granjas, apartamentos, a tu dispocicion con informacion
						actualizada y de confiabilidad sin intermediarios.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //banner -->
<section class="jumbotron text-center">
	<div class="container">
		<h1>Muestras de productos</h1>
		<p class="lead text-muted">muestra de articulos a la venta, puede seleccionar y ver el producto o hacer una busqueda
			mas personalizada</p>
		<p>
			<a href="<?= base_url()?>producto/busqueda" class="btn btn-primary my-2">Ir a busquedas</a>
			<a href="#" class="btn btn-secondary my-2">Secondary action</a>
		</p>
	</div>
</section>
<!-- galeria de productos -->
<div class="container mt-5">
	<div class="row row-cols-2 row-cols-md-4 boxProduct"></div>
</div>
<?= footer_main($data) ?>