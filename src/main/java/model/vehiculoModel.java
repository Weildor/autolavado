/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC-15
 */
public class vehiculoModel {

    public int getIdVehiculo() {
        return idVehiculo;
    }

    public void setIdVehiculo(int idVehiculo) {
        this.idVehiculo = idVehiculo;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    
    private int idVehiculo;
    private String matricula;
    private String modelo;
    private String color;
    private String marca;
    private String anio;
    private String tipo;
    private int idCliente;
    
    public vehiculoModel(int idVehiculo, String matricula, String modelo, String color, String marca, String anio, String tipo, int idCliente){
        
        this.idVehiculo = idVehiculo;
        this.matricula = matricula;
        this.modelo = modelo;
        this.color = color;
        this.marca = marca;
        this.anio = anio;
        this.tipo = tipo;
        this.idCliente = idCliente;
        
        
        }
    public vehiculoModel(String matricula, String modelo, String color, String marca, String anio, String tipo, int idCliente){
        
        
        this.matricula = matricula;
        this.modelo = modelo;
        this.color = color;
        this.marca = marca;
        this.anio = anio;
        this.tipo = tipo;
        this.idCliente = idCliente;
        
        
        }
        public vehiculoModel(){
        
    }
    @Override
    public String toString() {
        return marca;
    }
    
}
