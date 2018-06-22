<div class="loja-cat">
	<h2 class="cat-header">Categories</h2>
	<ul>
		<?php 
			$lista_categorias = getListaCategorias($con);

			for($i=0;$i<count($lista_categoria); $i++) { ?>
				<li>
					<i class="fa fa-caret-right" aria-hidden="true"></i>
					<a href="index.php?area=loja&pagenum=1&cat=<?php echo $lista_categoria[$i]; ?>">
					<?php echo utf8_encode($lista_categoria[$i]); ?></li>
				</a>	
		<?php } ?>
	</ul>	
</div>