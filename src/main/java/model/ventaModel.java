/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Victor Dorian
 */
public class ventaModel {

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getIdUsuarioC() {
        return idUsuarioC;
    }

    public void setIdUsuarioC(int idUsuarioC) {
        this.idUsuarioC = idUsuarioC;
    }

    public int getIdUsuarioL() {
        return idUsuarioL;
    }

    public void setIdUsuarioL(int idUsuarioL) {
        this.idUsuarioL = idUsuarioL;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public int getIdVehiculo() {
        return idVehiculo;
    }

    public void setIdVehiculo(int idVehiculo) {
        this.idVehiculo = idVehiculo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public String getPagado() {
        return pagado;
    }

    public void setPagado(String pagado) {
        this.pagado = pagado;
    }
    
    private int idVenta;
    private int idUsuarioC;
    private int idUsuarioL;
    private int idServicio;
    private int idVehiculo;
    private String fecha;
    private String hora;
    private String estatus;
    private String pagado;
    
    public ventaModel(int idVenta, int idUsuarioC, int idUsuarioL, int idServicio, int idVehiculo, String fecha, String hora, String estatus, String pagado){
        this.idVenta = idVenta;
        this.idUsuarioC = idUsuarioC;
        this.idUsuarioL = idUsuarioL;
        this.idServicio = idServicio;
        this.idVehiculo = idVehiculo;
        this.fecha = fecha;
        this.hora = hora;
        this.estatus = estatus;
        this.pagado = pagado;
        
    }
    public ventaModel(int idUsuarioC, int idUsuarioL, int idServicio, int idVehiculo, String fecha, String hora, String estatus, String pagado){
        this.idUsuarioC = idUsuarioC;
        this.idUsuarioL = idUsuarioL;
        this.idServicio = idServicio;
        this.idVehiculo = idVehiculo;
        this.fecha = fecha;
        this.hora = hora;
        this.estatus = estatus;
        this.pagado = pagado;
        
    }
    public ventaModel(){
        
    }
 
}
