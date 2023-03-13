<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Style.css">
<title>Insert title here</title>
</head>
<body>

	<%@ page import="java.sql.ResultSet"%>

	<section class="Expert" id="expert">
		<div class="titre">
			<h2 class="titre-texte">
				<span>M</span>enu
			</h2>
			<p>Voici Quelque écrivain des livre dans notre bibliothéque</p>
		</div>
		<div class="contenu">
		<%
		ResultSet rs = (ResultSet) request.getAttribute("data");
		while(rs.next()) {
		%>
			<div class="box">
				<div class="imbox">
					<img src="./images/<%=rs.getString(3)%>" alt="image">
				</div>
				<p><%=rs.getString(2)%></p>
				    
             <form action="listeS" method="POST">
                        <input type="hidden" name="Booksid" value="<%=rs.getString(1)%>">
                        <input  class="btn" type="submit" value="Ajouter">
                    </form>
                 
				
			</div>
		<%
		}
		%>
		</div>
		<div class="titre">
			<a href="#" class="btn1">Voir plus</a>
		</div>
	</section>

</body>
</html>