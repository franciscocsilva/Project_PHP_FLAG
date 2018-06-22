<?php 
	
		session_start();

		$con = mysqli_connect("localhost", "root", "", "manga");


		if ($con->connect_error) {
			die("Conection failed: " . $con->connect_error);
		}

		$stmt = $con->prepare ( "insert into  `wishlist` (`id_wishlist`, `fk_id_livro`, `fk_id_cliente`) values (null, ? , ? )");

		$stmt->bind_param("ii", $id_livro, $id_cliente);

		$id_livro = $_POST["id_livro"];

		$id_cliente = $_SESSION["id_utilizador"];

		$stmt->execute();

		
		$stmt->close();
		$con->close();

		header("Location:index.php?area=wishlist");
	
?>





