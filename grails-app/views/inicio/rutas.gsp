<!DOCTYPE html>
<html>
<head>
<title>Rutas</title>
<meta charset="utf-8">
<script src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/js/jquery.tools.min.js"></script>
<link rel="stylesheet" href="${resource(dir:'css',file:'reset.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir:'css',file:'styl.css')}" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
</head>
<body>
<div id="header">
  <div id="header_in">
    <h1><a href="inicio.gsp"> <a href="inicio.gsp"><asset:image  src="UNViajante.PNG" alt="Generic placeholder imag" width="155px" height="70px" /></a></h1></a></h1>
    <div id="menu">
      <ul>
        <li><a href="inicio.gsp">Inicio</a></li>
        <li><a href="rutas.gsp" class="active">Rutas</a></li>
        <li><a href="nosotros.gsp">Nosotros</a></li>
      </ul>
    </div>
  </div>
</div>
<div id="main_part_inner">
  <div id="main_part_inner_in">
    <h2>Rutas Intermunicipales</h2>
  </div>
</div>
<div id="content_inner">
<%--  <h3>Leave a message</h3>--%>
<%--  <form action="#" method="post" class="formit">--%>
<%--    <input type="text" name="name" placeholder="YOUR NAME">--%>
<%--    <input type="text" name="email" placeholder="EMAIL">--%>
<%--    <input type="text" name="url" placeholder="WEBSITE (OPTIONAL)">--%>
<%--    <textarea name="message" placeholder="Leave your message here..."></textarea>--%>
<%--    <input type="submit" class="button_submit" value="SEND A MESSAGE">--%>
<%--  </form>--%>
<%--  <div class="cara"></div>--%>
<%--  <h3>Contact information</h3>--%>
<%--  <div class="contactinfo"> <span class="ico_mapmark"><b>15th Avenue, 15 362, San Francisco</b></span> </div>--%>
<%--  <div class="contactinfo"> <span class="ico_message"><b>email@domain.com</b></span> </div>--%>
<%--  <div class="contactinfo"> <span class="ico_iphone"><b>(+123) 456 789 012</b></span> </div>--%>
<%--  <hr class="cleanit">--%>

  <div class="mapit">
    <iframe width="938" height="360" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=San+Francisco,+CA,+United+States&amp;aq=0&amp;oq=san+f&amp;sll=37.0625,-95.677068&amp;sspn=45.553578,93.076172&amp;ie=UTF8&amp;hq=&amp;ll=37.77493,-122.419416&amp;z=14&amp;output=embed"> </iframe>
  </div>
</div>
<hr class="cleanit">
<div id="footer">
  <div id="footer_in">
    <p>Copyright &copy; 2045 <a href="#">Site Name</a>. All Rights Reserved</p>
    <span>Design By: <a href="http://ries.cz">Vil&eacute;m Ries</a></span></div>
</div>
<script>
$(function () {
    $("ul.controls").tabs("div.testimonials > div");
});
</script>
</body>
</html>