package ProyectoFinal;

public class Producto{

    private String nombre;
    private Float precio;
    private int stock;
    private String imagen;

    public String getNombre(){
        return nombre;
    }

    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public Float getPrecio (){
        return precio;
    }

    public void setPrecio (Float precio){
        this.precio = precio;
    }

    public int getStock(){
        return stock;
    }

    public void setStock(int stock){
        this.stock = stock;
    }

    public String getImagen(){
        return imagen;
    }

    public void setImagen(String imagen){
        this.imagen = imagen;
    }
}