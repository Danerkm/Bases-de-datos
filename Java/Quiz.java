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
public class Quiz {

    public static int mumerador = 35;
    public static Integer denominador = 0;
    public static float division;

    public static void main(String[] args) {
        System.out.println("Antes de hacer la division ");
        try {
            division = mumerador / denominador;
        } catch (ArithmeticException ex) {
            division = 0;
            System.out.println("Error: " + ex.getMessage());
        } finally {
            System.err.println("Division: " + division);
            System.err.println("Despues de hacer la division ");
        }
    }

}
