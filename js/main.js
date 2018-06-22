function abreMenu(){
	var menuMais = document.getElementById("lista-categorias");
	
	if (menuMais.style.display=="none" || menuMais.style.display==""){
		menuMais.style.display="block";
	} else {
		menuMais.style.display="none";
	}
}

function abreMenu2(){
	var menuMais = document.getElementById("lista-editoras");
	
	if (menuMais.style.display=="none" || menuMais.style.display==""){
		menuMais.style.display="block";
	} else {
		menuMais.style.display="none";
	}
}


$(document).ready(function(){
  $('.slidder-1').slick({
  		autoplay:true,
  		autoplaySpeed: 4000,
  		fade:true,
  		pauseOnHover:false,
  		centerMode: true,
  		arrows: false,
  		dots: true,
	});
});

/*
function enviar(){
    var email = document.getElementById("email").value;

    if (email!=""){
          window.location="yourpath";
     }
}
*/
