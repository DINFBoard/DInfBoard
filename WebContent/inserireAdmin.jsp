<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.PJO.Studente"%>
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Profilo - DInfBoard</title>
	<link rel="stylesheet" href="css/profiloAdmin.css">
	
</head>

<body>

<%@include file="header.jsp"%>

<%

if(auth==null || !auth || utente==null ) {
	response.sendRedirect("login.jsp");
}else{
	if(!utente.isIsAdmin())		response.sendRedirect("login.jsp");

}
%>   

<div class="row">
  <div class="left" style="background-color:#ddd;">
    <h2>Area Admin</h2>  
    <ul id="myMenu">
      <li><a href="#">Inserisci Admin</a></li>
      <li><a href="#">Rimuovi Admin</a></li>
      <li><a href="sospendiUtente.jsp">Sospendi Utente</a></li>
      <li><a href="#">Aggiorna Preferenze</a></li>
      <li><a href="LogoutServlet">Logout</a></li>
    </ul>
  </div>
  
  <div class="right" style="background-color:#005999;">
        <h1 class="titolo">Inserisci Admin</h1>
    
	
		<div id="div-addAdmin">
	
		<form action="InserisciAmministratoreServlet" method=get>
				<p> Username</p>
			<input type="text" id="username" name="username" placeholder="Inserisci.."><br>
			<p> E-mail</p>
			<input type="email" id="email" name="email" placeholder="Inserisci.."><br>
			<p> Password</p>
			<input type="password" id="password" name="password" placeholder="Inserisci.."><br>
			<p> Nome</p>
			<input type="text" id="nome" name ="nome" placeholder="Inserisci.."><br>
			<p> Cognome</p>
			<input type="text" id="cognome" name="cognome" placeholder="Inserisci.."><br>
			
			<button id="submitAddAdmin">Aggiungi</button>
			
		</form>
	
	
	</div>
 	
  </div>
</div>

<%@include file="footer.jsp"%>
</body>
</html>

