<%-- 
    Document   : Carrito
    Created on : 20/02/2020, 08:10:27 PM
    Author     : reyleal
--%>

<%@page import="Java.Libro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! Libro libro; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
         <% libro = (Libro) request.getAttribute("libro");%>
        <style>
            hi{
                color: black;
                text-align: left;
                background-color: yellow;
            }
            
        </style>
        <h1>Tu Carrito</h1>
        
        <div><img src="<%= libro.getImagenUrl() %>"></div>
        <p>
           
            <form  name="f" method="get" action="Carrito.do" >
            <input type="submit" value="cobro" name="cobro">
           </form>
        
            <form  name="f" method="post" action="Carrito.do" >
            <button type="submit" value="return" name="evi" href="inicio.jsp" >Regresar </button>
            </form>
        </p><br>
        
        
    </body>

</html>
