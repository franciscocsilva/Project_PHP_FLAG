<?php session_start();
ini_set("display_errors", 1);
include("config.php");
include("funcoes.php");
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Panda Books</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="slick/slick.css">
	<link rel="stylesheet" type="text/css" href="slick/slick-theme.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="shortcut icon" href="https://usepanda.com/favicon.ico">

	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="slick/slick.min.js"></script>
	<script type="text/javascript" src="slick/slick.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<a name="Top"> 
	<div class="wrapper">
		<header>
			<div class="logo">
				<a href="index.php"><img src="images/logo/logo7.png"></a>
			</div>

			<div class="menu-nav">
				<?php include("main-menu.php"); ?>				
			</div>

			<div class="sub-menu">
				<?php include("sub-menu.php"); ?>
			</div>		
		</header>

		<div class="content">
			<div class="aside-1">
				<?php include("left.php"); ?>
			</div>

			<main>

				 <?php
			         if (isset($_GET["area"])){
			            switch ($_GET["area"]){
			              case "loja": {include("loja.php"); } break;
			              case "loja_cat": {include("loja_cat.php"); } break;
			              case "loja_pub": {include("loja_pub.php"); } break; 
			              case "loja_man": {include("loja_man.php"); } break;     
			              case "detalhe-livro": {include("detalhe-livro.php"); } break;
			              case "detalhe-remove": {include("detalhe-remove.php"); } break;
			              case "wishlist": {include("wishlist.php"); } break;
			              case "carrinho": {include("carrinho.php"); } break;
			              case "operacao-final": {include("operacao-final.php"); } break; 
			              case "registo": {include("registo.php"); } break;
			              case "final-registo": {include("final-registo.php"); } break;
			              case "final-compra": {include("final-compra.php"); } break;
			            }
			         } else {
			            include("home.php");
			         }
		  	     ?>
				
			</main>

			<div class="aside-2">
				<?php include("right.php"); ?>
			</div>

		</div>
	</div>

	<footer>
		<?php include("footer.php"); ?>
	</footer>
</body>
</html>