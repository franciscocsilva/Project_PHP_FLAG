<ul> 	      
    <li><a href="index.php">Home</a></li> 
    <li><a href="index.php?area=loja&pagenum=1">Shop</a></li> 
    <li><a href="#Bot">Contacts</a></li>
   
    <?php if(!isset($_SESSION["nome_utilizador"])){ ?>
    <li><a href="index.php?area=registo">Register</a></li> 
    <?php } else { ?>
		<li><a href="logout.php" id="clear" onclick="return confirm('Are you sure you want to logout?');">Logout</a></li>
	<?php
    }
    ?>
</ul>