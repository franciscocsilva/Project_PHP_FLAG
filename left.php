
<div class="left-menu">
	
	<div class="left-header">
		<p>Search:</p>
	</div>

	<div class="search">
		<input type="text" name="search" placeholder=" What are you looking for?" class="search-bar" size="5">
		<button class="search-button"><a class="btn" href="#"><i class="fa fa-search" aria-hidden="true"></i></i></a></button>
	</div>

	<div class="search-tree">
		<ul>			
			<li><a href="index.php?area=loja_cat"><span class="tree-category">By Category</span></a><span class="tree-opener"><i class="fa fa-plus" aria-hidden="true" onclick="abreMenu()"></i></span></li>
		
			<?php $lista_categoria = getListaCategorias($con); ?>
			<ul id="lista-categorias">
				<?php for($i=0;$i<count($lista_categoria); $i++) { ?>
					<li><i class="fa fa-caret-right" aria-hidden="true"></i> 
						<a href="index.php?area=loja&pagenum=1&cat=<?php echo $lista_categoria[$i]; ?>">
						<?php echo utf8_encode($lista_categoria[$i]); ?></li>
					</a>	
				<?php } ?> <br>
			</ul>
		
			
			<li><a href="index.php?area=loja_pub"><span class="tree-category">By Publisher</span></a><span class="tree-opener"><i class="fa fa-plus" aria-hidden="true" onclick="abreMenu2()"></i></span></li>
			
			<?php $lista_editora = getListaEditoras($con); ?>
			<ul id="lista-editoras">
				<?php for($i=0;$i<count($lista_editora); $i++) { ?>
					<li><i class="fa fa-caret-right" aria-hidden="true"></i>
						<a href="index.php?area=loja&pagenum=1&pub=<?php echo $lista_editora[$i]; ?>">
						<?php echo utf8_encode($lista_editora[$i]); ?></li>
				</a>
				<?php } ?> <br>
			</ul>
			

			<li><a href="index.php?area=loja_man"><span class="tree-category">By Mangaka</span></a><a href="index.php?area=loja_man"><span class="tree-opener"><i class="fa fa-arrow-right" aria-hidden="true"></i></span></a></li>
			
			<li><a href="index.php?area=loja&filter=rat&pagenum=1"><span class="tree-category">By Rating</span></a><a href="index.php?area=loja&filter=rat&pagenum=1"><span class="tree-opener"><i class="fa fa-arrow-right" aria-hidden="true"></i></span></a></li>

			<li><a href="index.php?area=loja&filter=pri&pagenum=1"><span class="tree-category">By Price</span></a><a href="index.php?area=loja&filter=pri&pagenum=1"><span class="tree-opener"><i class="fa fa-arrow-right" aria-hidden="true"></i></span></a></li>
		</ul>
	</div>
</div>