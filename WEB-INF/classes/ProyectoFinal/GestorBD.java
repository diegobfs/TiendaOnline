package ProyectoFinal;

import java.sql.*;
import java.util.*;


public class GestorBD {

    private Connection conexion = null;

    //Conectamos al driver
    public void testDriver() throws Exception{
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            System.out.println ( "Encontrado el driver" );
        } catch (java.lang.ClassNotFoundException e) {
		    System.out.println("MySQL JDBC Driver no encontrado ... ");
		    throw (e);
	    }

    }

    //Conectamos a la base de datos
    protected Connection obtenerConexion (String nombre, String contrasena)throws Exception {
    	String url = "";
	    try {
	    	url = "jdbc:postgresql://localhost:5432/proyecto";
      		conexion = DriverManager.getConnection(url, nombre, contrasena);
		    System.out.println("Conexion establecida con " + url + "...");	    
		    return conexion;
	    } catch (java.sql.SQLException e) {
		    System.out.println("Conexion NO establecida con " + url);
		    throw (e);
	    }
    }

    //Comprobamos si el usuario está en la base de datos
    public boolean acierto (String nombre, String contrasena){

        String query = "SELECT nombre, contrasena FROM usuario WHERE nombre = ? and contrasena = ?";
        PreparedStatement st = null;
        boolean estado = false;
        try {
            st =  this.conexion.prepareStatement(query);
            st.setString(1, nombre);
            st.setString(2, contrasena);
            st.execute();
            ResultSet rs = st.executeQuery();
            estado = rs.next();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return estado;
    }

    //Insertamos un usuario
    public boolean insertarUsuario(String nombre, String contrasena) {
        String query = "SELECT nombre FROM usuario WHERE nombre = ?";
        PreparedStatement st = null;
        boolean estado = false;
        try {
            st =  this.conexion.prepareStatement(query);
            st.setString(1, nombre);
            st.execute();
            ResultSet rs = st.executeQuery();
            estado = rs.next();
        } catch (SQLException e){
            e.printStackTrace();
        }
        
        if (estado == true){
            estado = false;
        } else {
            try {
                st = this.conexion.prepareStatement("insert into usuario values(?,?)");
                st.setString(1, nombre);
                st.setString(2, contrasena);
                st.executeUpdate();
            }catch(SQLException e){
                e.printStackTrace();
            }
            estado = true;
        }
        
        return estado;
    }
    
    //Ver los productos que están disponibles
    public listaProductos verProductos (listaProductos lista){
        String query = "select * from producto where stock is not NULL";
        PreparedStatement st = null;

        try {
            st =  this.conexion.prepareStatement(query);
            st.execute();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                Producto pr = new Producto ();
                pr.setNombre(rs.getString("nombre"));
                pr.setPrecio(rs.getFloat("precio"));
                pr.setStock(rs.getInt("stock"));
                pr.setImagen(rs.getString("image"));
                lista.setPr (pr);
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return lista;
    }

    //Añadir el pedido a la base de datos
    public void anadirpedido (listapedidos lista, String nombre){
        String query = "select id from pedir";
        //ejemplo: insert into pedir values(1,'El nefes colonial ambar','diego','1', 100.01)
        String op = "insert into pedir values(?,?,?,?,?)";
        PreparedStatement st = null;
        int id = 0;
        float precio = 0;
        String n = "";
        try {
            st =  this.conexion.prepareStatement(query);
            st.execute();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                id = rs.getInt("id");
            }
        } catch (SQLException e){
            e.printStackTrace();
        }

        st = null;
        for (int i=0; i<lista.tamano(); i++){
            try {
                id = id +1;
                precio = lista.getListap().elementAt(i).getCantidad() * lista.getListap().elementAt(i).getPrecio();
                n = lista.getListap().elementAt(i).getNombre();
                st =  this.conexion.prepareStatement(op);
                st.setInt(1, id);
                st.setString(2, lista.getListap().elementAt(i).getNombre());
                st.setString(3, nombre);
                st.setInt(4, lista.getListap().elementAt(i).getCantidad());
                st.setFloat(5, precio);
                st.executeUpdate();
            } catch (SQLException e){
                e.printStackTrace();
            }
            
        } 
    } 


    //Actualizamos el stock de los productos
    public void actualizarstock (listapedidos lista){
        String op = "select stock from producto where nombre = ? ";
        String query = "UPDATE producto SET stock = ? WHERE nombre = ?";
        PreparedStatement st = null;
        int numero = 0;
        
        for (int i=0; i<lista.tamano(); i++){
            try {
                st =  this.conexion.prepareStatement(op);
                st.setString(1, lista.getListap().elementAt(i).getNombre());
                st.execute();
                ResultSet rs = st.executeQuery();
                rs.next();
                numero = rs.getInt("stock");
            } catch (SQLException e){
                e.printStackTrace();
            }
            st = null;
            try {
                numero = numero - lista.getListap().elementAt(i).getCantidad();
                st =  this.conexion.prepareStatement(query);
                st.setInt(1, numero);
                st.setString(2,lista.getListap().elementAt(i).getNombre());
                st.executeUpdate();
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
    }    
}