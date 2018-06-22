<?php 
	session_start();

	$id_livro = $_POST["id_livro"];

	$livro_comprar = $id_livro;

	if(!isset($_SESSION["carrinho"])) {
		$_SESSION["carrinho"] = [];
	}

	array_push($_SESSION["carrinho"], $livro_comprar);

	header("Location:index.php?area=carrinho");
?>