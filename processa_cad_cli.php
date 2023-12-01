<?php
	include_once("conn.php");
	$cliente = $_POST['txtnomecli'];
	$telefone = $_POST['txttelefonecli'];
	$celular = $_POST['txtcelularcli'];
	$emaill = $_POST['txtemailcli'];

	$result_usuario = "INSERT INTO tbcliente(nomecli, telefonecli, celularcli, emailcli) VALUES ('$cliente','telefone','celular','email')";
	$resultado_usuario = mysqli_query($conn, $result_usuario);

	if(mysqli_affected_rows($conn) != 0){
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0;URL=index.php'>
		<script type=\"text/javascript\">
			alert(\"Cadastro realizado com sucesso!\");
		</script>
		";
	}else{
		echo "<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=cadastrarclientes.php>
		<script type=\"text/javascript\">
			alert(\"Não foi possível cadastrar o cliente\");
		</script>
		";
	}
?>