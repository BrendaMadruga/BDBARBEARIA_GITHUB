<!DOCTYPE html>
<html>
	<head>
		<title>Cadastro barbeiro</title>
		<meta charset="utf-8"/>
	</head>
	<body>
		<?php
			include_once("conn.php");
		?>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<center>
			<fieldset style="width: 390px ;">
				<form method="POST" action="processa_cad_barbeiro.php">
					<h1>Cadastro dos Barbeiros</h1>
					Nome: <input type="tetx" name="txtbarbeiro"/><br/><br>

					<input type="submit" name="Cadstrar" id="Cadstrar" value="Cadstrar"/>
				</form>
			</fieldset>
		</center>
	</body>
</html>