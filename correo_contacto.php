<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Contacto</title>
	<style type="text/css">
		p{
			font-family: arial;
			letter-spacing: 1px;
			color: #7f7f7f;
			font-size: 15px;
		}
		a{
			color: #3b74d7;
			font-family: arial;
			text-decoration: none;
			text-align: center;
			display: block;
			font-size: 18px;
		}
		.x_sgwrap p{
			font-size: 20px;
		    line-height: 32px;
		    color: #244180;
		    font-family: arial;
		    text-align: center;
		}
		.x_title_gray {
		    color: #0a4661;
		    padding: 5px 0;
		    font-size: 15px;
			border-top: 1px solid #CCC;
		}
		.x_title_blue {
		    padding: 08px 0;
		    line-height: 25px;
		    text-transform: uppercase;
			border-bottom: 1px solid #CCC;
		}
		.x_title_blue h1{
			color: #0a4661;
			font-size: 25px;
			font-family: 'arial';
		}
		.x_bluetext {
		    color: #244180 !important;
		}
		.x_title_gray a{
			text-align: center;
			padding: 10px;
			margin: auto;
			color: #0a4661;
		}
		.x_text_white a{
			color: #FFF;
		}
		.x_button_link {
		    width: 100%;
			max-width: 470px;
		    height: 40px;
		    display: block;
		    color: #FFF;
		    margin: 20px auto;
		    line-height: 40px;
		    text-transform: uppercase;
		    font-family: Arial Black,Arial Bold,Gadget,sans-serif;
		}
		.x_link_blue {
		    background-color: #307cf4;
		}
		.x_textwhite {
		    background-color: rgb(50, 67, 128);
		    color: #ffffff;
		    padding: 10px;
		    font-size: 15px;
		    line-height: 20px;
		}
	</style>
</head>
<body>
	<table align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff" >
		<tbody>
			<tr>
				<td>
					<div class="x_sgwrap" style="text-align: left;">
						<p>Nueva información recibida de la pagina web.</p>
					</div>
				</td>
			</tr>
			<table align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff" >
				<tr>
					<td>
						<div class="x_sgwrap" style="margin-right:50px;">
							<p>Nombre:</p>
						</div>
					</td>
					<td>
						<div class="x_sgwrap">
							<p><?=$data['nombre']?></p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="x_sgwrap" style="margin-right:50px;;">
							<p>Correo:</p>
						</div>
					</td>
					<td>
						<div class="x_sgwrap">
							<p><?=$data['correo']?></p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="x_sgwrap" style="margin-right:50px;;">
							<p>Celular:</p>
						</div>
					</td>
					<td>
						<div class="x_sgwrap">
							<p><?=$data['celular']?></p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="x_sgwrap" style="margin-right:50px;;">
							<p>Asunto:</p>
						</div>
					</td>
					<td>
						<div class="x_sgwrap">
							<p><?=$data['asunto']?></p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="x_sgwrap" style="margin-right:50px;;">
							<p>Mensaje:</p>
						</div>
					</td>
					<td>
						<div class="x_sgwrap">
							<p><?=$data['mensaje']?></p>
						</div>
					</td>
				</tr>
			</table>
			<tr>
				<td>
					<div class="x_sgwrap" style="text-align: center;">
						<p>Por favor no conteste este correo, es una respuesta automática del servidor.</p>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>