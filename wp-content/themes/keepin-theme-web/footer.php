<?php
	$url_int = get_option( 'instaurl', 'http://www.instagram.com' );
	$url_fbk = get_option( 'faceurl', 'http://www.facebook.com' );
	$url_lik = get_option( 'linkeurl', 'http://www.linkedin.com' );
	$url_git = get_option( 'giturl', 'http://www.github.com' );
?>
</div--><!-- /.row -->
</div><!-- /.container -->
<footer class="footer">
	<!--TEXTO Y BOTON-->
<div class="col-12 pl-3 pt-4 texto-footer">
	Need more info?
</div>
<div id="#contacto" class="col-12 col-xs-12 d-lg-none d-md-flex">
	<form class="form-inline">
		<div class="form-group col-10 p-0 m-0">
			<input type="text" class="form-control-plaintext bg-white texto-btn pl-3 pt-2" 
								id="staticEmail2" placeholder="here@yourmail.com">
		</div>
		<div class="form-group col-2 p-0 m-0 ">
			<button type="submit" class="btn p-0 m-0">
				<img src="<?php echo get_template_directory_uri() . '/img/btn-vermas_trans_solo.png'; ?> " 
				class="img-btn-foot">
			</button>
		</div>
	</form>
</div>

	<!--SOCIAL MEDIA-->
<div class="col-12 row mx-auto p-3">
	
	<div class="col-2 m-2">
		<a href="<?php echo $url_int; ?>" target="_blank">
			<img src="<?php echo get_template_directory_uri() . '/img/ico-instagram.png'; ?>" alt="" id="">
		</a>
	</div>
	<div class="col-2 m-2">
		<a href="<?php echo $url_fbk; ?>" target="_blank">
			<img src="<?php echo get_template_directory_uri() . '/img/ico-facebook.png';?>" alt="" id="">
		</a>
	</div>
	<div class="col-2 m-2">
		<a href="<?php echo $url_lik;?> " target="_blank">
			<img src="<?php echo get_template_directory_uri() . '/img/ico-linkedin.png';?>" alt="" id="">
		</a>
	</div>
	<div class="col-2 m-2">
		<a href="<?php echo $url_git;?>" target="_blank">
			<img src="<?php echo get_template_directory_uri() . '/img/ico-github.png';?>" alt="" id="">
		</a>
	</div>
</div>
	<!--MENÚ-->
	<div class="col-12 col-xs-12 d-lg-none d-md-flex flex-md-row p-0 justify-content-center">
		<nav class="navbar navbar-ligth col-12 p-0 m-0">
			<div class="col-12 p-0 pb-lg-0 pt-lg-0 h-100">
				<!--div class=" d-flex flex-row col-12 p-0 pt-2 pb-1"-->
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
	<!--DIR URL-->
		<div class="dirurl-footer bg-white col-12 text-center pt-1 pb-3">
			www.keepinagency.com
		</div>
	</div>
	
</footer>
<?php wp_footer(); ?>
</body>
</html>