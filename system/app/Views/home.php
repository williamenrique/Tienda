<?= header_main($data) ?>

<!-- header -->
<div class="w3l-headers-9">
	<header>
		<div class="wrapper">
			<div class="header">
				<div class="right-img-9">
					<a class="d-flex align-items-center" href="<?= base_url()?>home">
						<img src="<?= IMG?>favicon.png" alt="Logo" title="Your logo" style="height:35px;" />
						<h5 class="logo"></h5>
					</a>
				</div>
				<div class="bottom-menu-content">
					<input type="checkbox" id="nav">
					<label for="nav" class="menu-bar"></label>
					<nav>
						<!-- search -->
						<section class="w3l-search-form-3-main">
							<div class="wrapper">
								<div class="section-width">
									<form class="search-3-gd">
										<div class="d-flex grids-icon">
											<span class="fas fa-text-height" aria-hidden="true"></span>
											<input type="search" name="text" placeholder="Enter Keywords here.." required="">
										</div>
										<div class="d-flex grids-icon grids-icon-2">
											<span class="fas fa-tags" aria-hidden="true"></span>
											<div class="input-group-btn">
												<select class="btn btn-default" name="ext" required="">
													<option selected="">Select Category</option>
													<option>Electronics </option>
													<option>Furniture </option>
													<option>Jobs</option>
													<option>Real Estate</option>
													<option>Sports</option>
													<option>Health &amp; Beauty</option>
													<option>And more</option>
												</select>
											</div>
										</div>
										<!-- <div class="d-flex grids-icon grids-icon-2">
											<span class="fa fa-map-marker" aria-hidden="true"></span>
											<div class="input-group-btn">
												<select class="btn btn-default" name="ext" required="">
													<option selected="">Select Country</option>
													<option>Australia</option>
													<option>London</option>
													<option>India</option>
													<option>Bangladesh</option>
													<option>Saudi Arabia</option>
													<option>America</option>
													<option>Srilanka</option>
												</select>
											</div>
										</div> -->
										<button type="submit" class="btn button-eff"><span class="fas fa-search"
												aria-hidden="true"></span>Search</button>
									</form>
								</div>
							</div>
						</section>
						<!-- search -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<script src="<?= JS_VENDORS?>jquery.min.js"></script>
	<script>
	$('#nav').change(function() {
		if ($('#nav').is(":checked")) {
			$('body').css('overflow', 'hidden');
		} else {
			$('body').css('overflow', 'auto');
		}
	});
	</script>
</div>
<!-- banner -->
<section class="w3l-banner-3-main">
	<div class="banner-3">
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

<!-- galeria de productos -->
<div class="w3l-products-4">
	<div id="products4-block" class="text-center">
		<div class="wrapper">
			<input id="tab1" type="radio" name="tabs" checked="">
			<label class="tabtle" for="tab1">Latest Ads</label>
			<section id="content1" class="tab-content text-left">
				<div class="d-grid grid-col-3">
					<!-- item 1 -->
					<div class="product">
						<a href="<?= base_url()?>producto">
							<img src=" <?= IMG?>items/11.jpg" class="img-responsive" alt="">
						</a>
						<div class="info-bg">
							<h5><a href="<?= base_url()?>producto">Sed
									ut perspiciatis unde omnis iste natus</a></h5>
							<p>Nulla ex nunc</p>
							<ul class="d-flex">
								<li><span class="fas fa-usd"></span> 1200</li>
								<li class="margin-effe"><a href="#" title="Add this to Favorite"><span
											class="far fa-heart-o"></span></a></li>
								<li><a href="#" title="Share"><span class="fas fa-share"></span></a></li>
							</ul>
						</div>
					</div>
					<!-- item2 -->
					<div class="product">
						<a href="<?= base_url()?>producto"><img src=" <?= IMG?>items/11.jpg" class="img-responsive" alt=""></a>
						<div class="info-bg">
							<h5><a href="<?= base_url()?>producto">Sed
									ut perspiciatis unde omnis iste natus</a></h5>
							<p>Nulla ex nunc</p>
							<ul class="d-flex">
								<li><span class="fas fa-usd"></span> 1200</li>
								<li class="margin-effe"><a href="#" title="Add this to Favorite"><span
											class="far fa-heart-o"></span></a></li>
								<li><a href="#" title="Share"><span class="fas fa-share"></span></a></li>
							</ul>
						</div>
					</div>

				</div>
			</section>
		</div>
	</div>
</div>
<?= footer_main($data) ?>