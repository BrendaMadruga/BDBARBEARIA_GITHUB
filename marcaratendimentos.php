<!DOCTYPE html>
<html>
	<head>
		<title>Marcar atendimento</title>
		<meta charset="utf-8"/>
	</head>
	<body>
		<?php
			include_once("conn.php");
		?>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<center>
			<fieldset style="width: 390px ;">
				<form method="POST" action="peocessa_mar_atendimento.php">
					<h1>Marcar Atendimentos</h1>
					&nbsp;&nbsp;Data do atentimento: <input type="text" name="txtdataatendimento"/><br/><br/>
					Hora do Atendimento: <input type="tetx" name="txthoraatendimento"/><br/><br/>

					<input type="submit" name="Marcar" id="Marcar" value="Marcar"/>
				</form>
			</fieldset>
		</center>
	</body>
</html>