<%-- 
    Document   : inicio
    Created on : 19/02/2020, 05:47:34 PM
    Author     : DAVID
--%>

<%@page import="Java.Usuario"%>
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
                    if(session.getAttribute("usuarios") != null){
                        request.getRequestDispatcher("inicio.jsp");
                        if(session.getAttribute("user") != null){
                             Usuario usuario = (Usuario) session.getAttribute("user");
                        
                        out.print(String.format("<h4>Bienvenido: %s", usuario.getNombre()));
                        out.print("</h4>");
                        }
                       
                        
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
        <main class="cuerpo">
            <div class="container">
                <h1>Catalogo</h1>
                <form method="POST" action="Detalle.do">
                <%
                    if(getServletContext().getAttribute("libros") != null) {
                        List<Libro> libros =
                                (List<Libro>) getServletContext().getAttribute("libros");
                        
                        for(Libro libro : libros) {
                            out.print(String.format("<button type='submit'"
                                    + "name='nombre' value='%s'>",
                                    libro.getNombreLibro()));
                            out.print(String.format("<img src='%s'"
                                    + " class='thumbnail'>", libro.getImagenUrl()));
                            out.print("</button>");
                        }
                    }
                %>
                </form>
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
