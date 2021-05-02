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
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import ProyectoFinal.Usuario;
import ProyectoFinal.Producto;
import ProyectoFinal.listaProductos;
import ProyectoFinal.pedido;
import ProyectoFinal.listapedidos;
import ProyectoFinal.GestorBD;

public class finalizarPago extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //Iniciamos la sesion
        HttpSession session = request.getSession();

        //creamos el atributo base de datos
        GestorBD bd = new GestorBD();
        //Inicializamos el vector
        listapedidos lista = new listapedidos();
        lista = (listapedidos) session.getAttribute ("productosElegido");
        //Creamos el usuario y lo guardamos
        try{
            //ejecutamos el test del driver
            bd.testDriver();
            //Conexion a la base de datos
            Connection conexion = null;
            conexion = bd.obtenerConexion ("postgres", "1234");
        } catch (Exception e){

        }

        String nombre = (String)session.getAttribute("nombre");
        bd.anadirpedido(lista, nombre);
        bd.actualizarstock(lista);
        try {
            //leemos del xml
            Context ctx = new InitialContext();
            Context env = (Context) ctx.lookup("java:comp/env");
            final String direccion = (String) env.lookup("direccion");
            final String correo = (String) env.lookup("correo");

            session.setAttribute("direccion",direccion);
            session.setAttribute("correo",correo);
        } catch (NamingException e){

        }
        session.setAttribute("productosElegido", null);
        gotoPage("/Fin.jsp", request, response);
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