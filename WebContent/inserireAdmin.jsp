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
Boolean auth = (Boolean) session.getAttribute("auth");
Studente s = (Studente) session.getAttribute("utente");

if(auth==null || !auth || !s.isIsAdmin()) {
	response.sendRedirect("restricted.jsp");
}

%>   

<div class="row">
  <div class="left" style="background-color:#ddd;">
    <h2>Area Admin</h2>  
    <ul id="myMenu">
   <li><a href="inserireAdmin.jsp">Inserisci Admin</a></li>
      <li><a href="rimuoviadmin.jsp">Rimuovi Admin</a></li>
      <li><a href="sospendiUtente.jsp">Sospendi Utente</a></li>
      <li><a href="gestionePreferenze.jsp">Aggiorna Preferenze</a></li>
      <li><a href="LogoutServlet">Logout</a></li>
    </ul>
  </div>
  
  <div class="right" style="background-color:#005999;">
        <h1 class="titolo">Inserisci Admin</h1>
    
	
		<div id="div-addAdmin">
	
		<form action="InserisciAmministratoreServlet" method=get>
				<p> Username</p>
			<input type="text" id="username" name="username" placeholder="Inserisci.."><br>
			
			
			<button id="submitAddAdmin">Aggiungi</button>
			
		</form>
	
	
	</div>
 	
  </div>
</div>

<%@include file="footer.jsp"%>
</body>
</html>


