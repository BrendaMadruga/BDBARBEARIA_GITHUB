<!DOCTYPE html>
<html>
	<head>
		<title>cadastrar clientes</title>
		<meta charset="utf-8"/>
	</head>
	<body>
		<?php
			include_once("conn.php");
		?>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<center>
			<fieldset style="width: 390px ;">
				<form method="POST" action="processa_cad_cli.php">
					<h1>Cadastro dos clientes:</h1>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nome: <input type="text" name="txtnomecli"/><br/><br/>
					Telefone: <input type="text" name="txttelefonecli"/><br/><br/>

					&nbsp;&nbsp;&nbsp;Celular: <input type="text" name="txtcelularcli"/><br/><br/>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email: <input type="text" name="txtemailcli"/><br/><br/><br/>

					<input type="submit" name="Cadastrar" id="Cadastrar" value="Cadastrar"/>
				</form>
			</fieldset>
		</center>
	</body>
</html>