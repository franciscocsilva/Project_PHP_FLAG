<?php 
	
		session_start();

		$con = mysqli_connect("localhost", "root", "", "manga");


		if ($con->connect_error) {
			die("Conection failed: " . $con->connect_error);
		}

		$stmt = $con->prepare ( "INSERT INTO `clientes_classificam_livros` (`fk_id_cliente`, `fk_id_livro`, `valor_classificacao`) VALUES (?, ?, ?)");

		$stmt->bind_param("iid", $id_cliente, $id_livro, $rating);

		$id_livro = $_POST["id_livro"];

		$id_cliente = $_SESSION["id_utilizador"];

		$rating = $_POST["rating"];

		$stmt->execute();

		
		$stmt->close();
		$con->close();

		header("Location:index.php?area=detalhe-livro&livro=".$id_livro);
	
?>



