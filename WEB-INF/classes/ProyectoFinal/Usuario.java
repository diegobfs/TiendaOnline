package ProyectoFinal;

import java.io.Serializable;

public class Usuario implements Serializable {

    private String nombre;
    private String contrasena;

    public String getNombre(String nombre){
        return nombre;
    }

    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public String getContrasena (String contrasena){
        return contrasena;
    }

    public void setContrasena (String contrasena){
        this.contrasena = contrasena;
    }
}