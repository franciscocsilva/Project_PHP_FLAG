<?php
	
	$id_do_livro = $_GET["livro"];
	$sql_detalhe = "select * from livros where id_livro = " .$id_do_livro;
	$resultado = $con->query($sql_detalhe);
	$linha = mysqli_fetch_assoc($resultado);

?>

<div class="detalhe-livro">
	
	<div class="info-1">
		<div class="cover-livro">
			<img src="images/<?php echo $linha["capa_livro"]; ?>">
		</div>		

		<div class="info-livro">			
			<h1><?php echo utf8_encode($linha["titulo_livro"]); ?></h1>

			<div class="sin-box">
				<p class="sinopse"><?php echo utf8_decode($linha["sinopse_livro"]); ?></p>
			</div>	

			<div class="final">
				<div class="detalhe-preco">
					<h2>Price:&nbsp;</h2> <span><?php echo $linha["preco_livro"]; ?>€</span>	
				</div>

				<?php
					if(isset($_SESSION["nome_utilizador"])) {	?>
					<div class="detalhe-rate">
						<h2>Review:&nbsp;</h2> 
				
						<form action="adicionar-rating.php" method="post" >
							<input type="number" name="rating" step="0.1" min="0" max="10" value="10" class="rate" onkeydown="return false">

							<input type="hidden" name="id_livro" value="<?php echo $_GET['livro'];?>">
								
							<input type="submit" value="Submit" class="rate-s">	
						</form>					
					</div>
				<?php }	?>

				<div class="detalhe-qtd">

					<?php
					if(isset($_SESSION["nome_utilizador"])) {				
						?>
						<form action="remover-wishlist.php" method="post" class="delete-w">
							<input type="hidden" name="id_livro" value="<?php echo $_GET['livro'];?>">
							
							<div class="login-add2"><i class="fa fa-trash" aria-hidden="true"></i></div>
							<input type="submit" value="Remove from Wishlist" class="add-to">	
						</form>

					<?php	} ?>

					<form action="adicionar-carrinho.php" method="post" >
						<input type="hidden" name="id_livro" value="<?php echo $_GET['livro'];?>">
						
						<div class="login-add2"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div><input type="submit" value="Add to Cart" class="add-to">		
					</form>					
				</div>

				<!--<a href="index.php?area=loja&pagenum=1" class="voltar">Back to Shop</a> <br>-->
			
			</div>	
				
		</div>	
	</div>

	<div class="info-2">

		<ul class="info-box">
			<li class="info-lista">
				<h2>Author:</h2>
				<span><?php $lista_mangakas = getMangakas($con, $id_do_livro); ?>
				<ul>
					<?php for($i=0;$i<count($lista_mangakas); $i++) { ?>
						<li><?php echo utf8_decode($lista_mangakas[$i]); ?></li><br>
					<?php } ?> 
				</ul></span>
			</li>
		
			<li class="info-lista">
				<h2>Category:</h2> 
				<span><?php $lista_categoria = getCategoria($con, $id_do_livro); ?>
				<ul>
					<?php for($i=0;$i<count($lista_categoria); $i++) { ?>
						<li><?php echo utf8_encode($lista_categoria[$i]); ?></li><br>
					<?php } ?> 
				</ul></span>
			</li>

			<li class="info-lista">
				<h2>Publisher:</h2> <span><?php echo utf8_encode(getEditora($con, $id_do_livro	)); ?></span>
			</li>

			<li class="info-lista">
				<h2>Volumes:</h2> <span><?php echo getVolume($con, $id_do_livro); ?></span>
			</li>

			<li class="info-lista">
				<h2>ISBN:</h2> <span><?php echo getISBN($con, $id_do_livro);?> </span>
			</li>

			<li class="info-lista">
				<h2>Rating:</h2> <span><?php echo getClassFromLivro($con, $id_do_livro); ?> / 10</span>
			</li>
		</ul>		
	</div>
</div>
