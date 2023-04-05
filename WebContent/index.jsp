<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="Style.css">
   

</head>
<body>
 <header>
        <a href="#" class="logo"><span>B</span>ibliothéque</a>
        <div class="menutoggle"></div>
        <ul class="navbar">
            <li><a href="#baniere"> 
     <c:if loginS="${!empty sessionScope.username }">
         ${ sessionScope.username }
         </c:if>
    </a></li>
             <li><a href="./MenuS">Menu</a></li>
            <li><a href="./ListServelet">Ma liste</a></li>
            <li><a href="#contact">Contact Us</a></li>
            <li><a href="./LogoutServlet">Logout</a> </li>
             
        </ul>
    </header>
      <section class="baniere" id="baniere">
        <div class="contenu">
            <h2>Decouvrir Ce monde </h2>
            <p>Bien-venus,<br>
                vous pouvez trouver tout les genres et les types.<br>chercher et commander pour votre besoins  </p>
            <a href="./MenuS" class="btn1">Menu</a> 
        </div>
    </section>
        <section class="contact" id="contact">
    <div class="titre noir">
       <h2 class="titre-text"><span>C</span>ontact</h2> 
       <p class="color" >vous pouvez nous contacter ici</p>   
    </div>
    <div class="contactform"><h3>Envoyer un message</h3>
    <div class="inputboite">
        <input type="text" placeholder="Nom">
    </div>
    <div class="inputboite">
    <input type="text" placeholder="email">
   </div> 
   <div>
    <textarea placeholder="message"></textarea>
   </div>
   <div class="inputboite">
       <input type="submit" value="envoyer">
   </div>
   
</div>
</section>
</body>
</html>