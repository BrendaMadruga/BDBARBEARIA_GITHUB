<?php
	include_once("conn.php");
	$barbeiro = $_POST['txtbarbeiro'];

	$result_usuario = "INSERT INTO tbbarbeiro(nomebarbeiro) VALUES ('$barbeiro')";
	$resultado_usuario = mysqli_query($conn, $result_usuario);

	if (mysqli_affected_rows($conn) !=0) {
		echo "<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=index.php'>
		<script type=\"text/javascript\">
			alert(\"Cadastrado com sucesso!\");
		</script>
		";
	}else{
		echo"<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=cadastrarbarbeiros.php'>
			<script type=\"text/javascript\">
				alert(\"Não foi possível concluir o cadastro\");
			</script>
		";
	}
?>