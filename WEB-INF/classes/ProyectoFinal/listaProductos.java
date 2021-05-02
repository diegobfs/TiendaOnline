package ProyectoFinal;

import ProyectoFinal.Producto;
import java.util.*;

public class listaProductos{

    private Vector<Producto> pr =  new Vector<Producto>();

    public Vector<Producto> getPr(){
        return pr;
    }

    public void setPr (Producto producto){
        pr.add(producto);
    }

    public int tamano (){
        return pr.size();
    }
}