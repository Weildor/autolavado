/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.autolavado.controller;

import com.mycompany.autolavado.conexion.conexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.ventaModel;

/**
 *
 * @author Victor Dorian
 */
public class ventaController {
    
    public static boolean insertarVenta(ventaModel vent) {
        String sql = "INSERT INTO tbd_venta_servicio (idUsuarioC,idUsuarioL,idServicio,idVehiculo,fecha,hora,estatus,pagado) VALUES (?,?,?,?,?,?,?,?)";
        try (Connection con = conexionDB.obtenerConexion(); 
                PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, vent.getIdUsuarioC());
            ps.setInt(2, vent.getIdUsuarioL());
            ps.setInt(3, vent.getIdServicio());
            ps.setInt(4, vent.getIdVehiculo());
            ps.setString(5, vent.getFecha());
            ps.setString(6, vent.getHora());
            ps.setString(7, vent.getEstatus());
            ps.setString(8, vent.getPagado());

            
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;

        }

    }
    
    public static List<ventaModel> obtenerTodos() {
        var lista = new ArrayList<ventaModel>();
        String sql = "SELECT * FROM tbd_venta_servicio";
    try(Connection con = conexionDB.obtenerConexion();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(sql)){
    while (rs.next()) {
            lista.add(new ventaModel(rs.getInt("idVenta"), rs.getInt("idUsuarioC"), rs.getInt("idUsuarioL"), rs.getInt("idServicio"), rs.getInt("idVehiculo"), rs.getString("fecha"), rs.getString("hora"), rs.getString("estatus"), rs.getString("pagado")));
        }
    }
    catch(SQLException ex){
        
    ex.printStackTrace();
    }
    return lista ;
}
    public static List<ventaModel>buscarVentaPorNombre(String nombrebusqueda){
        List<ventaModel>listaVentas = new ArrayList<>();
        String sql = "SELECT * FROM tbd_venta_servicio WHERE pagado LIKE ?";
        try(Connection con = conexionDB.obtenerConexion();
                PreparedStatement ps = con.prepareStatement(sql)){
                ps.setString(1, "%" + nombrebusqueda + "%");
                ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                ventaModel venta = new ventaModel();
                venta.setIdVenta(rs.getInt("idVenta"));
                venta.setFecha(rs.getString("fecha"));
                venta.setHora(rs.getString("hora"));
                venta.setEstatus(rs.getString("estatus"));
                venta.setPagado(rs.getString("pagado"));
                venta.setIdUsuarioC(rs.getInt("idUsuarioC"));
                venta.setIdUsuarioL(rs.getInt("idUsuarioL"));
                venta.setIdServicio(rs.getInt("idServicio"));
                venta.setIdVehiculo(rs.getInt("idVehiculo"));
                
                listaVentas.add(venta);
                
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }
         return listaVentas;       
    }
    public static boolean actualizarVenta(ventaModel venta) {
        String sql = "UPDATE tbd_venta_servicio SET idUsuarioC=?,idUsuarioL=?,idServicio=?,idVehiculo=?,fecha=?,hora=?,estatus=?,pagado=? WHERE idVenta=? ";
        boolean actualizado = false;
        try (Connection con = conexionDB.obtenerConexion(); 
                PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, venta.getIdUsuarioC());
        ps.setInt(2, venta.getIdUsuarioL());
        ps.setInt(3, venta.getIdServicio());
        ps.setInt(4, venta.getIdVehiculo());
        ps.setString(5, venta.getFecha());
        ps.setString(6, venta.getHora());
        ps.setString(7, venta.getEstatus());
        ps.setString(8, venta.getPagado());
        ps.setInt(9, venta.getIdVenta());


            int filasAfectadas = ps.executeUpdate();
            actualizado = filasAfectadas>0;
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            
        }
        return actualizado;
    }
    public static boolean eliminarVenta(int idVenta){
        String sql = "DELETE FROM tbd_venta_servicio WHERE idVenta= ?";
        try(Connection con = conexionDB.obtenerConexion();
                PreparedStatement ps = con.prepareStatement(sql)){
            
            ps.setInt(1, idVenta);
            ps.executeUpdate();
            return true;
            
        }catch(SQLException ex){
            ex.printStackTrace();
            return false;
        }
    }
}
