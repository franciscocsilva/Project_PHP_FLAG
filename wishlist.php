<div class="wishlist">
	<h2 class="wish-header">Wishlist</h2>

		<?php
		if(!isset($_SESSION["nome_utilizador"])) {

			?> <div class="log-mensagem">Please register or log in with an existing account to use this feature!</div> <?php
		} else {

		$id_cliente = $_SESSION["id_utilizador"];
		
		$sql_info_livros = "select * from `wishlist` inner join livros on fk_id_livro = id_livro where fk_id_cliente = " . $id_cliente;

		$resultado_info_livro = $con->query($sql_info_livros);

		while($linha = mysqli_fetch_assoc($resultado_info_livro) ) { ?>

		<div class="livro-w">			
			
			<div class="capa-livro-w">
				<a href="index.php?area=detalhe-remove&livro=<?php echo $linha["id_livro"]; ?>"><img src="images/<?php echo $linha["capa_livro"]; ?>"></a>
			</div>

			<h2><a href="index.php?area=detalhe-remove&livro=<?php echo $linha["id_livro"]; ?>"><?php echo utf8_encode($linha["titulo_livro"]); ?></a></h2>

				
			<div class="preco-w">
				<?php 
				if(isset($_GET['filter']) &&$_GET['filter'] =='rat'){
					$class= getClassFromLivro($con, $linha['id_livro']);
					echo $class; ?> / 10 <?php

				} else {
					echo $linha["preco_livro"]; ?>€
				<?php } ?>
			</div>

			<div class="more-w"><a href="index.php?area=detalhe-remove&livro=<?php echo $linha["id_livro"]; ?>">View <p> Details</a></div>
		</div>

		<?php 
		}
		}
		?>	

		<div class="bk-st">
		<div class="headback-2">
			<a href="index.php?area=loja&pagenum=1" class="add-back-2">Back to Shop</a>
		</div>	
		</div>
</div>

