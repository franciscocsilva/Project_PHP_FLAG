<form action="index.php?area=operacao-final" method="post">
	<div class="carrinho">
		<h2 class="cart-header">Shopping Cart</h2>

			<div class="carrinho-item">
			<?php
			
				if (isset($_SESSION["carrinho"])) {

					$carrinho = $_SESSION["carrinho"];

			

					for ($i=0; $i<count($carrinho); $i++){

												
						$titulo = getNomeLivro($con, $carrinho[$i]);

						$capa = getCapa($con, $carrinho[$i]);

						$preco = getPrecoLivro($con, $carrinho [$i]);

						?>

						<li style="width: 100%; float: left;">
								<img style="width:80px; float: left;" src='images/<?php echo $capa; ?>'>
								<span style="width:30%; float: left;"><?php echo $titulo; ?></span>

								<span style="width:15%; float: left;"><?php echo $preco; ?>€</span>
								
								<input type="number" min="1" max="10" value="1" name="quantidade_<?php echo $carrinho[$i] ?>">
								
						 </li>
						<?php
					}
				}			
			?>
			</div>

		
		<div class="add-wrapper">
			<div class="headback">
				<a href="index.php?area=loja&pagenum=1" class="add-back">Back to Shop</a>
			</div>

			<div class="checkout">
				<input type="submit" value="Check out" class="add-out">
			</div>
		</div>

	</div>
</form>

