<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main2"/>
<title>UNViajante</title>
<%--<meta charset="utf-8">--%>
<script src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/js/jquery.tools.min.js"></script>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">--%>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'styl.css')}" type="text/css">--%>
<%--<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>--%>
</head>
<body>
<%--<div id="header">--%>
<%--  <div id="header_in">--%>
<%--    <h1>--%>
<%--    <a href="inicio.gsp"><asset:image  src="UNViajante.PNG" alt="Generic placeholder imag" width="155px" height="70px" /></a></h1>--%>
<%--	--%>
<%--    <div id="menu">--%>
<%--      <ul>--%>
<%--        <li><a href="inicio.gsp" class="active">Inicio</a></li>--%>
<%--        <li><a href="/UNViajante/route">Rutas</a></li>--%>
<%--        <li><a href="/UNViajante/route">Comentarios</a></li>--%>
<%--        <li><a href="/UNViajante/inicio/nosotros.gsp">Nosotros</a></li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>
<div id="main_part">
  <div id="main_part_in">
    <h2>TRANSPORTE INTERMUNICIPAL INTELIGENTE</h2>
    <p>TU AMIGO EN LA RUTA</p>
  </div>
 <div class="button_main">
	    <div class="pxline"></div>
	    <a href="/UNViajante/route" class="button_dark"><strong>TUS RUTAS!</strong></a> </div>
		</div>
<div id="content">
  <div class="thirds">
    <h3>¿Qué es UNViajante?</h3>
    <p>UNViajante es una aplicacion WEB diseñada y desarrollada para la facilidad de consulta de rutas intermunicipales en Colombia</p>
  </div>
  <div class="thirds">
    <h3>¿Como puedes consultar tu ruta?</h3>
    <p>Unicamente selecciona tu origen y destino y encontraras facilmente distintas opciones de Viaje</p>
  </div>
  <div class="thirds">
    <h3>Legalidad</h3>
    <p>Somos una iniciativa independiente y usamos la información pública del sistema</p>
  </div>
  <hr class="cleanit">

<hr class="cleanit">
<%--<div id="footer">--%>
<%--  <div id="footer_in">--%>
<%--    <p>Copyright &copy; 2014 <a href="#">UNViajante</a>. Todos los Derechos reservados</p></br>--%>
<%--    <p>UNViajante no se hace responsable de la información aquí presentada</p>--%>
<%--    <span>Design By: <a href="http://ries.cz">Vil&eacute;m Ries</a></span></div>--%>
<%--</div>--%>
<script>
$(function () {
    $("ul.controls").tabs("div.testimonials > div");
});
</script>
</body>
</html>