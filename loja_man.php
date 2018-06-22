<div class="loja-cat">
	<h2 class="cat-header">Mangaka</h2>
	<ul>
		<?php 
			$lista_mangaka = getListaMangakas($con);

			for($i=0;$i<count($lista_mangaka); $i++) { ?>
				<li>
					<i class="fa fa-caret-right" aria-hidden="true"></i>
					<a href="index.php?area=loja&pagenum=1&man=<?php echo $lista_mangaka[$i]; ?>">
					<?php echo utf8_encode($lista_mangaka[$i]); ?></li>
				</a>	
		<?php } ?>
	</ul>	
</div>