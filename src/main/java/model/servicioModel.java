/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC-15
 */
public class servicioModel {

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicios) {
        this.idServicio = idServicios;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }
    private int idServicio;
    private String nombre;
    private String descripcion;
    private String precio;
    private String estatus;
    
    public servicioModel(int idServicio, String nombre, String descripcion, String precio, String estatus){
        this.idServicio = idServicio;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.estatus = estatus;
        
    }
    public servicioModel(String nombre, String descripcion, String precio, String estatus){
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.estatus = estatus;
    }
    public servicioModel(){
        
    }
    @Override
    public String toString() {
        return nombre;
    }
}
