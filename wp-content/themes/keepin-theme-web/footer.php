<?php
	$url_int = get_option( 'instaurl', 'http://www.instagram.com' );
	$url_fbk = get_option( 'faceurl', 'http://www.facebook.com' );
	$url_lik = get_option( 'linkeurl', 'http://www.linkedin.com' );
	$url_git = get_option( 'giturl', 'http://www.github.com' );
	$informa = get_option('informacion');
	$placeh = get_option('placeholder');

?>
</div--><!-- /.row -->
</div><!-- /.container -->
<footer class="footer">
	<div class="col-12 d-lg-flex flex-lg-row-reverse pl-lg-5">
		<div class="col-12 col-lg-6 pb-lg-4">
				<!--TEXTO Y BOTON-->
			<div class="col-12 col-lg-10 pl-3 pt-4 texto-footer">
				<?php echo $informa;?>
			</div>
			<div class="col-12 col-lg-10 ">
				<form class="form-inline">
					<div class="form-group col-10 p-0 m-0">
						<input type="text" 
								class="form-control-plaintext bg-white texto-btn pl-3 pt-2 " 
								placeholder="<?php echo $placeh;?>">
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
				<img src="<?php echo get_template_directory_uri() . '/img/ico-instagram.png'; ?>" alt="" id="">
			</a>
			<a href="<?php echo $url_fbk; ?>" target="_blank" class="pl-4">
				<img src="<?php echo get_template_directory_uri() . '/img/ico-facebook.png';?>" alt="" id="">
			</a>
			<a href="<?php echo $url_lik;?> " target="_blank" class="pl-4">
				<img src="<?php echo get_template_directory_uri() . '/img/ico-linkedin.png';?>" alt="" id="">
			</a>
			<a href="<?php echo $url_git;?>" target="_blank" class="pl-4">
				<img src="<?php echo get_template_directory_uri() . '/img/ico-github.png';?>" alt="" id="">
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
	<div class="dirurl-footer bg-white col-12 text-center pt-1 pb-3 p-lg-2">
		www.keepinagency.com
	</div>
	
</footer>
<?php wp_footer(); ?>
</body>
</html>