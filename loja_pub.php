<div class="loja-cat">
	<h2 class="cat-header">Publishers</h2>
	<ul>
		<?php 
			$lista_editora = getListaEditoras($con);

			for($i=0;$i<count($lista_editora); $i++) { ?>
				<li>
					<i class="fa fa-caret-right" aria-hidden="true"></i>
					<a href="index.php?area=loja&pagenum=1&pub=<?php echo $lista_editora[$i]; ?>">
					<?php echo utf8_encode($lista_editora[$i]); ?></li>
				</a>
		<?php } ?>
	</ul>	
</div>



