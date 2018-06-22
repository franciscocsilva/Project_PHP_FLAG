<div class="op-final">
	<h2 class="cart-header">Shopping Cart</h2>
<?php

	if(!isset($_SESSION["nome_utilizador"])) {
		echo "<script>window.location='index.php?area=registo'</script>";
	} else {
	
		$id_cliente= $_SESSION["id_utilizador"];
		$sql_insere_compra = "insert into compras(fk_id_cliente) values ($id_cliente)";
		$con->query($sql_insere_compra);
		$compra_inserida = $con->insert_id;

		$livros_no_carrinho = $_SESSION["carrinho"];

		$total = 0; 
				
			for($i=0;$i<count($livros_no_carrinho);$i++){

				$id_livro = $livros_no_carrinho[$i];			
				$preco = getPrecoLivro($con, $id_livro);		
				$quantidade =$_POST['quantidade_'.$livros_no_carrinho[$i]];

				$sql_insere_carrinho = "insert into carrinho(fk_id_compra, fk_id_livro, quantidade_livro_carrinho, preco_livro)
				values ($compra_inserida, $id_livro, $quantidade)" ;

				$con->query($sql_insere_carrinho);

				
				$stock_antigo = getStockLivro($con, $id_livro);
				$stock_novo = $stock_antigo-$quantidade;

				$sql_actualiza_stock = "update livros set stock_livro = $stock_novo where id_livro=".$id_livro;

				$con->query($sql_actualiza_stock);

				//echo "O livro com o ID ".$livros_no_carrinho[$i]." tem  ".$_POST['quantidade_'.$livros_no_carrinho[$i]]." unidades <br>";


				$total = $total + ($preco * $quantidade);
			}

			$_SESSION["carrinho"]=[];
			
			?>
			<div class="log-mensagem"> <?php echo "Your order total is: ".$total; ?> </div>
			<?php				
	}
?>

	<div class="pagamento">
		Please select your payment method below:

		<form action="final-compra.php" method="post">
			<ul>
				<li class="pagamento-radio">
					<input type="radio" name="mb" value="mb"><img src="images/pagamento/mb.png">
					<input type="radio" name="mc" value="pp"><img src="images/pagamento/pp.png">
					<input type="radio" name="pp" value="mc"><img src="images/pagamento/mc.jpg">					
				</li>
				<li><input type="text" name="nome" placeholder="Card Name"></li>
				<li> 
					<input type="text" name="apelido" placeholder="Card Number">
				</li>
				<li><input placeholder="Valid Thru" class="textbox-n" type="text" onfocus="(this.type='date')"  name="data_nascimento"></li>
				<li>
					<div class="pay-submit">
						<a href="index.php?area=final-compra" class="pay-2">Submit</a>
					</div>
				</li>
			</ul>
		</form>
	</div>
</div>