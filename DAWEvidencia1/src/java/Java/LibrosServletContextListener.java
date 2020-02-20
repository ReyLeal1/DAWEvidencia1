/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author Brandon
 */
public class LibrosServletContextListener implements ServletContextListener {
    private List<Libro> libros;
    
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
        } catch (IOException ioEx) {
            Logger.getLogger(LibrosServletContextListener.class.getName())
                    .log(Level.SEVERE, null, ioEx);
        }
    }
}
