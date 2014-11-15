<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<meta charset="utf-8">
	<head >
		<title><g:layoutTitle default="UNViajante"/></title>
<%--		<asset:stylesheet src="application.css"/>--%>
<%--		<asset:javascript src="application.js"/>--%>
<%--		<asset:stylesheet src="reset.css"/>--%>
<%--		<asset:javascript src="styl.js"/>--%>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'styl.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'fonts.css')}" type="text/css">
<%--		<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>--%>
		<g:layoutHead/>
	</head>
	<body>
		
		<div id="header">
		  <div id="header_in">
		    <h1>
		    <a href="inicio.gsp"><asset:image  src="UNViajante.PNG" alt="Generic placeholder imag" width="155px" height="70px" /></a></h1>
			
		    <div id="menu">
		      <ul>
		        <li><a href="inicio.gsp" class="active">Inicio</a></li>
		        <li><a href="/UNViajante/route">Rutas</a></li>
		        <li><a href="comentarios.gsp">Comentarios</a></li>
		        <li><a href="nosotros.gsp">Nosotros</a></li>
		      </ul>
		    </div>
		  </div>
		</div>
		
		<g:layoutBody/>
<%--		<div class="footer" role="contentinfo"><p></p></div>--%>
<%--		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>--%>
		<div id="footer">
		  <div id="footer_in">
		    <p>Copyright &copy; 2014 <a href="#">UNViajante</a>. Todos los Derechos reservados</p></br>
		    <p>UNViajante no se hace responsable de la información aquí presentada</p>
		    <span>Design By: <a href="http://ries.cz">Vil&eacute;m Ries</a></span></div></br></br>
		    <p>Síguenos en:
		    <a href="https://www.facebook.com/ViajanteCol" target = "_blank"><asset:image src="facebook.png" alt="Facebook"/></a>
		    <a href="https://www.twitter.com/ViajanteCol" target = "_blank"><asset:image src="twitter.png" alt="Twitter"/></a>
		    </p> 
		</div>
	</body>
</html>
