/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Java.Libro;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.lang.reflect.Type;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brandon
 */
public class CatalogoServlet extends HttpServlet implements ServletContextListener {
    List<Libro> libros;
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Redirect to index
        RequestDispatcher view =
                    request.getRequestDispatcher("inicio.jsp");
            view.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Catalogo Servlet";
    }
    
    @Override
    public void contextInitialized(ServletContextEvent event) {
        if(event.getServletContext().getAttribute("libros") != null) return;
        
        
        // Inicializar lista de libros
        final Type LIBROS_TYPE = new TypeToken<List<Libro>>() {
}.getType();
        
        Gson gson = new Gson();
        URL url;
        BufferedReader in;
        try {
            url = new URL("https://elasticbeanstalk-us-east-2-422751133175.s3.us-east-2.amazonaws.com/books.json");
            in = new BufferedReader(new InputStreamReader(url.openStream()));
            JsonReader reader = new JsonReader(in);
            
            libros = gson.fromJson(reader, LIBROS_TYPE);
            
            event.getServletContext().setAttribute("libros", libros);
        } catch (MalformedURLException ex) {
            Logger.getLogger(CatalogoServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ioEx) {
            Logger.getLogger(CatalogoServlet.class.getName()).log(Level.SEVERE, null, ioEx);
        }
    }
}
