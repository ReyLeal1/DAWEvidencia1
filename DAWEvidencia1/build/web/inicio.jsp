<%-- 
    Document   : inicio
    Created on : 19/02/2020, 05:47:34 PM
    Author     : DAVID
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Java.Libro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="diseno/style.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="header">
            <div class="container logo-nav-container">
                <a href="#" class="logo"><img src="images/logo.png" height="80" width="80" /></a>
                <%
                    
                 %>
                <nav class="navigation">
                    <ul>
                    <li><a href="inicio.jsp">Inicio</a></li>
                    <li><a href="registro.jsp">Registro</a></li>
                    <li><a href="iniciarSesion.jsp">Inicio Sesión</a></li>
                    <li><a href="#">Carrito de Compra</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <main class="cuerpo">
            <div class="container">
                <h1>Catalogo</h1>
                
                <%
                    if(getServletContext().getAttribute("libros") != null) {
                        List<Libro> libros =
                                (List<Libro>) getServletContext().getAttribute("libros");
                        
                        for(Libro libro : libros) {
                            out.print("<h2>");
                            out.print(libro.getNombreLibro());
                            out.print("</h2>");
                            out.print(libro.getDescripcion());
                            out.print("<br>");
                            out.print("<br>");
                        }
                    }
                %>
            </div>
        </main>
        <footer class="footer">
            <div class="container">
                <p>Página del Rey</p>
                <p>Todos los derechos reservados</p>
            </div>
        </footer>
    </body>
</html>
