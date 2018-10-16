<?php
	
	require 'conexion.php';
	
	$Clave_articulo = $_POST['Clave_articulo'];
	$Nombre = $_POST['Nombre'];
	$Precio = $_POST['Precio'];
	$Clave_fabricante = $_POST['Clave_fabricante'];
	

	
	$sql = "UPDATE articulos SET  Nombre='$Nombre', Precio='$Precio', Clave_fabricante='$Clave_fabricante' WHERE Clave_articulo = '$Clave_articulo'";
	$resultado = $mysqli->query($sql);
	
?>

<html lang="es">
	<head>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap-theme.css" rel="stylesheet">
		<script src="js/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>	
	</head>
	
	<body>
		<div class="container">
			<div class="row">
				<div class="row" style="text-align:center">
					<?php if($resultado) { ?>
						<h3>Su registro fue modificado exitosamente</h3>
						<?php } else { ?>
						<h3>ERROR AL MODIFICAR</h3>
					<?php } ?>
					
					<a href="index.php" class="btn btn-primary">Regresar</a>
					
				</div>
			</div>
		</div>
	</body>
</html>
