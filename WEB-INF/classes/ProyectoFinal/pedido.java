package ProyectoFinal;

public class pedido{

    private String nombre;
    private Float precio;
    private int cantidad;

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

    public int getCantidad(){
        return cantidad;
    }

    public void setCantidad(int cantidad){
        this.cantidad = cantidad;
    }
}