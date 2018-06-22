<?php
	/*session_start();
	include("config.php");
	include("funcoes.php");*/

 		if(isset($_SESSION["nome_utilizador"])){ 



	if(!isset($_SESSION["nome_utilizador"])) {
		header("Location:index.php?area=registo");
	} else {
		$id_cliente = $_SESSION["id_utilizador"];

		$sql_insere_compra = "insert into compras(fk_id_cliente) values ($id_cliente)";

		$con->query($sql_insere_compra);

		$compra_inserida = $con->insert_id;

		//echo $compra_inserida;

		$carrinho = $_SESSION["carrinho"];


		$total = 0;

		for($i=0;$i<count($carrinho);$i++){
			$id_livro = $carrinho[$i][0];
			$quantidade = $carrinho[$i][1];
			$preco = getPrecoLivro($con, $id_livro);
			$preco_com_IVA = $preco * IVA;

			$sql_insere_carrinho = "insert into carrinho(fk_id_compra, fk_id_livro, quantidade_livro_carrinho, preco_livro)
			values ($compra_inserida, $id_livro, $quantidade, $preco_com_IVA)" ;

			$con->query($sql_insere_carrinho);

			$total = $total + $quantidade*$preco_com_IVA;

			$stock_antigo = getStockLivro($con, $id_livro);
			$stock_novo = $stock_antigo-$quantidade;

			$sql_actualiza_stock = "update livros set stock_livro = $stock_novo where id_livro=".$id_livro;

			$con->query($sql_actualiza_stock);
		}

		$_SESSION["carrinho"]=[];

		echo "O total é: ".$total;
	}


?>