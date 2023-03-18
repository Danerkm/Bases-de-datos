/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programacion2;

/**
 *
 * @author Santiago Martinez
 */
public class Planta extends SerVivo {
    protected String nombre;
    protected String tipo;
    protected int edad;

    public Planta(String nombre, String tipo, int edad) {
        this.nombre = nombre;
        this.tipo = tipo;
        this.edad = edad;
    }
    
    

    @Override
    public void alimentarse() {
        System.out.println("Alimentacion por medio de fotosintesis ");
    }

}
