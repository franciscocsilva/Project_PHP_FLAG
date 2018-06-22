<div class="registo">
	<h2 class="reg-header">Register</h2>

	<form action="registo-concluido.php" method="post" class="reg-form">
		<ul>
			<li><input type="text" name="nome" placeholder="First Name"></li>
			<li> <input type="text" name="apelido" placeholder="Last Name"></li>
			<li><input type="email" name="email" placeholder="Email"></li>
			<li><input type="Password" name="pass"  placeholder="Password"></li>
			<li><input type="Address" name="morada"  placeholder="Address"></li>		
			<li><input type="text" name="cp1"  placeholder="ZIP / Postal Code" class="cp-input"> - <input type="text" name="cp2"  placeholder="" class="cp-input"></li>			
			<li><input placeholder="Date of Birth" class="textbox-n" type="text" onfocus="(this.type='date')"  name="data_nascimento"></li>
			<li><input type="submit" name="registar" class="reg-enviar" value="Submit"></li>
		</ul>
	</form>
</div>