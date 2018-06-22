<?php	
	session_start();

	include("config.php");

	$utilizador = $_POST["utilizador"];
	$password = $_POST["password"];
	$sql_pesquisa = "select * from clientes where email_cliente='$utilizador' and password_cliente = MD5('$password') ";
	$resultado = $con->query($sql_pesquisa); 
	$encontrados = $resultado->num_rows;


	if( $encontrados == 1){
		$linha = mysqli_fetch_assoc($resultado); 

		$_SESSION["nome_utilizador"]= $linha["nome_cliente"];
		$_SESSION["id_utilizador"]= $linha["id_cliente"];

		header('location:'.$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_‌​STRING']); 
		die;

	} else {
				
		header("Location:index.php?erro_login=1");
	}
?>