
package Servlets;

import Java.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Registro extends HttpServlet {
    
    public Registro(){
        super();
    }



    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registro</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registro at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
    }
    List<Usuario> usuarios = new ArrayList<>();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombreUsuario = request.getParameter("nombreusuario");
        String contrasena = request.getParameter("contrasena");
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("celular");
        
        HttpSession session = request.getSession();
        
        
        usuarios.add(new Usuario(nombreUsuario,contrasena, nombre, correo, direccion, telefono));
        
        session.setAttribute("usuarios", usuarios);
        
        request.getRequestDispatcher("inicio.jsp").forward(request, response);

        

    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
