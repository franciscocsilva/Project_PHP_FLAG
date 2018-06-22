

<div class="painel-1"> 
	<div class="slidder-1">
		<div class="slidder-img"></div>
	  	<div class="slidder-img"></div>
	  	<div class="slidder-img"></div>
	  	<div class="slidder-img"></div>
	  	<div class="slidder-img"></div>
	  	<div class="slidder-img"></div>
	  	<div class="slidder-img"></div>
	</div>
</div>

<div class="vendidos-header">
	<span> Top Sellers </span>
</div>
<div class="vendidos">
	<?php		
		$sql_info_livros = "select * from livros order by stock_livro ASC limit 3";

		$resultado_info_livro = $con->query($sql_info_livros);

		while($linha = mysqli_fetch_assoc($resultado_info_livro) ) { 			
	?>

	<div class="livro-t">			
		<div class="capa-livro">
			<a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>"><img src="images/<?php echo $linha["capa_livro"]; ?>"></a>
		</div>		

		<h2><a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>"><?php echo utf8_encode($linha["titulo_livro"]); ?></a></h2>
	</div>
	<?php 
	}
	?>
</div>

<div class="recentes-header">
	<span> New Releases </span>
</div>
<div class="recentes">
	<?php		
		$sql_info_livros = "select * FROM `livros` ORDER BY `livros`.`novidade_livro`  DESC limit 3";

		$resultado_info_livro = $con->query($sql_info_livros);

		while($linha = mysqli_fetch_assoc($resultado_info_livro) ) { 			
	?>

	<div class="livro-n">			
		<div class="capa-livro">
			<a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>"><img src="images/<?php echo $linha["capa_livro"]; ?>"></a>
		</div>		

		<h2><a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>"><?php echo utf8_encode($linha["titulo_livro"]); ?></a></h2>
	</div>
	<?php 
	}
	?>
</div>


<div class="motm-header">
	<span> Mangaka of the Month </span>
</div>
<div class="motm">
	<?php		
		$sql_info_livros = "SELECT * FROM `livros` inner join mangakas_escrevem_livros on id_livro=fk_id_livro  WHERE fk_id_mangaka=18";

		$resultado_info_livro = $con->query($sql_info_livros);

		while($linha = mysqli_fetch_assoc($resultado_info_livro) ) { 			
	?>

	<div class="livro-m">			
		<div class="capa-livro">
			<a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>"><img src="images/<?php echo $linha["capa_livro"]; ?>"></a>
		</div>		
	</div>

	<?php 
	}
	?> 
</div>