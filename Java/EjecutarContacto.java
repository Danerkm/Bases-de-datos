/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programacion2;

/**
 *
 * @author USER
 */
public class EjecutarContacto {

    public static void main(String[] arg) {
        Contacto objContacto = new Contacto("Alejandro", "Aguirre",-5);

        System.out.println("Nombre es:" + objContacto.getNombre());
        System.out.println("Apellido es:" + objContacto.getApellido());
        System.out.println("Edad es:" + objContacto.getEdad());

    }

}
