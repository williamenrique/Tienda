<footer class="footer">
	<div class="container">
		<section class="fotter-sub">
			<p>@2020 Clasificados. Todos los derechos reservados. Design by <a href="https://workinfo.ibx.lat/"
					target="_blank">
					Work Solutions</a>
			</p>
		</section>
	</div>
</footer>
<!-- copyright -->
<!-- move top -->
<button onclick="topFunction()" id="movetop" title="Go to top" style="display: block;">
	<span class="fas fa-arrow-up" aria-hidden="true"></span>
</button>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {
	scrollFunction()
};

function scrollFunction() {
	if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		document.getElementById("movetop").style.display = "block";
	} else {
		document.getElementById("movetop").style.display = "none";
	}
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}
</script>
<!-- /move top -->

<script>
const base_url = "<?= base_url()?>";
</script>
<script src="<?= JS_VENDORS?>jquery.min.js"></script>
<script src="<?= JS_VENDORS?>bootstrap.bundle.min.js"></script>
<script src="<?= JS_VENDORS?>autotrack.js"></script>
<script src="<?= JS_VENDORS?>js"></script>
<script src="<?= JS?><?= $data['page_functions']?>"></script>
<script src="<?= JS?>function.main.js"></script>
</body>

</html>