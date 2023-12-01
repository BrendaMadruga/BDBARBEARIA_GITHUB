<?php
	include_once("conn.php");
	$data = $_POST['txtdataatendimento']; 
	$hora = $_POST['txthoraatendimento'];

	$result_usuario = "INSERT INTO tbatendimento(dataatendimento, horaatendimento) VALUES ('$data','$hora')";
	$resltado_usuario = mysqli_query($conn, $result_usuario);

	if (mysqli_affected_rows($conn) !=0) {
		echo "<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=index.php'>
			<script type=\"text/javascript\">
				alert(\"Marcado com sucesso!\");
			</script>
		";
	}else{
		echo "<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=marcaratendimentos.php'>
			<script type=\"text/javascript\">
				alert(\"Não foi possível marcar o seu atendimento\");
			</script>
		";
	}
?>