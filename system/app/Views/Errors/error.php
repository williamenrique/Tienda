<?= header_main($data) ?>
<link rel="stylesheet" href="<?= CSS_VENDORS?>style-liberty.css">
<section>

	<!-- content -->
	<div class="error-bg">
		<!-- error -->
		<section class="error py-md-5 py-3">
			<div class="card-body">
				<div class="error-info">
					<div class="error__404">404</div>
					<div class="not__found">Page not found</div>
					<p class="error-text my-3 mb-4">Oops! La pagina que solicita no existe. de seguro fue removida o ingreso una
						direccion equivocada.</p>
					<a class="btn btn-style btn-primary" href="<?= base_url()?>">Volver al inicio</a>
				</div>
			</div>
		</section>
		<!-- //error -->
	</div>
	<!-- //content -->

</section>
<?= footer_main($data) ?>