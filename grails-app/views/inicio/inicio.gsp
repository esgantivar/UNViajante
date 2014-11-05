<!DOCTYPE html>
<html>
<head>
<title>UNViajante</title>
<meta charset="utf-8">
<script src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/js/jquery.tools.min.js"></script>
<link rel="stylesheet" href="https://dl.dropboxusercontent.com/u/49936729/UNViajante/styles/reset.css" type="text/css">
<link rel="stylesheet" href="https://dl.dropboxusercontent.com/u/49936729/UNViajante/styles/styl.css" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
</head>
<body>
<div id="header">
  <div id="header_in">
    <h1>
    <a href="inicio.gsp"> <img style="width: 155px; height: 70px;" src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/img/UNViajante.PNG"></img></a></h1>
    <div id="menu">
      <ul>
        <li><a href="inicio.gsp" class="active">Inicio</a></li>
        <li><a href="rutas.gsp">Rutas</a></li>
        <li><a href="nosotros.gsp">Nosotros</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="main_part">
  <div id="main_part_in">
    <h2>TRANSPORTE INTERMUNICIPAL INTELIGENTE</h2>
    <p>TU AMIGO EN LA VIA</p>
  </div>
 <div class="button_main">
	    <div class="pxline"></div>
	    <a href="rutas.gsp" class="button_dark"><strong>TUS RUTAS!</strong></a> </div>
		</div>
<div id="content">
  <div class="thirds">
    <h3>¿Qué es UNViajante?</h3>
    <p>UNViajante es una aplicacion WEB diseñada y desarrollada para la facilidad de consulta de rutas intermunicipales en Colombia</p>
  </div>
  <div class="thirds">
    <h3>¿Como puedes consultar tu ruta?</h3>
    <p>Unicamente dale click a tu origen y destino y encontraras facilmente distintas opciones de Viaje</p>
  </div>
  <div class="thirds">
    <h3>Legalidad</h3>
    <p>Somos una iniciativa independiente y usamos la información pública del sistema</p>
  </div>
  <hr class="cleanit">

<hr class="cleanit">
<div id="footer">
  <div id="footer_in">
    <p>Copyright &copy; 2014 <a href="#">UNViajante</a>. Todos los Derechos reservados</p></br>
    <p>UNViajante no se hace responsable de la información aquí presentada</p>
    <span>Design By: <a href="http://ries.cz">Vil&eacute;m Ries</a></span></div>
</div>
<script>
$(function () {
    $("ul.controls").tabs("div.testimonials > div");
});
</script>
</body>
</html>