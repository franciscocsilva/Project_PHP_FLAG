<div class="loja"> 
	<?php
		
		if (isset($_GET['pagenum'])){
			$offset = 12 * intval($_GET['pagenum']-1); 
		}else{
  		$offset=0;
		}		
			
	if(isset($_GET['cat'])){
	
		$sql_info_livros = "select * FROM livros  
		inner join livros_tem_categorias on id_livro=fk_id_livro 
		inner join categorias on id_categoria = fk_id_categoria 
		where stock_livro > 0 and nome_categoria like '%".$_GET['cat']."%' 
		ORDER BY livros.titulo_livro ASC limit ". $offset. ", 12"; 
	
		$sql_num_livros = "select count(*) as num_livros from livros 
		inner join livros_tem_categorias on id_livro=fk_id_livro
		inner join categorias on id_categoria = fk_id_categoria 
		where stock_livro > 0 
		and nome_categoria like '%".$_GET['cat']."%'";		

		$res_num_livros =  $con->query($sql_num_livros);
		$linha_num_livros = mysqli_fetch_assoc($res_num_livros);
		$num_livros = $linha_num_livros['num_livros'];
		
		$num_de_paginas_a_desenhar = $num_livros/NUM_POR_PAGINA;

	} else if(isset($_GET['pub'])){

		$sql_info_livros = "select * FROM livros  
		inner join editoras on  id_editora = fk_id_editora 
		where stock_livro > 0 
		and nome_editora like '%".$_GET['pub']."%' 
		ORDER BY livros.titulo_livro ASC limit ". $offset. ", ".NUM_POR_PAGINA; 
	
		$sql_num_livros = "select count(*) as num_livros from livros 
		inner join editoras on  id_editora = fk_id_editora 
		where stock_livro > 0 and nome_editora like '%".$_GET['pub']."%'";		

		$res_num_livros =  $con->query($sql_num_livros);
		$linha_num_livros = mysqli_fetch_assoc($res_num_livros);
		$num_livros = $linha_num_livros['num_livros'];
	
		$num_de_paginas_a_desenhar = $num_livros/NUM_POR_PAGINA;

	} else if(isset($_GET['man'])){

		$sql_info_livros = "select * FROM livros  
		inner join mangakas_escrevem_livros on id_livro = fk_id_livro 
		inner join mangakas on id_mangaka = fk_id_mangaka 
		where stock_livro > 0 and nome_mangaka like '%".$_GET['man']."%' 
		ORDER BY livros.titulo_livro ASC limit ". $offset. ", ".NUM_POR_PAGINA; 

		$sql_num_livros = "select count(*) as num_livros from livros 
		inner join mangakas_escrevem_livros on id_livro = fk_id_livro
		inner join mangakas on id_mangaka = fk_id_mangaka 
		where stock_livro > 0 
		and nome_mangaka like '%".$_GET['man']."%'";	

		$res_num_livros =  $con->query($sql_num_livros);
		$linha_num_livros = mysqli_fetch_assoc($res_num_livros);
		$num_livros = $linha_num_livros['num_livros'];
	
		$num_de_paginas_a_desenhar = $num_livros/NUM_POR_PAGINA;


	} else if(isset($_GET['filter'])){
	
		if($_GET['filter']=='rat'){
							
			$sql_info_livros = " select * FROM livros 
            inner join clientes_classificam_livros on id_livro = fk_id_livro 
            where stock_livro > 0 
            GROUP BY id_livro
            ORDER BY valor_classificacao DESC limit ". $offset. ", ".NUM_POR_PAGINA; 

			$sql_num_livros = "select count(*) as num_livros from livros";
			$res_num_livros =  $con->query($sql_num_livros);
			$linha_num_livros = mysqli_fetch_assoc($res_num_livros);
			$num_livros = $linha_num_livros['num_livros'];
			
			$num_de_paginas_a_desenhar = $num_livros/NUM_POR_PAGINA;
		}

		if($_GET['filter']=='pri'){

			$sql_info_livros = " select * FROM livros where stock_livro > 0 
			ORDER BY preco_livro ASC limit ". $offset. ", ".NUM_POR_PAGINA; 

			$sql_num_livros = "select count(*) as num_livros from livros";
			$res_num_livros =  $con->query($sql_num_livros);
			$linha_num_livros = mysqli_fetch_assoc($res_num_livros);
			$num_livros = $linha_num_livros['num_livros'];
			
			$num_de_paginas_a_desenhar = $num_livros/NUM_POR_PAGINA;
		}

	} else {

		$sql_info_livros = " select * FROM livros where stock_livro > 0 
		ORDER BY titulo_livro ASC limit ". $offset. ", ".NUM_POR_PAGINA; 

		$sql_num_livros = "select count(*) as num_livros from livros";
		$res_num_livros =  $con->query($sql_num_livros);
		$linha_num_livros = mysqli_fetch_assoc($res_num_livros);
		$num_livros = $linha_num_livros['num_livros'];
		
		$num_de_paginas_a_desenhar = $num_livros/NUM_POR_PAGINA;
	}	

	$resultado_info_livro = $con->query($sql_info_livros);

	while($linha = mysqli_fetch_assoc($resultado_info_livro) ) { ?>

		<div class="livro">			
			
			<div class="capa-livro">
				<a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>"><img src="images/<?php echo $linha["capa_livro"]; ?>"></a>
			</div>

			<h2><a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>"><?php echo utf8_encode($linha["titulo_livro"]); ?></a></h2>

			<!-- <div class="wish-cart">
				<a href=""><i class="fa fa-heart" aria-hidden="true"></i></a>
				<a href=""><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
			</div> -->
			
			<div class="preco">
				<?php 
				if(isset($_GET['filter']) &&$_GET['filter'] =='rat'){
					$class= getClassFromLivro($con, $linha['id_livro']);
					echo $class; ?> / 10 <?php

				} else {
					echo $linha["preco_livro"]; ?>€
				<?php } ?>
			</div>

			<div class="more"><a href="index.php?area=detalhe-livro&livro=<?php echo $linha["id_livro"]; ?>">View <p> Details</a></div>
		</div>

		<?php 
	}
	?> 

	
	<!-- MENU PAGINAS -->
	<div class="pag-num">
		<?php 
		$num_de_paginas_a_desenhar=ceil($num_de_paginas_a_desenhar);

		if(isset($_GET['filter'])){

			if($_GET['filter']=='rat'){

				if($num_de_paginas_a_desenhar>1) { ?>
					<ul>
						<li>
							<?php
								if($_GET['pagenum']==1){
									$pag_anterior =1;

								} else {
									$pag_anterior = $_GET['pagenum']-1;
								}

								if($_GET['pagenum']==$num_de_paginas_a_desenhar){
									$pag_seguinte =$num_de_paginas_a_desenhar;
								} else{
									$pag_seguinte = $_GET['pagenum']+1;
								}					
							?>
							<a href="index.php?area=loja&filter=rat&pagenum=<?php echo $pag_anterior?>">
								<i id="menu-seta" class="fa fa-chevron-left" aria-hidden="true"></i>
							</a>
						</li>
						
						<?php
							$num_de_paginas_a_desenhar;
							for($i=1;$i<=$num_de_paginas_a_desenhar;$i++){ 	?>

								<li><a href="index.php?area=loja&filter=rat&pagenum=<?php echo $i?>">
											<?php echo $i ?> 							
										</a>
								</li>
							<?php 	
							}			
						?>

						<li>
							<a href="index.php?area=loja&filter=rat&pagenum=<?php echo $pag_seguinte?>">
								<i id="menu-seta" class="fa fa-chevron-right" aria-hidden="true"></i>
							</a>
						</li>
					</ul>
					<?php 
				}
			}

			if($_GET['filter']=='pri'){

				if($num_de_paginas_a_desenhar>1) { ?>
					<ul>
						<li>
							<?php
								if($_GET['pagenum']==1){
									$pag_anterior =1;

								} else {
									$pag_anterior = $_GET['pagenum']-1;
								}

								if($_GET['pagenum']==$num_de_paginas_a_desenhar){
									$pag_seguinte =$num_de_paginas_a_desenhar;
								} else{
									$pag_seguinte = $_GET['pagenum']+1;
								}					
							?>
							<a href="index.php?area=loja&filter=pri&pagenum=<?php echo $pag_anterior?>">
								<i id="menu-seta" class="fa fa-chevron-left" aria-hidden="true"></i>
							</a>
						</li>
						
						<?php
							$num_de_paginas_a_desenhar;
							for($i=1;$i<=$num_de_paginas_a_desenhar;$i++){ 	?>

								<li><a href="index.php?area=loja&filter=pri&pagenum=<?php echo $i?>">
											<?php echo $i ?> 							
										</a>
								</li>
							<?php 	
							}			
						?>

						<li>
							<a href="index.php?area=loja&filter=pri&pagenum=<?php echo $pag_seguinte?>">
								<i id="menu-seta" class="fa fa-chevron-right" aria-hidden="true"></i>
							</a>
						</li>
					</ul>
					<?php 
				}
			}
		

		} else {

			if($num_de_paginas_a_desenhar>1) { ?>
			<ul>
				<li>
					<?php
						if($_GET['pagenum']==1){
							$pag_anterior =1;

						} else {
							$pag_anterior = $_GET['pagenum']-1;
						}

						if($_GET['pagenum']==$num_de_paginas_a_desenhar){
							$pag_seguinte =$num_de_paginas_a_desenhar;
						} else{
							$pag_seguinte = $_GET['pagenum']+1;
						}					
					?>
					<a href="index.php?area=loja&pagenum=<?php echo $pag_anterior?>">
						<i id="menu-seta" class="fa fa-chevron-left" aria-hidden="true"></i>
					</a>
				</li>
				
				<?php
					$num_de_paginas_a_desenhar;
					for($i=1;$i<=$num_de_paginas_a_desenhar;$i++){ 	?>

						<li><a href="index.php?area=loja&pagenum=<?php echo $i?>">
									<?php echo $i ?> 							
								</a>
						</li>
					<?php 	
					}			
				?>

				<li>
					<a href="index.php?area=loja&pagenum=<?php echo $pag_seguinte?>">
						<i id="menu-seta" class="fa fa-chevron-right" aria-hidden="true"></i>
					</a>
				</li>
			</ul>
			<?php 
			} 
		}
	?>	

	</div>
</div>