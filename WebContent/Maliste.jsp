<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ma liste</title>
<link rel="stylesheet" href="tableliste.css">
</head>
<body>
         <%@ page import="java.sql.ResultSet"%>  
                        	<h2 class="titre">
				          <span>Ma</span>liste
			                  </h2>
			                  <form action="Searsh" method="POST">
	                             <div class="wrap">
                                      <div class="search">
                                  <input type="text" name="search" class="searchTerm" placeholder="What are you looking for?">
                                         <button type="submit" class="searchButton">
                                          </button>
                                      </div>
                                   </div>
                               </form>
                <table class="heading">
                                <thead>
                                    <tr>
                                        
                                        <th scope="col">Image</th>
                                        <th scope="col">name</th>
                                        <th scope="col">PDF</th>
                                        <th scope="col">Remove</th>
                                    </tr>
                                </thead>
                                <tbody>
         
                                 <%  
                                 
                                 ResultSet s = (ResultSet) request.getAttribute("DATA");
                                 if (s!= null && !s.isClosed()) {

                                  // Iterate over the ResultSet rows and display the data in a table
                                 while (s.next()) {
                                      %>
                               <tr>
                          
                          <td "car-name"><img src="./images/<%=s.getString(3)%>" alt="image"></td>
                          <td><%=s.getString(2)%></td>
                          <td> <a href="./PDF/<%=s.getString(4)%>">LIRE</a></td>
                          <td><form action="Deletfromlist" method="POST">
                        <input type="hidden" name="Booksid" value="<%=s.getString(1)%>">
                        <input  class="btn" type="submit" value="REMOVE">
                    </form></td>
                               </tr>
        <%
        
                                 }
                                 
                             } else {
                                 // Handle the case where the ResultSet is null or closed
                                 out.println("No data to display.");
                             }
                             %>          
                                </tbody>
                            </table>
</body>
</html>