
package Servlets;

import Java.Libro;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brandon
 */
public class DetalleServlet extends HttpServlet {
    private Libro libro = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(request.getParameter("comprar") != null) {
                request.setAttribute("libro", libro);
                // Redirect to index
                RequestDispatcher view =
                        request.getRequestDispatcher("Carrito.jsp");
                view.forward(request, response);
            }
        else if(getServletContext().getAttribute("libros") != null) {
            List<Libro> libros = (List) getServletContext().getAttribute("libros");

            
            String nombre = request.getParameter("nombre");
            for(Libro l : libros) {
                if(l.getNombreLibro().equals(nombre)) {
                    libro = l;
                }
            }

            if(libro != null) {
                request.setAttribute("libro", libro);
                // Redirect to index
                RequestDispatcher view =
                        request.getRequestDispatcher("detalle.jsp");
                view.forward(request, response);
            }
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
