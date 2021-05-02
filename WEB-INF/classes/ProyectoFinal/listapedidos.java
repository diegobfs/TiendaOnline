package ProyectoFinal;

import ProyectoFinal.pedido;
import java.util.*;

public class listapedidos{

    private Vector<pedido> listap =  new Vector<pedido>();

    public Vector<pedido> getListap(){
        return listap;
    }

    public void setListap (pedido p){
        listap.add(p);
    }

    public int tamano (){
        return listap.size();
    }
}