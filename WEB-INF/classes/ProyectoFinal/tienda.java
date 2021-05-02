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

import ProyectoFinal.Producto;
import ProyectoFinal.listaProductos;
import ProyectoFinal.GestorBD;

public class tienda extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //Iniciamos la sesion
        HttpSession session = request.getSession();

        //creamos el atributo base de datos
        GestorBD bd = new GestorBD();
        //Inicializamos el vector
        listaProductos lista = new listaProductos();

        try{
            //ejecutamos el test del driver
            bd.testDriver();
            //Conexion a la base de datos
            Connection conexion = null;
            conexion = bd.obtenerConexion ("postgres", "1234");
        } catch (Exception e){

        }

        //Consultamos todos los productos y los guardamos
        lista = bd.verProductos(lista);
        int c = 0;
        c=lista.tamano(); 

        //si la lista está vacia idnicamos al usuario que no hay productos disponibles si no los mostramos
        if (c!=0){
            session.setAttribute("lp", lista);                  
            gotoPage("/Tienda.jsp", request, response);
        }
        
        session.setAttribute("contador", c);

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