</div--><!-- /.row -->
</div><!-- /.container -->
<footer class="footer">
	<div class="bottom-footer col-12 col-md-12 d-md-flex flex-md-row p-0 justify-content-center">
		
		<div class="col-11 p-0 pb-lg-0 pb-3 pt-lg-0 h-100">
			<!--div class=" d-flex flex-row col-12 p-0 pt-2 pb-1"-->
			<?php
				wp_nav_menu( array(
					'container'       => 'div',
					'container_class' => 'col-12 col-lg-12 d-lg-block p-0 m-0',
					'container_id'    => 'idFooterMenu',
					'items_wrap'      => '<ul id="%1$s" class="%2$s p-0 m-0 w-100 text-center">%3$s</ul>',
					'theme_location'  => 'footer-menu',
					'menu_class'      => 'footer-menu',
					'walker'          => new WP_Bootstrap_Navwalker())
				);
				?>
		</div>
	</div>
	<div class="area-widgetsfoot col-sm-8">
		<?php if ( is_active_sidebar( 'footer_copyright_text' ) ) { dynamic_sidebar( 'footer_copyright_text' ); } ?>
	</div>
</footer>
<?php wp_footer(); ?>
</body>
</html>
