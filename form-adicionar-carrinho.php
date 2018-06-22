<form action="adicionar-carrinho.php" method="post">

	Qty: <input type="number" name="qtd" min="1" max="10">
	<input type="hidden" name="id_livro" value="<?php echo $_GET['livro'];?>">
	<input type="submit" value="Adicionar ao Carrinho">

</form>

	<a href="index.php?area=finalizar-compra">Finalizar Compra</a>