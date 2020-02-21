<%-- 
    Document   : detalle
    Created on : 20-feb-2020, 11:52:13
    Author     : Brandon
--%>

<%@page import="Java.Usuario"%>
<%@page import="Java.Libro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! Libro libro; %>
<!DOCTYPE html>
<html>
    <% libro = (Libro) request.getAttribute("libro"); %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="diseno/style.css" rel="stylesheet">
        <title>Libro - <%= libro.getNombreLibro() %></title>
    </head>
    <body>
        <header class="header">
            <div class="container logo-nav-container">
                <a href="#" class="logo"><img src="images/logo.png" height="80" width="80" /></a>
                <%
                    if(session.getAttribute("user") != null){
                             Usuario usuario = (Usuario) session.getAttribute("user");
                        
                        out.print(String.format("<h4>Bienvenido: %s", usuario.getNombre()));
                        out.print("</h4>");
                        }
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
                
        <main class='cuerpo'>
        <div class="container">
            <div style='display: flex; align-items: flex-start'>
                <div><img src="<%= libro.getImagenUrl() %>"></div>
                <div style='display: inline'><h1><%= libro.getNombreLibro() %></h1>
                <h3><%= libro.getDescripcion() %></h3></div>
            </div>
        
        
            <p><b>Sinopsis:</b> <%= libro.getSinopsis() %></p>
            
            <button class='aceptar'>Comprar</button>
        </div>
        
        <div></div>
        </main>
        
        <footer class="footer">
            <div class="container">
                <p>Página del Brandon</p>
                <p>Todos los derechos reservados</p>
            </div>
        </footer>
    </body>
</html>
