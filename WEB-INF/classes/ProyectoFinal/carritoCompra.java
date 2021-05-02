package ProyectoFinal;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.PreparedStatement;
import java.io.InputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.Properties;
import javax.servlet.ServletContext;
import java.sql.Connection;
import java.util.*;
import java.util.Vector;

import ProyectoFinal.Producto;
import ProyectoFinal.listaProductos;
import ProyectoFinal.pedido;
import ProyectoFinal.listapedidos;
import ProyectoFinal.GestorBD;

public class carritoCompra extends HttpServlet {

    public Producto prelegido (listaProductos lista, Producto pr, HttpServletRequest request, HttpServletResponse response, HttpSession session){
        int numero = 0;
        //Averiguamos que elemento ha sido elegido
        if (lista.tamano()!=0){
            for (int i=0; i<lista.tamano(); i++){
                if (request.getParameter(lista.getPr().elementAt(i).getNombre()) != null){
                    numero = i;
                }
            }
            pr = lista.getPr().elementAt(numero);
        }
        //Una vez que sabemos quien se eligio extraemos sus datos
        return pr;
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //Iniciamos la sesion
        HttpSession session = request.getSession();

        if (request.getParameter("visualizar") == null){
            Producto pr = new Producto();
            pedido pedidoactual = new pedido();

            //Variable que almacena todos los productos
            listaProductos lista = new listaProductos();
            //variable que almacena los pedidos
            listapedidos pedidorealizado = new listapedidos();

            //Guardamos de los productos de la sesion
            lista = (listaProductos) session.getAttribute("lp"); 

            try {
                pedidorealizado = (listapedidos) session.getAttribute("productosElegido");
		    } catch (NullPointerException ex) {
			
		    }

            //Comprobamos si existe la sesion de productos elegidos, si no la creamos
            if (pedidorealizado == null){
                pedidorealizado = new listapedidos();
                session.setAttribute("productosElegido", pedidorealizado);
            }

            //Guardamos los productos elegidos
            pr = prelegido(lista, pr, request, response, session);
            //Guardamos la cantidad
            String cant = request.getParameter("cant");
            if (pr != null && cant != null){
                pedidoactual.setNombre(pr.getNombre());
                pedidoactual.setPrecio(pr.getPrecio());
                pedidoactual.setCantidad(Integer.parseInt(cant));
                pedidorealizado.setListap(pedidoactual);
            }



            //Metodo eliminar
            for (int i = 0; i < pedidorealizado.tamano(); i++){
			    String idactual = request.getParameter(Integer.toString(i));
			    if (idactual != null){
				    pedidorealizado.getListap().removeElementAt(i);
			    }
		    }

            //Actualizamos la sesion
            session.setAttribute("productosElegido", pedidorealizado);
        } else {
            //Variable que almacena todos los productos
            listaProductos lista = new listaProductos();
            //variable que almacena los pedidos
            listapedidos pedidorealizado = new listapedidos();
            //Guardamos de los productos de la sesion
            lista = (listaProductos) session.getAttribute("lp"); 

            try {
                pedidorealizado = (listapedidos) session.getAttribute("productosElegido");
		    } catch (NullPointerException ex) {
			
		    }
            //Comprobamos si existe la sesion de productos elegidos, si no la creamos
            if (pedidorealizado == null){
                pedidorealizado = new listapedidos();
                session.setAttribute("productosElegido", pedidorealizado);
            }
        }
        gotoPage("/Tienda/Carrito.jsp", request, response);
    }   

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }  

    private void gotoPage(String address, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Creamos objeto RequestDispatcher
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(address);
		dispatcher.forward(request, response);
    }
}