<?php 
	
		session_start();

		$con = mysqli_connect("localhost", "root", "", "manga");


		if ($con->connect_error) {
			die("Conection failed: " . $con->connect_error);
		}
		
		$stmt = $con->prepare (" delete from  wishlist where fk_id_livro = ?");

		$stmt->bind_param("i", $id_livro);

		$id_livro = $_POST["id_livro"];

		print $id_livro;

		$id_cliente = $_SESSION["id_utilizador"];

		$stmt->execute();
		

		$stmt->close();
		$con->close();
				
		header("Location:index.php?area=wishlist");
	
?>