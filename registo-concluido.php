<?php
	include("config.php");

	$nome = $_POST["nome"];
	$apelido = $_POST["apelido"];
	$email = $_POST["email"];
	$pass = $_POST["pass"];
	$morada = $_POST["morada"];
	$cp1 = $_POST["cp1"];
	$cp2 = $_POST["cp2"];
	$data_nascimento = $_POST["data_nascimento"];

	$sql_insert = "insert into clientes (nome_cliente, apelido_cliente, morada_cliente, cp1_cliente, cp2_cliente, dob_cliente, email_cliente, password_cliente) values('$nome', '$apelido','$morada', '$cp1', '$cp2', '$data_nascimento', '$email', MD5('$pass'))";

	$con->query($sql_insert);

	header("location:index.php?area=final-registo")

?>