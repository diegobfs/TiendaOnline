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

import ProyectoFinal.Usuario;
import ProyectoFinal.GestorBD;

public class Registro extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Pilla los parametros del formulario
        String nombre = request.getParameter("nombre");
        String contrasena = request.getParameter("contrasena");

        // Almacena los par�metros en javaBean 
        Usuario user = new Usuario ();
        user.setNombre(nombre);
		user.setContrasena(contrasena);

		session.setAttribute("usuario", user);
        //creamos el atributo base de datos
        GestorBD bd = new GestorBD();

        try{
            //ejecutamos el test del driver
            bd.testDriver();
            //Conexion a la base de datos
            Connection conexion = null;
            conexion = bd.obtenerConexion ("postgres", "1234");
        }  catch (Exception e){

        }                      
        
        if (bd.insertarUsuario (nombre, contrasena) == true){
            response.sendRedirect("/ProyectoFinal/InicioSesion.html");
        } else {
            gotoPage("/VistaCreacionMal.jsp", request, response);
        }
        
        
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