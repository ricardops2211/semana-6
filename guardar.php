<?php
	
	require 'conexion.php';
	
	$Clave_articulo = $_POST['Clave_articulo'];
	$Nombre = $_POST['Nombre'];
	$Precio = $_POST['Precio'];
	$Clave_fabricante = $_POST['Clave_fabricante'];
	
	$sql = "INSERT INTO articulos (Clave_articulo, Nombre, Precio, Clave_fabricante) VALUES ('$Clave_articulo','$Nombre', '$Precio', '$Clave_fabricante')";
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
						<h3>El registro fue almacenado exitosamente</h3>
						<?php } else { ?>
						<h3>ERROR AL GUARDAR</h3>
					<?php } ?>
					
					<a href="index.php" class="btn btn-primary">Regresar</a>
					
				</div>
			</div>
		</div>
	</body>
</html>
