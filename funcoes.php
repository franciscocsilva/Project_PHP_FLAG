<?php 

	function getEditora($ligacao ,$id_livro){
		$sql = "select * from editoras inner join livros on id_editora = fk_id_editora where id_livro = " .$id_livro;

		$resultado = $ligacao->query($sql);
		$dados = mysqli_fetch_assoc($resultado);
		$nome = $dados["nome_editora"];
		return $nome;
	}

	function getClassificacao($ligacao ,$id_livro){
		$sql = "select * from clientes_classificam_livros inner join livros on id_livro = fk_id_livro where id_livro = " .$id_livro;

		$resultado = $ligacao->query($sql);
		$dados = mysqli_fetch_assoc($resultado);
		$valor = $dados["valor_classificacao"];
		return $valor. "";
	}

	function getMangakas($ligacao, $id_livro){
		$sql = "select * from mangakas_escrevem_livros
		inner join mangakas on id_mangaka = fk_id_mangaka  
		where fk_id_livro =".$id_livro;

		$resultado = $ligacao->query($sql); 
		$lista_de_mangakas=[];

		while ($linha = mysqli_fetch_assoc($resultado)){
			array_push($lista_de_mangakas, $linha["nome_mangaka"]);
		}

		return $lista_de_mangakas;
	}

	function getNomeLivro($ligacao, $id_livro){
		$sql="select * from livros where id_livro =".$id_livro;
		$resultado= $ligacao->query($sql);

		$dados= mysqli_fetch_assoc($resultado);
		$titulo_livro = $dados["titulo_livro"];

		return $titulo_livro;
	}

	function getPrecoLivro($ligacao, $id_livro){
		$sql = "select preco_livro from livros where id_livro=".$id_livro;
		$resultado= $ligacao->query($sql);

		$dados= mysqli_fetch_assoc($resultado);
		$preco_livro = $dados["preco_livro"];

		return $preco_livro;
	}

	function getStockLivro($ligacao, $id_livro){
		$sql = "select stock_livro from livros where id_livro=".$id_livro;
		$resultado= $ligacao->query($sql);

		$dados= mysqli_fetch_assoc($resultado);
		$stock_livro = $dados["stock_livro"];

		return $stock_livro;
	}

	function getCategoria($ligacao, $id_livro){
		$sql = "select * from livros_tem_categorias 
		inner join categorias on id_categoria = fk_id_categoria 
		where fk_id_livro =" .$id_livro;

		$resultado = $ligacao->query($sql); 
		$lista_de_categoria = [];

		while ($linha = mysqli_fetch_assoc($resultado)) {
			array_push($lista_de_categoria, $linha["nome_categoria"]);
		}

		return $lista_de_categoria;
	}

	function getVolume($ligacao, $id_livro){
		$sql = "select volume_livro from livros where id_livro=".$id_livro;
		$resultado= $ligacao->query($sql);

		$dados= mysqli_fetch_assoc($resultado);
		$volume_livro = $dados["volume_livro"];

		return $volume_livro;
	}

	function getISBN($ligacao, $id_livro){
		$sql = "select isbn_livro from livros where id_livro=".$id_livro;
		$resultado= $ligacao->query($sql);

		$dados= mysqli_fetch_assoc($resultado);
		$isbn_livro = $dados["isbn_livro"];

		return $isbn_livro;
	}

	function getCapa($ligacao, $id_livro){
		$sql = "select capa_livro from livros where id_livro=".$id_livro;
		$resultado= $ligacao->query($sql);

		$dados= mysqli_fetch_assoc($resultado);
		$capa_livro = $dados["capa_livro"];

		return $capa_livro;
	}


	function getListaCategorias($con){
		
		$sql= "select * FROM categorias ORDER BY categorias.nome_categoria ASC";

		$resultado = $con->query($sql);
		$lista_de_categoria = [];

		while($linha = mysqli_fetch_assoc($resultado)) {
			array_push($lista_de_categoria, $linha["nome_categoria"]);
			
		}

		return $lista_de_categoria;						
	}

	function getListaEditoras($con){
		
		$sql= "select * FROM editoras ORDER BY editoras.nome_editora ASC";

		$resultado = $con->query($sql);
		$lista_de_editora = [];

		while($linha = mysqli_fetch_assoc($resultado)) {
			array_push($lista_de_editora, $linha["nome_editora"]);
			
		}

		return $lista_de_editora;						
	}

	function getListaMangakas($con){

		$sql = "select * FROM mangakas ORDER BY mangakas.nome_mangaka ASC";

		$resultado = $con->query($sql);
		$lista_de_mangaka = [];

		while($linha = mysqli_fetch_assoc($resultado)) {
			array_push($lista_de_mangaka, $linha["nome_mangaka"]);
		}

		return $lista_de_mangaka;
	} 

	function getClassFromLivro($con,$id){

		$sql = "select * from clientes_classificam_livros where fk_id_livro = ".$id;

		$res=$con->query($sql);

		$num_reg = $res->num_rows;

		$soma=0;

		while($linha= mysqli_fetch_assoc($res)){
			$soma= $soma + $linha['valor_classificacao'];
		}

		$media = $soma / $num_reg;

		return $media;
	}	
		
?>

