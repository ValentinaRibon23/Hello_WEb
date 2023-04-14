/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unipiloto.metodos.hello;

/**
 *
 * @author Valentina Contreras
 */
public class NameHandler {
    String Nombre;
    String Apellido;
    String dia;
    String mes;
    String anio;

    public NameHandler(String Nombre, String Apellido, String dia, String mes, String año) {
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.dia = dia;
        this.mes = mes;
        this.anio = año;
    }


   

    public NameHandler() {
        this.Nombre=null;
        this.Apellido=null;
        this.dia=null;
        this.mes=null;
        this.anio=null;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    
    
    
    
}
