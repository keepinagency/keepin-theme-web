<?php
	$url_int = get_option( 'instaurl', 'http://www.instagram.com' );
	$url_fbk = get_option( 'faceurl', 'http://www.facebook.com' );
	$url_lik = get_option( 'linkeurl', 'http://www.linkedin.com' );
	$url_git = get_option( 'giturl', 'http://www.github.com' );

	$instalogo = get_option( 'instalogo', '/img/ico-instagram.png' );
	$facelogo = get_option( 'facelogo', '/img/ico-facebook.png' );
	$linkelogo = get_option( 'linkelogo', '/img/ico-linkedin.png' );
	$gitlogo = get_option( 'gitlogo', '' );
	
	$informa = get_option('informacion');
	$placeh = get_option('placeholder');

?>
</div--><!-- /.row -->
</div><!-- /.container -->
<footer id="contacto" class="footer">
	<div class="col-12 d-lg-flex flex-lg-row-reverse pl-lg-5">
		<div class="col-12 col-lg-6 pb-lg-4">
				<!--TEXTO Y BOTON-->
			<div class="col-12 col-lg-10 pl-3 pt-4 texto-footer">
				<?php echo $informa;?>
			</div>
			<div class="col-12 col-lg-10 ">
				<form class="form-inline"
						method="post"
						action="<?php echo get_template_directory_uri().'/temp_parts/solicitamasinfo.php'; ?>" validate>
					<div class="form-group col-10 p-0 m-0">
						<input type="email" id="correo" name="correo"
								class="form-control-plaintext bg-white texto-btn pl-3 pt-2 " 
								placeholder="<?php echo $placeh;?>" required>
					</div>

					<div class="form-group col-2 p-0 m-0 ">
						<button type="submit" class="btn p-0 m-0">
							<img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans_solo.png'; ?> " 
							class="img-btn-foot">
						</button>
					</div>

				</form>
			</div>
		</div>

		<!--SOCIAL MEDIA-->
		<div class="col-12 p-0 pt-3 pb-3 d-flex flex-row align-items-center
					col-lg-6 pl-lg-4 justify-content-lg-center">

			<a href="<?php echo $url_int; ?>" target="_blank" class="pl-4">
				<img src="<?php echo $instalogo; ?>" alt="" id="">
			</a>
			<a href="<?php echo $url_fbk; ?>" target="_blank" class="pl-4">
				<img src="<?php echo $facelogo;?>" alt="" id="">
			</a>
			<a href="<?php echo $url_lik;?> " target="_blank" class="pl-4">
				<img src="<?php echo $linkelogo;?>" alt="" id="">
			</a>
			<a href="<?php echo $url_git;?>" target="_blank" class="pl-4">
				<img src="<?php echo $gitlogo;?>" alt="" id="">
			</a>

		</div>
	</div>

	<!--MENÚ-->
	<div class="col-12 d-md-flex flex-md-row p-0 justify-content-center">
		<nav class="navbar navbar-ligth col-12 p-0 m-0">
			<div class="col-12 p-0 pb-lg-0 pt-lg-0 h-100">
				<?php
					wp_nav_menu( array(
						'container'       => 'div',
						'container_class' => 'col-12 col-lg-12 d-lg-block p-0 m-0',
						'container_id'    => 'idFooterMenu',
						'items_wrap'      => '<ul id="%1$s" class="%2$s p-0 m-0 w-100 nav nav-tabs justify-content-center ">%3$s</ul>',
						'theme_location'  => 'footer-menu',
						'menu_class'      => 'footer-menu',
						'walker'          => new WP_Bootstrap_Navwalker())
					);
				?>
			</div>
		</nav>
	</div>
	<!--DIR URL-->
	<div class="bg-white col-12 text-center pt-1 pb-3 p-lg-2">
		<a class="dirurl-footer" href="https://www.keepinagency.com">www.keepinegancy.com</a> 
	</div>
	
</footer>

<!-- Formulario Modal -->
<div class="modal fade" id="formmasinf" tabindex="-1" role="dialog" 
			aria-labelledby="formmasinfLabel" aria-hidden="true" style="z-index:30000 !important;">
	<div class="modal-dialog" role="document" style="z-index:31000 !important;">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					Indique su correo para contactarle:
				</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<!-- BODY MODAL --->
				<form name="from-correo" id="formcorreo" class="d-flex flex-column justify-content-center 
								align-items-center flex-wrap h-100 p-0 m-0 needs-validation" 
							method="post"
							action="<?php echo get_template_directory_uri().'/temp_parts/solicitamasinfo.php'; ?>" validate>
					<div class="h-0 w-100 w-lg-75 d-flex flex-row pb-2">
						<div class="form-group col-12 p-0 m-0">
							<input class="form-control form-control-sm text-center p-0 m-0" type="email"
									value="" placeholder="ej: sucorreo@correo.com"
									id="correo" name="correo" required>
						</div>	
					</div>

					<div class="h-0 w-100 w-lg-75 d-flex flex-row p-3 justify-content-center">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>&nbsp;&nbsp;
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</div>

<?php wp_footer(); ?>
</body>
</html>