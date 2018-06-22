<div id='welcome'>
<?php if(isset($_SESSION["nome_utilizador"])){
	echo "Welcome ".$_SESSION["nome_utilizador"];
	echo ",";
?>
</div>
<?php

	} else {
?>
		
<div class="login-form">
	<form action="validar-login.php" method="post">
		<ul>
			<div class="login-input">
				<div class="login-add"><i class="fa fa-envelope-o" aria-hidden="true"></i></i></div>
				<li><input placeholder=" Email" type="text" name="utilizador"></li>
			</div>
			<div class="login-input">
				<div class="login-add"><i class="fa fa-key" aria-hidden="true"></i></div>
				<li><input placeholder=" Password" type="password" name="password"></li>
			</div>
			<div class="login-submit">
				<li><input class="login-btn" type="submit" name="Login" value="Login"></li>
			</div>
		</ul>
	</form>
</div>


	<?php 
		if (isset($_GET["erro_login"]) && $_GET["erro_login"]==1) {
			?> <div class="login-erro">
			Your Login is incorrect, please try again! <?php 
		} else {

		}
	?>
	</div>

<?php
}
?>

<div class="frases">

	<?php 
		if(isset($_GET['area'])){ 

			switch ($_GET['area']){
				
				case 'detalhe-livro':

				$max=count(FRASES)-1;
				$numero_aleatorio=rand(1,$max);
				$frase = FRASES[$numero_aleatorio];
				echo $frase; break;

				case '' : echo ("Check out our selection!"); break;

				case 'loja_cat' : echo ("Choose from one of the following categories!"); break; 
				case 'loja_pub' : echo ("Choose from one of the following Publishers!"); break; 
				case 'loja_man' : echo ("Choose from one of the following Mangaka!"); break;	
				case 'final-registo' : echo ("Please sign in to have access to every feature!"); break;
				case 'final-compra' : echo ("Thank you for your patronage!"); break;
				case 'registo' : echo ("I need to know a little more about you!"); break;
				case 'wishlist' : echo ("So this is what your like? Great!"); break;
				case 'carrinho' : echo ("You want to buy these? Lets do it!"); break;
				case 'operacao-final' : echo ("Almost there!"); break;
				case 'detalhe-remove' : echo ("Will you get this one?!"); break;
			}


		
		} else {

			echo("What are you looking for?");
		}

		if(isset($_GET['filter'])){ 

			switch ($_GET['filter']){
				
				case 'rat' : echo ("How would you rate it?"); break; 
				case 'pri' : echo ("Check out these sweet deals!"); break; 	
			}
		}
	?>

		
</div>

<div class="bomibot">
	<?php
	if(isset($_GET['area'])){
		 switch($_GET['area']){
			case 'loja' :{ $img= 'bomibot/bomibot2.png'; } break;  
			case 'detalhe-livro' :{ $img= 'bomibot/bomibot3.png'; } break;
			case 'detalhe-remove' :{ $img= 'bomibot/bomibot1.png'; } break;
			case 'erro_login=1' :{ $img= 'bomibot/bomibot3.png'; } break;
			case 'registo' :{ $img= 'bomibot/bomibot2.png'; } break;
			case 'carrinho' :{ $img= 'bomibot/bomibot2.png'; } break;  
			case 'wishlist' :{ $img= 'bomibot/bomibot3.png'; } break; 			
			case 'contactos' :{ $img= 'bomibot/bomibot1.png'; } break;  
			case 'final-registo' :{ $img= 'bomibot/bomibot1.png'; } break;
			case 'final-compra' :{ $img= 'bomibot/bomibot1.png'; } break;
			case 'operacao-final' :{ $img= 'bomibot/bomibot2.png'; }; break;  
			case 'loja_cat' :{ $img= 'bomibot/bomibot1.png'; } break;  
			case 'loja_pub' :{ $img= 'bomibot/bomibot1.png'; } break;
			case 'loja_man' :{ $img= 'bomibot/bomibot1.png'; } break;  
			case 'loja_rat' :{ $img= 'bomibot/bomibot2.png'; } break;     
			case 'loja_pri' :{ $img= 'bomibot/bomibot2.png'; } break;     
		}
	} else {
		$img= 'bomibot/bomibot1.png';
	} 
	?>
	<img src="<?php echo $img ?>" id="bb1">	

	
</div>
