/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import com.google.gson.annotations.SerializedName;

/**
 *
 * @author reyleal
 */
public class Libro {
    @SerializedName("title")
    private String nombreLibro;
    
    @SerializedName("shortDescription")
    private String descripcion;
    
    @SerializedName("longDescription")
    private String sinopsis;

    public Libro(String nombreLibro, String descripcion, String sinopsis) {
        this.nombreLibro = nombreLibro;
        this.descripcion = descripcion;
        this.sinopsis = sinopsis;
    }

    public Libro() {
    }

    public String getNombreLibro() {
        return nombreLibro;
    }

    public void setNombreLibro(String nombreLibro) {
        this.nombreLibro = nombreLibro;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }
    
    
    
}
